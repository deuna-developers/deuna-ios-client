//
// OrderToken200ResponseOrderShippingOptionsDetailsContact.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Contacto de la tienda */
public struct OrderToken200ResponseOrderShippingOptionsDetailsContact: Codable, JSONEncodable, Hashable {

    /** Nombre del contacto del comercio */
    public var name: String?
    /** Teléfono del contacto del comercio */
    public var phone: String?

    public init(name: String? = nil, phone: String? = nil) {
        self.name = name
        self.phone = phone
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case phone
    }

// Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(phone, forKey: .phone)
    }
}
