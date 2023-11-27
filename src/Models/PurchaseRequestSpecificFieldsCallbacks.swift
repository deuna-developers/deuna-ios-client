//
// PurchaseRequestSpecificFieldsCallbacks.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PurchaseRequestSpecificFieldsCallbacks: Codable, JSONEncodable, Hashable {

    public var onCanceled: String?
    public var onFailed: String?
    public var onReject: String?
    public var onSuccess: String?

    public init(onCanceled: String? = nil, onFailed: String? = nil, onReject: String? = nil, onSuccess: String? = nil) {
        self.onCanceled = onCanceled
        self.onFailed = onFailed
        self.onReject = onReject
        self.onSuccess = onSuccess
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case onCanceled = "on_canceled"
        case onFailed = "on_failed"
        case onReject = "on_reject"
        case onSuccess = "on_success"
    }

// Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(onCanceled, forKey: .onCanceled)
        try container.encodeIfPresent(onFailed, forKey: .onFailed)
        try container.encodeIfPresent(onReject, forKey: .onReject)
        try container.encodeIfPresent(onSuccess, forKey: .onSuccess)
    }
}
