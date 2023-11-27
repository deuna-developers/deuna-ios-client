//
// OrderTokenRequestOrderMetadata.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Agregar datos que se requieran adicionales de parte del comercio en clave-valor (JSON) */
public struct OrderTokenRequestOrderMetadata: Codable, JSONEncodable, Hashable {

    static let key1Rule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let key2Rule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var key1: String?
    public var key2: String?

    public init(key1: String? = nil, key2: String? = nil) {
        self.key1 = key1
        self.key2 = key2
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case key1
        case key2
    }

// Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(key1, forKey: .key1)
        try container.encodeIfPresent(key2, forKey: .key2)
    }
}
