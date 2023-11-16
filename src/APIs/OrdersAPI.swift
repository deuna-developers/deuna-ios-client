//
// OrdersAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class OrdersAPI {

    /**
     Obtener Installments para Orden
     
     - parameter orderToken: (path)  
     - parameter xApiKey: (header)  (optional)
     - parameter authorization: (header)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getInstallments(orderToken: String, xApiKey: String? = nil, authorization: String? = nil, apiResponseQueue: DispatchQueue = DEUNAClientAPI.apiResponseQueue, completion: @escaping ((_ data: GetInstallments200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getInstallmentsWithRequestBuilder(orderToken: orderToken, xApiKey: xApiKey, authorization: authorization).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Obtener Installments para Orden
     - GET /merchants/transactions/orders/{order_token}/installments
     - Obtener Installments para Orden
     - Bearer Token:
       - type: http
       - name: Authorization
     - API Key:
       - type: apiKey X-Api-Key (HEADER)
       - name: X-Api-Key
     - parameter orderToken: (path)  
     - parameter xApiKey: (header)  (optional)
     - parameter authorization: (header)  (optional)
     - returns: RequestBuilder<GetInstallments200Response> 
     */
    open class func getInstallmentsWithRequestBuilder(orderToken: String, xApiKey: String? = nil, authorization: String? = nil) -> RequestBuilder<GetInstallments200Response> {
        var localVariablePath = "/merchants/transactions/orders/{order_token}/installments"
        let orderTokenPreEscape = "\(APIHelper.mapValueToPathItem(orderToken))"
        let orderTokenPostEscape = orderTokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{order_token}", with: orderTokenPostEscape, options: .literal, range: nil)
        let localVariableURLString = DEUNAClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "X-Api-Key": xApiKey?.encodeToJSON(),
            "Authorization": authorization?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetInstallments200Response>.Type = DEUNAClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}