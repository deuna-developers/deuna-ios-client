//
// CreateMerchantRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/**  */
public struct CreateMerchantRequest: Codable, JSONEncodable, Hashable {

    static let cityRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let currencyRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let nameRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let shortNameRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let timezoneRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var city: String?
    public var currency: String?
    public var managedByDuna: Bool?
    public var name: String?
    public var shortName: String?
    public var timezone: String?

    public init(city: String? = nil, currency: String? = nil, managedByDuna: Bool? = nil, name: String? = nil, shortName: String? = nil, timezone: String? = nil) {
        self.city = city
        self.currency = currency
        self.managedByDuna = managedByDuna
        self.name = name
        self.shortName = shortName
        self.timezone = timezone
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case city
        case currency
        case managedByDuna = "managed_by_duna"
        case name
        case shortName = "short_name"
        case timezone
    }

// Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(city, forKey: .city)
        try container.encodeIfPresent(currency, forKey: .currency)
        try container.encodeIfPresent(managedByDuna, forKey: .managedByDuna)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(shortName, forKey: .shortName)
        try container.encodeIfPresent(timezone, forKey: .timezone)
    }
}
