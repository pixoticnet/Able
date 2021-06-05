import Foundation

/// A holder of a collection of elements that projects key paths through a `SelectionProjection`
@dynamicMemberLookup
public struct SelectionOf<C: MutableCollection> : RawRepresentable {
    public var rawValue: C

    public init(rawValue: C) {
        self.rawValue = rawValue
    }

    public init(_ rawValue: C) {
        self.rawValue = rawValue
    }
}

extension SelectionOf : Equatable where C : Equatable {
}

extension SelectionOf : Hashable where C : Hashable {
}

extension SelectionOf where C.Element : Hashable {
    /// The elements of the selection itself
    public var elements: [C.Element] {
        get { self[dynamicMember: \.self].elements }
        set { self[dynamicMember: \.self].elements = newValue }
    }
}

extension SelectionOf {
    public subscript<U: Hashable>(dynamicMember keyPath: WritableKeyPath<C.Element, U>) -> SelectionProjection<U> {
        get {
            let values = rawValue.map({ $0[keyPath: keyPath] })
            guard let first = values.first else { return .empty }

            var valueSet = Set<U>()
            for value in values {
                valueSet.insert(value)
                if valueSet.count > 1 {
                    return .heterogeneous(values)
                }
            }

            return .homogeneous(first)
        }

        set {
            switch newValue {
            case .empty:
                break // do nothing? MutableCollection cannot re-size
                // self.rawValue = []

            case .homogeneous(let value):
                for i in rawValue.indices {
                    rawValue[i][keyPath: keyPath] = value
                }
            case .heterogeneous(let values):
                for (i, j) in zip(rawValue.indices, values.indices) {
                    rawValue[i][keyPath: keyPath] = values[j]
                }
            }
        }
    }

}

/// A `SelectionProjection` wraps a projected element of a `SelectionOf` path.
public enum SelectionProjection<Value: Hashable> : Hashable {
    case empty
    case homogeneous(Value)
    case heterogeneous([Value])
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
public extension Sequence where Element : Identifiable {
    /// Selects the elements of the given collection using a `SelectionOf`.
    /// - Note: this subscript assumes that ID will have at most a single representation in the collection in order to optimize the traversal and short-circuit once all the identifiers have been found.
    @inlinable subscript(selecting fromIdentifiers: Set<Element.ID>) -> SelectionOf<ArraySlice<Element>> {
        // use lazy to fail-fast when we have found all the ids we are requesting
        // this assumes that any given `Identifiable` will appear only once in the tree
        SelectionOf(self.lazy.filter({ fromIdentifiers.contains($0.id) }).prefix(fromIdentifiers.count))
    }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
public extension MutableCollection where Element : Identifiable {
    /// Selects the elements of the given collection using a `SelectionOf`.
    /// - Note: this subscript assumes that ID will have at most a single representation in the collection in order to optimize the traversal and short-circuit once all the identifiers have been found.
    @inlinable subscript(selecting fromIdentifiers: Set<Element.ID>) -> SelectionOf<ArraySlice<Element>> {
        get {
            SelectionOf(self.lazy.filter({ fromIdentifiers.contains($0.id) }).prefix(fromIdentifiers.count))
        }

        set {
            var updateMap = Dictionary(newValue.rawValue.map({ ($0.id, $0) }), uniquingKeysWith: { $1 })
            for index in self.indices {
                guard let newValue = updateMap.removeValue(forKey: self[index].id) else {
                    continue
                }
                self[index] = newValue
                if updateMap.isEmpty { break }
            }
        }
    }
}

public extension SelectionProjection {
    /// Whether this projection is distinct or not
    @inlinable var isDistinct: Bool? {
        switch self {
        case .empty: return nil
        case .homogeneous: return true
        case .heterogeneous: return false
        }
    }

    /// The number of elements the selection projects over
    @inlinable var count: Int {
        switch self {
        case .empty: return 0
        case .homogeneous: return 1
        case .heterogeneous(let elements): return elements.count
        }
    }

    /// The underling elements represented by this selection
    @inlinable var elements: [Value] {
        get {
            switch self {
            case .empty: return []
            case .homogeneous(let element): return [element]
            case .heterogeneous(let elements): return elements
            }
        }

        set {
            if let first = newValue.first {
                if newValue.count == 1 {
                    self = .homogeneous(first)
                } else {
                    self = .heterogeneous(newValue)
                }
            } else {
                self = .empty
            }
        }
    }

    /// The placeholder string, which will be the given single-element hint, or else a marker for heterogeneous or empty selections
    func placeholderString(_ single: String, empty: String = NSLocalizedString("No Selection", comment: ""), multiple: String = NSLocalizedString("Multiple Values", comment: "")) -> String {
        switch self {
        case .empty: return empty
        case .homogeneous: return single
        case .heterogeneous: return multiple
        }
    }
}
