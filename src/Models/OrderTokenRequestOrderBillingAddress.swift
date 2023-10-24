//
// OrderTokenRequestOrderBillingAddress.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Corresponde al modelo de la dirección del cliente */
public struct OrderTokenRequestOrderBillingAddress: Codable, JSONEncodable, Hashable {

    public enum AddressType: String, Codable, CaseIterable {
        case home = "home"
        case office = "office"
        case other = "other"
    }
    public enum Country: String, Codable, CaseIterable {
        case ecu = "ECU"
        case bra = "BRA"
        case per = "PER"
        case col = "COL"
        case chl = "CHL"
        case mex = "MEX"
        case arg = "ARG"
    }
    static let additionalDescriptionRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let address1Rule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let address2Rule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let addressTypeRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let cityRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let countryRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let createdAtRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let firstNameRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let identityDocumentRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let lastNameRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let phoneRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let updatedAtRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let userIdRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let zipcodeRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    /** Referencia del cliente */
    public var additionalDescription: String
    /** Dirección del cliente */
    public var address1: String
    /** Dirección del cliente */
    public var address2: String
    /** Tipo de dirección del cliente */
    public var addressType: AddressType
    /** Ciudad del cliente */
    public var city: String
    /** Código del país del cliente en 3 caracteres basado en el código ISO 3166-1 alpha-3 */
    public var country: Country
    /** Fecha de creación */
    public var createdAt: String
    /** Nombre del cliente */
    public var firstName: String
    /** Identificador de la dirección */
    public var id: Double
    /** Número de identificación del cliente */
    public var identityDocument: String?
    /** Si la dirección es la que se usara siempre */
    public var isDefault: Bool = false
    /** Apellido del cliente */
    public var lastName: String
    /** Latitud de la dirección */
    public var lat: Double
    /** Longitud de la dirección */
    public var lng: Double
    /** Teléfono del cliente */
    public var phone: String
    /** Estado de la dirección del cliente */
    public var stateName: String
    /** Fecha de modificación */
    public var updatedAt: String?
    /** Identificador del cliente */
    public var userId: String
    /** Código postal del cliente */
    public var zipcode: String

    public init(additionalDescription: String, address1: String, address2: String, addressType: AddressType, city: String, country: Country, createdAt: String, firstName: String, id: Double, identityDocument: String? = nil, isDefault: Bool = false, lastName: String, lat: Double, lng: Double, phone: String, stateName: String, updatedAt: String? = nil, userId: String, zipcode: String) {
        self.additionalDescription = additionalDescription
        self.address1 = address1
        self.address2 = address2
        self.addressType = addressType
        self.city = city
        self.country = country
        self.createdAt = createdAt
        self.firstName = firstName
        self.id = id
        self.identityDocument = identityDocument
        self.isDefault = isDefault
        self.lastName = lastName
        self.lat = lat
        self.lng = lng
        self.phone = phone
        self.stateName = stateName
        self.updatedAt = updatedAt
        self.userId = userId
        self.zipcode = zipcode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case additionalDescription = "additional_description"
        case address1
        case address2
        case addressType = "address_type"
        case city
        case country
        case createdAt = "created_at"
        case firstName = "first_name"
        case id
        case identityDocument = "identity_document"
        case isDefault = "is_default"
        case lastName = "last_name"
        case lat
        case lng
        case phone
        case stateName = "state_name"
        case updatedAt = "updated_at"
        case userId = "user_id"
        case zipcode
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(additionalDescription, forKey: .additionalDescription)
        try container.encode(address1, forKey: .address1)
        try container.encode(address2, forKey: .address2)
        try container.encode(addressType, forKey: .addressType)
        try container.encode(city, forKey: .city)
        try container.encode(country, forKey: .country)
        try container.encode(createdAt, forKey: .createdAt)
        try container.encode(firstName, forKey: .firstName)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(identityDocument, forKey: .identityDocument)
        try container.encode(isDefault, forKey: .isDefault)
        try container.encode(lastName, forKey: .lastName)
        try container.encode(lat, forKey: .lat)
        try container.encode(lng, forKey: .lng)
        try container.encode(phone, forKey: .phone)
        try container.encode(stateName, forKey: .stateName)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encode(userId, forKey: .userId)
        try container.encode(zipcode, forKey: .zipcode)
    }
}

