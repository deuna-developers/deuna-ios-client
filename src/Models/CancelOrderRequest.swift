//
// CancelOrderRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CancelOrderRequest: Codable, JSONEncodable, Hashable {

    /** Razón por la cual se efectua la cancelacion de la orden  */
    public var reason: String

    public init(reason: String) {
        self.reason = reason
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case reason
    }

// Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(reason, forKey: .reason)
    }
}
