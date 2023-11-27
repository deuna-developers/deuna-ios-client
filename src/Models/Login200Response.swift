//
// Login200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/**  */
public struct Login200Response: Codable, JSONEncodable, Hashable {

    static let expireRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let tokenRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var code: Int?
    public var expire: String?
    public var token: String?

    public init(code: Int? = nil, expire: String? = nil, token: String? = nil) {
        self.code = code
        self.expire = expire
        self.token = token
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case expire
        case token
    }

// Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(code, forKey: .code)
        try container.encodeIfPresent(expire, forKey: .expire)
        try container.encodeIfPresent(token, forKey: .token)
    }
}
