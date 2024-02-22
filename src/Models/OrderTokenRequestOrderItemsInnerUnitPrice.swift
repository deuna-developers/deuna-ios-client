//
// OrderTokenRequestOrderItemsInnerUnitPrice.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** El precio unitario del producto */
public struct OrderTokenRequestOrderItemsInnerUnitPrice: Codable, JSONEncodable, Hashable {

    public enum CurrencySymbol: String, Codable, CaseIterable {
        case dollar = "$"
        case sSlashPeriod = "S/."
        case rDollar = "R$"
        case empty = ""
    }
    static let currencyRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let currencySymbolRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    /** El precio unitario del producto. Deberá estar expresado en centavos, por ejemplo si el monto es $10.00 estará representado como 1000 lo que significa 10 dólares 0 centavos. */
    public var amount: Double
    /** Representa la moneda de uso del comercio en 3 caracteres bajo la ISO 3166-1 alpha-3  */
    public var currency: String
    /** Simbolo de la moneda de tu comercio */
    public var currencySymbol: CurrencySymbol

    public init(amount: Double, currency: String, currencySymbol: CurrencySymbol) {
        self.amount = amount
        self.currency = currency
        self.currencySymbol = currencySymbol
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case amount
        case currency
        case currencySymbol = "currency_symbol"
    }

// Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(amount, forKey: .amount)
        try container.encode(currency, forKey: .currency)
        try container.encode(currencySymbol, forKey: .currencySymbol)
    }
}
