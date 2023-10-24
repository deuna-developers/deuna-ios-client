//
// GetAllMerchants200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetAllMerchants200Response: Codable, JSONEncodable, Hashable {

    public var count: Int?
    public var data: [GetAllMerchants200ResponseDataInner]?

    public init(count: Int? = nil, data: [GetAllMerchants200ResponseDataInner]? = nil) {
        self.count = count
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case count
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(count, forKey: .count)
        try container.encodeIfPresent(data, forKey: .data)
    }
}
