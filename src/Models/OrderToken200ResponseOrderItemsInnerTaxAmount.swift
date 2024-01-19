//
// OrderToken200ResponseOrderItemsInnerTaxAmount.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Es el monto de los impuestos del producto */
public struct OrderToken200ResponseOrderItemsInnerTaxAmount: Codable, JSONEncodable, Hashable {

    /** Es el monto de los impuestos aplicados al producto. */
    public var amount: Double?
    /** Representa la moneda de uso del comercio en 3 caracteres bajo la ISO 3166-1 alpha-3  */
    public var currency: String?
    /** Simbolo de la moneda de tu comercio */
    public var currencySymbol: String?
    /** Es el monto de los impuestos aplicados al producto que se mostrara en el checkout.  */
    public var displayAmount: String?

    public init(amount: Double? = nil, currency: String? = nil, currencySymbol: String? = nil, displayAmount: String? = nil) {
        self.amount = amount
        self.currency = currency
        self.currencySymbol = currencySymbol
        self.displayAmount = displayAmount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case amount
        case currency
        case currencySymbol = "currency_symbol"
        case displayAmount = "display_amount"
    }

// Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(currency, forKey: .currency)
        try container.encodeIfPresent(currencySymbol, forKey: .currencySymbol)
        try container.encodeIfPresent(displayAmount, forKey: .displayAmount)
    }
}
