

/// Accessibility identifier for identifying components.
/// - Note: in the future this struct may be enriched by required ARIA elements such as a localized title and description.
public struct AID : RawRepresentable {
    public let rawValue: String

    public init(rawValue: String) { self.rawValue = rawValue }
    public init(_ rawValue: String) { self.rawValue = rawValue }
}


