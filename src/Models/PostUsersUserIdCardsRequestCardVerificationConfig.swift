//
// PostUsersUserIdCardsRequestCardVerificationConfig.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Permite sobrescribir configuraciones globales del cliente y verificar o no verificar la operabilidad de la tarjeta */
public struct PostUsersUserIdCardsRequestCardVerificationConfig: Codable, JSONEncodable, Hashable {

    /** En caso de enviar False e independientemente de la configuración global del comercio, no será ejecutada la verificación. En caso de enviar True e independientemente de la configuración global del comercio, se ejecutará la verificación. */
    public var invokeCardVerification: Bool?

    public init(invokeCardVerification: Bool? = nil) {
        self.invokeCardVerification = invokeCardVerification
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case invokeCardVerification = "invoke_card_verification"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(invokeCardVerification, forKey: .invokeCardVerification)
    }
}
