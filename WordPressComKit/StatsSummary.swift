import Foundation

public enum StatsPeriodUnit {
    case Day
    case Week
    case Month
    case Year
}

public enum StatsSummaryType {
    case Views
    case Visitors
    case Likes
    case Comments
}

public struct LocalizableValue<ValueType> {
    public var value: ValueType
    public var localized: String
}


/// Represents a single period of time's stats activity
/// 
public struct StatsSummary {
    /// How much time this summary represents
    public let unit: StatsPeriodUnit
    /// End date of the period of time this summary represents
    public let date: NSDate
    /// A nice label for the summary generated by the stats API
    public let label: String
    
    /// Views for this period of time
    public let views: LocalizableValue<Int>
    /// Visitors for this period of time
    public let visitors: LocalizableValue<Int>
    /// Likes for this period of time
    public let likes: LocalizableValue<Int>
    /// Comments for this period of time
    public let comments: LocalizableValue<Int>
}