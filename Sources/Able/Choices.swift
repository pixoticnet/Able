import BricBrac

public protocol ChoiceList : Hashable {
    typealias Choice = ChoiceItem<Self>

    /// The order of the items as they should appear in a menu; `.separator` indicates a dividing point between categories that may be represented by a divider or other separator.
    static var availableOptions: [Choice] { get }

    /// The title of the enumeration case as it appears in a menu
    var localizedTitle: String { get }

    /// The indentation level that a menu item representing this choice should have
    var indentationLevel: Int { get }

    /// The localized tooltip that will be displayed to the user
    var toolTip: String? { get }

    /// The image that will appear in a popup menu or segmented control
    var symbol: SymbolSource? { get }

    /// The accessibility ID for this item, if any
    var choiceAID: AID? { get }

}

public extension ChoiceList {

    /// Default implementation has no indentation
    var indentationLevel: Int { 0 }

    /// Default implementation has no tooltip
    var toolTip: String? { nil }

    var choiceAID: AID? { nil }

    /// By default there is no image
    var symbol: SymbolSource? { nil }
}

public extension ChoiceList where Self : CaseIterable {
    /// The default availableOptions just returns all the cases; this can be overridden
    static var availableOptions: [Choice] {
        choiceCases
    }

    static var choiceCases: [Choice] {
        Self.allCases.map(Choice.item)
    }
}


public extension ChoiceList {
    /// The choices that are available for this type (filtering out any dividers and sections)
    static var availableChoices: [Self?] {
        Self.availableOptions.map(\.choice)
    }
}

/// An option for a choice list
public enum ChoiceItem<Wrapped> {
    /// A visual divider to break menus or segments
    case divider
    /// The title of a section
    case section(String)
    /// An item itself
    case item(Wrapped)
    /// One item that is defaulted in for another
    case defaulted(Wrapped, Wrapped)
}

extension ChoiceItem : Equatable where Wrapped : Equatable { }
extension ChoiceItem : Hashable where Wrapped : Hashable { }

public extension ChoiceItem {
    /// The choice represented by this item as an optional
    var choice: Wrapped? {
        if case .item(let wrapped) = self { return wrapped }
        if case .defaulted(let wrapped, _) = self { return wrapped }

        return nil
    }

    /// The choice represented by a defaulted item as an optional
    var defaulted: (wrappedValue: Wrapped, defaultValue: Wrapped)? {
        if case .defaulted(let wrappedValue, let defaultValue) = self { return (wrappedValue, defaultValue) }
        return nil
    }

    /// The choice represented by this item as a section header
    var sectionHeader: String? {
        if case .section(let title) = self { return title }
        return nil
    }
}



/// When a `RawRepresentable` contains a `ChoiceList`, then the instance itself can also be a `ChoiceList`
public extension RawRepresentable where RawValue : ChoiceList {
    var localizedTitle: String {
        rawValue.localizedTitle
    }

    static var availableOptions: [ChoiceItem<Self>] {
        availableOptionsItems // lazily defer to `availableOptionsItems` (this can be a static cache in the implementing type)
    }

    /// Synthesizes list of available options that can be used to merge together multiple sub-choice-lists separated by dividers
    static var availableOptionsItems: [ChoiceItem<Self>] {
        RawValue.availableOptions.map { x in
            switch x {
            case .divider: return .divider
            case .section(let x): return .section(x) // TODO: should we nest?
            case .item(let x): return Self(rawValue: x).flatMap(ChoiceItem.item) ?? .divider
            case .defaulted(let wrapped, let defaultValue):
                guard let wrappedOption = Self(rawValue: wrapped) else  { return .divider }
                guard let defaultValueOption = Self(rawValue: defaultValue) else  { return .divider }
                return ChoiceItem.defaulted(wrappedOption, defaultValueOption)
            }
        }
    }

    /// Default implementation has no indentation
    var indentationLevel: Int {
        rawValue.indentationLevel
    }

    /// Default implementation returns no image
    var symbol: SymbolSource? {
        rawValue.symbol
    }

    /// Default implementation has no tooltip
    var toolTip: String? {
        rawValue.toolTip
    }

}


/// A sum of two localized choice lists can be automatically sythesized as a single choice list
extension OneOf2 : ChoiceList where T1 : ChoiceList, T2 : ChoiceList {
    public var localizedTitle: String {
        self[routing: (\.localizedTitle, \.localizedTitle)]
    }

    public var toolTip: String? {
        self[routing: (\.toolTip, \.toolTip)]
    }

    public var symbol: SymbolSource? {
        self[routing: (\.symbol, \.symbol)]
    }

