//
// CardsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CardsAPI {

    /**
     Bin detector
     
     - parameter bin: (path)  
     - parameter xApiKey: (header)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func cardsBinBinGet(bin: String, xApiKey: String? = nil, apiResponseQueue: DispatchQueue = DEUNAClientAPI.apiResponseQueue, completion: @escaping ((_ data: CardsBinBinGet200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return cardsBinBinGetWithRequestBuilder(bin: bin, xApiKey: xApiKey).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Bin detector
     - GET /cards/bin/{bin}
     - Get Bin
     - API Key:
       - type: apiKey X-Api-Key (HEADER)
       - name: X-Api-Key
     - parameter bin: (path)  
     - parameter xApiKey: (header)  (optional)
     - returns: RequestBuilder<CardsBinBinGet200Response> 
     */
    open class func cardsBinBinGetWithRequestBuilder(bin: String, xApiKey: String? = nil) -> RequestBuilder<CardsBinBinGet200Response> {
        var localVariablePath = "/cards/bin/{bin}"
        let binPreEscape = "\(APIHelper.mapValueToPathItem(bin))"
        let binPostEscape = binPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{bin}", with: binPostEscape, options: .literal, range: nil)
        let localVariableURLString = DEUNAClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "X-Api-Key": xApiKey?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CardsBinBinGet200Response>.Type = DEUNAClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Eliminar una tarjeta
     
     - parameter userId: (path)  
     - parameter cardId: (path)  
     - parameter authorization: (header)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func deleteUsersUserIdCardsCardId(userId: String, cardId: String, authorization: String? = nil, apiResponseQueue: DispatchQueue = DEUNAClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return deleteUsersUserIdCardsCardIdWithRequestBuilder(userId: userId, cardId: cardId, authorization: authorization).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Eliminar una tarjeta
     - DELETE /payments-cards/users/{user_id}/cards/{card_id}
     - Eliminar una tarjeta.
     - Bearer Token:
       - type: http
       - name: Authorization
     - parameter userId: (path)  
     - parameter cardId: (path)  
     - parameter authorization: (header)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func deleteUsersUserIdCardsCardIdWithRequestBuilder(userId: String, cardId: String, authorization: String? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/payments-cards/users/{user_id}/cards/{card_id}"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{user_id}", with: userIdPostEscape, options: .literal, range: nil)
        let cardIdPreEscape = "\(APIHelper.mapValueToPathItem(cardId))"
        let cardIdPostEscape = cardIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{card_id}", with: cardIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = DEUNAClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Authorization": authorization?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = DEUNAClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Obtener todas las tarjetas del usuario
     
     - parameter userId: (path)  
     - parameter authorization: (header)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getUserCards(userId: String, authorization: String? = nil, apiResponseQueue: DispatchQueue = DEUNAClientAPI.apiResponseQueue, completion: @escaping ((_ data: GetUserCards200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getUserCardsWithRequestBuilder(userId: userId, authorization: authorization).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Obtener todas las tarjetas del usuario
     - GET /payments-cards/users/{user_id}/cards
     - Obtener todas las tarjetas del usuario
     - Bearer Token:
       - type: http
       - name: Authorization
     - parameter userId: (path)  
     - parameter authorization: (header)  (optional)
     - returns: RequestBuilder<GetUserCards200Response> 
     */
    open class func getUserCardsWithRequestBuilder(userId: String, authorization: String? = nil) -> RequestBuilder<GetUserCards200Response> {
        var localVariablePath = "/payments-cards/users/{user_id}/cards"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{user_id}", with: userIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = DEUNAClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Authorization": authorization?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetUserCards200Response>.Type = DEUNAClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Obtener una tarjeta
     
     - parameter userId: (path)  
     - parameter cardId: (path)  
     - parameter authorization: (header)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getUserIdCards(userId: String, cardId: String, authorization: String? = nil, apiResponseQueue: DispatchQueue = DEUNAClientAPI.apiResponseQueue, completion: @escaping ((_ data: GetUserIdCards200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getUserIdCardsWithRequestBuilder(userId: userId, cardId: cardId, authorization: authorization).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Obtener una tarjeta
     - GET /payments-cards/users/{user_id}/cards/{card_id}
     - Obtener una tarjeta por su identificador.
     - Bearer Token:
       - type: http
       - name: Authorization
     - parameter userId: (path)  
     - parameter cardId: (path)  
     - parameter authorization: (header)  (optional)
     - returns: RequestBuilder<GetUserIdCards200Response> 
     */
    open class func getUserIdCardsWithRequestBuilder(userId: String, cardId: String, authorization: String? = nil) -> RequestBuilder<GetUserIdCards200Response> {
        var localVariablePath = "/payments-cards/users/{user_id}/cards/{card_id}"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{user_id}", with: userIdPostEscape, options: .literal, range: nil)
        let cardIdPreEscape = "\(APIHelper.mapValueToPathItem(cardId))"
        let cardIdPostEscape = cardIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{card_id}", with: cardIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = DEUNAClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Authorization": authorization?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetUserIdCards200Response>.Type = DEUNAClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Crear una tarjeta
     
     - parameter userId: (path)  
     - parameter authorization: (header)  (optional)
     - parameter postUsersUserIdCardsRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func postUsersUserIdCards(userId: String, authorization: String? = nil, postUsersUserIdCardsRequest: PostUsersUserIdCardsRequest? = nil, apiResponseQueue: DispatchQueue = DEUNAClientAPI.apiResponseQueue, completion: @escaping ((_ data: PostUsersUserIdCards201Response?, _ error: Error?) -> Void)) -> RequestTask {
        return postUsersUserIdCardsWithRequestBuilder(userId: userId, authorization: authorization, postUsersUserIdCardsRequest: postUsersUserIdCardsRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Crear una tarjeta
     - POST /payments-cards/users/{user_id}/cards
     - Crear una tarjeta para el usuario.
     - Bearer Token:
       - type: http
       - name: Authorization
     - parameter userId: (path)  
     - parameter authorization: (header)  (optional)
     - parameter postUsersUserIdCardsRequest: (body)  (optional)
     - returns: RequestBuilder<PostUsersUserIdCards201Response> 
     */
    open class func postUsersUserIdCardsWithRequestBuilder(userId: String, authorization: String? = nil, postUsersUserIdCardsRequest: PostUsersUserIdCardsRequest? = nil) -> RequestBuilder<PostUsersUserIdCards201Response> {
        var localVariablePath = "/payments-cards/users/{user_id}/cards"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{user_id}", with: userIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = DEUNAClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: postUsersUserIdCardsRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Authorization": authorization?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PostUsersUserIdCards201Response>.Type = DEUNAClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}