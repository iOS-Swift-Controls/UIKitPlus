public struct RootScreenType: ExpressibleByStringLiteral, CustomStringConvertible, Equatable {
    public let type: String
    
    init (type: String) {
        self.type = type
    }
    
    public init(stringLiteral value: String) {
        self.init(type: value)
    }
    
    public static var splash: Self { "splash" }
    public static var login: Self { "login" }
    public static var logout: Self { "logout" }
    public static var main: Self { "main" }
    public static var onboarding: Self { "onboarding" }
    public static var nothing: Self { "nothing" }
    
    public var description: String { type }
    
    public static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.type == rhs.type
    }
}