    public var indentationLevel: Int {
        self[routing: (\.indentationLevel, \.indentationLevel)]
    }

    public var choiceAID: AID? {
        self[routing: (\.choiceAID, \.choiceAID)]
    }

    public static var availableOptions: [Choice] {
        let divs: [Choice] = [Choice.divider]
        let t1s: [Choice] = T1.availableOptions.map(mapChoice(oneOf))
        let t2s: [Choice] = T2.availableOptions.map(mapChoice(oneOf))
        return t1s
            + divs
            + t2s
    }
}

@inlinable func mapChoice<T: ChoiceList, U: ChoiceList>(_ f: @escaping (T) -> (U)) -> (_ x: ChoiceItem<T>) -> ChoiceItem<U> {
    return { x in
        switch x {
        case .divider: return .divider
        case .item(let x): return .item(f(x))
        case .section(let x): return .section(x) // TODO: nest?
        case .defaulted(let wrapped, let defaultValue): return .defaulted(f(wrapped), f(defaultValue))
        }
    }
}

/// A sum of three localized choice lists can be automatically sythesized as a single choice list
extension OneOf3 : ChoiceList where T1 : ChoiceList, T2 : ChoiceList, T3 : ChoiceList {
    public var localizedTitle: String {
        split().localizedTitle
    }

    public var toolTip: String? {
        split().toolTip
    }

    public var symbol: SymbolSource? {
        split().symbol
    }

    public var indentationLevel: Int {
        split().indentationLevel
    }

    public var choiceAID: AID? {
        split().choiceAID
    }

    @inlinable public static var availableOptions: [Choice] {
        let divs: [Choice] = [Choice.divider]
        let t1s: [Choice] = T1.availableOptions.map(mapChoice(oneOf))
        let t2s: [Choice] = T2.availableOptions.map(mapChoice(oneOf))
        let t3s: [Choice] = T3.availableOptions.map(mapChoice(oneOf))
        return t1s
            + divs
            + t2s
            + divs
            + t3s
    }
}

/// A sum of four localized choice lists can be automatically sythesized as a single choice list
extension OneOf4 : ChoiceList where T1 : ChoiceList, T2 : ChoiceList, T3 : ChoiceList, T4 : ChoiceList {
    public var localizedTitle: String {
        split().localizedTitle
    }

    public var toolTip: String? {
        split().toolTip
    }

    public var symbol: SymbolSource? {
        split().symbol
    }

    public var indentationLevel: Int {
        split().indentationLevel
    }

    public var choiceAID: AID? {
        split().choiceAID
    }

    @inlinable public static var availableOptions: [Choice] {
        let divs: [Choice] = [Choice.divider]
        let t1s: [Choice] = T1.availableOptions.map(mapChoice(oneOf))
        let t2s: [Choice] = T2.availableOptions.map(mapChoice(oneOf))
        let t3s: [Choice] = T3.availableOptions.map(mapChoice(oneOf))
        let t4s: [Choice] = T4.availableOptions.map(mapChoice(oneOf))
        return t1s
            + divs
            + t2s
            + divs
            + t3s
            + divs
            + t4s
    }
}

/// A sum of five localized choice lists can be automatically sythesized as a single choice list
extension OneOf5 : ChoiceList where T1 : ChoiceList, T2 : ChoiceList, T3 : ChoiceList, T4 : ChoiceList, T5 : ChoiceList {
    @inlinable public var localizedTitle: String {
        split().localizedTitle
    }

    @inlinable public var toolTip: String? {
        split().toolTip
    }

    @inlinable public var symbol: SymbolSource? {
        split().symbol
    }

    @inlinable public var indentationLevel: Int {
        split().indentationLevel
    }

    @inlinable public var choiceAID: AID? {
        split().choiceAID
    }

    @inlinable public static var availableOptions: [Choice] {
        let t1s: [Choice] = T1.availableOptions.map(mapChoice(oneOf))
        let t2s: [Choice] = T2.availableOptions.map(mapChoice(oneOf))
        let t3s: [Choice] = T3.availableOptions.map(mapChoice(oneOf))
        let t4s: [Choice] = T4.availableOptions.map(mapChoice(oneOf))
        let t5s: [Choice] = T5.availableOptions.map(mapChoice(oneOf))
        var opts = Array<Choice>()
        opts.append(contentsOf: t1s)
        opts.append(Choice.divider)
        opts.append(contentsOf: t2s)
        opts.append(Choice.divider)
        opts.append(contentsOf: t3s)
        opts.append(Choice.divider)
        opts.append(contentsOf: t4s)
        opts.append(Choice.divider)
        opts.append(contentsOf: t5s)
        return opts
    }
}
