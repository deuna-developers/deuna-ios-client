//
// VerifyPaymentOtp200ResponseOrderPayment.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Objeto donde se vera el pago de la orden */
public struct VerifyPaymentOtp200ResponseOrderPayment: Codable, JSONEncodable, Hashable {

    public var data: VerifyPaymentOtp200ResponseOrderPaymentData?

    public init(data: VerifyPaymentOtp200ResponseOrderPaymentData? = nil) {
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
    }

// Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(data, forKey: .data)
    }
}