
import class Foundation.Formatter
import class Foundation.NumberFormatter

/// `CodingCluster` is a `CodingKey` that contains information about the property it represents
public protocol CodingCluster : CodingKey {
    /// The owning type for this `CodingCluster`, which is typically the enclosing type
    associatedtype CodingOwner : Codable

    /// Static localized information about the type itself.
    static var cluster: ClusterInfo { get }

    /// Localized information about the property.
    var propInfo: PropInfo { get }

    /// Localized information about the key.
    var keyDescription: String? { get }
}

/// Information about a `CodingCluster` cluster, containing a localized title
public struct ClusterInfo : Hashable {
    public let key: String

    /// The localized title of the property
    public let title: String

    /// The localized title of the property
    public let toolTip: String?

    /// Any truncations that should be applied to children of this property group
    public let truncations: [String]

    public init(key: String, title: String, toolTip: String? = nil, truncations: [String]? = nil) {
        self.key = key
        self.title = title
        self.toolTip = toolTip
        self.truncations = truncations ?? [title]
    }
}

/// Information about a `CodingCluster` property, containing localized a title & toolTip
/// and default & boundary information.
public protocol PropInfo {
    /// The localized title of the property
    var title: String { get }
    /// The key of the original property
    //var key: CodingKey { get }
    /// The localized toolTip describing the property
    var toolTip: String? { get }
    /// The step value of the property, if any
    var step: Double? { get }
    /// The minimum value of the property, if any
    var min: Double? { get }
    /// The soft minimum value of the property, if any
    var smin: Double? { get }
    /// The maximum value of the property, if any
    var max: Double? { get }
    /// The soft maximum value of the property, if any
    var smax: Double? { get }
    /// The formatter for the property
    var formatter: Formatter? { get }
    /// The default boolean value for a toggle
    var toggleDefault: Bool? { get }

    /// Attempt to resolve the default value against the given context
    func defaultValue<T>(forContext: Any?) -> T?
}

/// Untyped `PropInfo` impementation
/// - TODO: @available(*, deprecated, renamed: "TypedPropInfo")
public struct AnyPropInfo : PropInfo {
    /// The localized title of the property
    public let title: String
    /// The key of the original property
    public let key: CodingKey?
    /// The localized toolTip describing the property
    public let toolTip: String?
    /// The step value of the property, if any
    public let step: Double?
    /// The minimum value of the property, if any
    public let min: Double?
    /// The soft minimum value of the property, if any
    public let smin: Double?
    /// The maximum value of the property, if any
    public let max: Double?
    /// The soft maximum value of the property, if any
    public let smax: Double?
    /// The formatter for the property
    public let formatter: Formatter?
    /// The default boolean value for a toggle
    public let toggleDefault: Bool?

    public init(_ title: String, key: CodingKey? = nil, toolTip: String? = nil, step: Double? = nil, min: Double? = nil, smin: Double? = nil, max: Double? = nil, smax: Double? = nil, formatter: NumberFormatter? = nil, toggleDefault: Bool? = nil) {
        self.title = title
        self.key = key
        self.toolTip = toolTip
        self.step = step
        self.min = min
        self.smin = smin
        self.max = max
        self.smax = smax
        self.formatter = formatter
        self.toggleDefault = toggleDefault
    }

    public func defaultValue<T>(forContext: Any?) -> T? {
        nil
    }
}

/// Typed `PropInfo` impementation
public struct TypedPropInfo<Root, Value, Context> : PropInfo {
    public let keyPath: WritableKeyPath<Root, Value>

    /// The localized title of the property
    public let title: String
    /// The key of the original property
    public let key: CodingKey?
    /// The localized toolTip describing the property
    public let toolTip: String?
    /// The step value of the property, if any
    public let step: Double?
    /// The minimum value of the property, if any
    public let min: Double?
    /// The soft minimum value of the property, if any
    public let smin: Double?
    /// The maximum value of the property, if any
    public let max: Double?
    /// The soft maximum value of the property, if any
    public let smax: Double?
    /// The formatter for the property
    public let formatter: Formatter?
    /// The default boolean value for a toggle
    public let toggleDefault: Bool?
    /// The default value of the property
    public let defaultEvaluator: (Context) -> (Value?)

    public init(_ title: String, key: CodingKey? = nil, keyPath: WritableKeyPath<Root, Value>, toolTip: String? = nil, step: Double? = nil, min: Double? = nil, smin: Double? = nil, max: Double? = nil, smax: Double? = nil, formatter: Formatter? = nil, toggleDefault: Bool? = nil, defaultValue defaultEvaluator: @escaping (Context) -> (Value?)) {
        self.title = title
        self.key = key
        self.keyPath = keyPath
        self.toolTip = toolTip
        self.step = step
        self.min = min
        self.smin = smin
        self.max = max
        self.smax = smax
        self.formatter = formatter
        self.toggleDefault = toggleDefault
        self.defaultEvaluator = defaultEvaluator
    }

    @available(*, deprecated, message: "duck typing should be unnecessary")
    public func defaultValue<T>(forContext ctx: Any?) -> T? {
        (ctx as? Context).flatMap(defaultValueTyped(forContext:)) as? T
    }

    public func defaultValueTyped(forContext ctx: Context) -> Value? {
        return defaultEvaluator(ctx)
    }
}

public extension TypedPropInfo  {
    /// Derives a new `TypedPropInfo` from the `narrowV1` keyPath, both for the path and the default evaluator
    func project<U>(_ path: WritableKeyPath<Value, U>) -> TypedPropInfo<Root, U, Context> {
        TypedPropInfo<Root, U, Context>(title, key: key, keyPath: keyPath.appending(path: path), toolTip: toolTip, step: step, min: min, smin: smin, max: max, smax: smax, formatter: formatter, toggleDefault: toggleDefault) { ctx in
            defaultEvaluator(ctx)?[keyPath: path]
        }
    }
}
