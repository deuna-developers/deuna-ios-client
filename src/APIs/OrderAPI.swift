//
// OrderAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class OrderAPI {

    /**
     Cancelar la orden
     
     - parameter orderToken: (path)  
     - parameter xApiKey: (header)  (optional)
     - parameter cancelOrderRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func cancelOrder(orderToken: String, xApiKey: String? = nil, cancelOrderRequest: CancelOrderRequest? = nil, apiResponseQueue: DispatchQueue = DEUNAClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return cancelOrderWithRequestBuilder(orderToken: orderToken, xApiKey: xApiKey, cancelOrderRequest: cancelOrderRequest).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Cancelar la orden
     - POST /merchants/orders/{order_token}/cancel
     - Cancela una orden identificada por el token de la orden. 
     - API Key:
       - type: apiKey X-Api-Key (HEADER)
       - name: X-Api-Key
     - parameter orderToken: (path)  
     - parameter xApiKey: (header)  (optional)
     - parameter cancelOrderRequest: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func cancelOrderWithRequestBuilder(orderToken: String, xApiKey: String? = nil, cancelOrderRequest: CancelOrderRequest? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/merchants/orders/{order_token}/cancel"
        let orderTokenPreEscape = "\(APIHelper.mapValueToPathItem(orderToken))"
        let orderTokenPostEscape = orderTokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{order_token}", with: orderTokenPostEscape, options: .literal, range: nil)
        let localVariableURLString = DEUNAClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: cancelOrderRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "X-Api-Key": xApiKey?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = DEUNAClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Obtener orden por token
     
     - parameter orderToken: (path)  
     - parameter xApiKey: (header)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getOrder(orderToken: String, xApiKey: String? = nil, apiResponseQueue: DispatchQueue = DEUNAClientAPI.apiResponseQueue, completion: @escaping ((_ data: GetOrder200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getOrderWithRequestBuilder(orderToken: orderToken, xApiKey: xApiKey).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Obtener orden por token
     - GET /merchants/orders/{order_token}
     - 
     - API Key:
       - type: apiKey X-Api-Key (HEADER)
       - name: X-Api-Key
     - parameter orderToken: (path)  
     - parameter xApiKey: (header)  (optional)
     - returns: RequestBuilder<GetOrder200Response> 
     */
    open class func getOrderWithRequestBuilder(orderToken: String, xApiKey: String? = nil) -> RequestBuilder<GetOrder200Response> {
        var localVariablePath = "/merchants/orders/{order_token}"
        let orderTokenPreEscape = "\(APIHelper.mapValueToPathItem(orderToken))"
        let orderTokenPostEscape = orderTokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{order_token}", with: orderTokenPostEscape, options: .literal, range: nil)
        let localVariableURLString = DEUNAClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "X-Api-Key": xApiKey?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<GetOrder200Response>.Type = DEUNAClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Crear token de orden
     
     - parameter xApiKey: (header)  (optional)
     - parameter orderTokenRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func orderToken(xApiKey: String? = nil, orderTokenRequest: OrderTokenRequest? = nil, apiResponseQueue: DispatchQueue = DEUNAClientAPI.apiResponseQueue, completion: @escaping ((_ data: OrderToken200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return orderTokenWithRequestBuilder(xApiKey: xApiKey, orderTokenRequest: orderTokenRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Crear token de orden
     - POST /merchants/orders
     - Generar una orden tokenizada en DEUNA, este deberá ser usado para el resto de peticiones y para poder inicializar el checkout
     - API Key:
       - type: apiKey X-Api-Key (HEADER)
       - name: X-Api-Key
     - parameter xApiKey: (header)  (optional)
     - parameter orderTokenRequest: (body)  (optional)
     - returns: RequestBuilder<OrderToken200Response> 
     */
    open class func orderTokenWithRequestBuilder(xApiKey: String? = nil, orderTokenRequest: OrderTokenRequest? = nil) -> RequestBuilder<OrderToken200Response> {
        let localVariablePath = "/merchants/orders"
        let localVariableURLString = DEUNAClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: orderTokenRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "X-Api-Key": xApiKey?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<OrderToken200Response>.Type = DEUNAClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Reembolsar orden
     
     - parameter orderToken: (path)  
     - parameter xApiKey: (header)  (optional)
     - parameter refundOrderRequest: (body) Reembolso de la orden (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func refundOrder(orderToken: String, xApiKey: String? = nil, refundOrderRequest: RefundOrderRequest? = nil, apiResponseQueue: DispatchQueue = DEUNAClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return refundOrderWithRequestBuilder(orderToken: orderToken, xApiKey: xApiKey, refundOrderRequest: refundOrderRequest).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Reembolsar orden
     - POST /merchants/orders/{order_token}/refund
     - Este request crea un reembolso de una orden identificada por el token de la orden, el reembolo puede ser: 1. <b>Reembolso total</b>, en este caso no es necesario enviar el atributo `amount`. 2. <b>Reembolso parcial</b>, debes enviar el atributo  `amount` para especificar que es un reembolso parcial, indicando la cantidad a reembolsar.
     - API Key:
       - type: apiKey X-Api-Key (HEADER)
       - name: X-Api-Key
     - parameter orderToken: (path)  
     - parameter xApiKey: (header)  (optional)
     - parameter refundOrderRequest: (body) Reembolso de la orden (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func refundOrderWithRequestBuilder(orderToken: String, xApiKey: String? = nil, refundOrderRequest: RefundOrderRequest? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/merchants/orders/{order_token}/refund"
        let orderTokenPreEscape = "\(APIHelper.mapValueToPathItem(orderToken))"
        let orderTokenPostEscape = orderTokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{order_token}", with: orderTokenPostEscape, options: .literal, range: nil)
        let localVariableURLString = DEUNAClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: refundOrderRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "X-Api-Key": xApiKey?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = DEUNAClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Aprobar orden
     
     - parameter orderToken: (path)  
     - parameter xApiKey: (header)  (optional)
     - parameter successOrderRequest: (body) Aprobar orden (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func successOrder(orderToken: String, xApiKey: String? = nil, successOrderRequest: SuccessOrderRequest? = nil, apiResponseQueue: DispatchQueue = DEUNAClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return successOrderWithRequestBuilder(orderToken: orderToken, xApiKey: xApiKey, successOrderRequest: successOrderRequest).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Aprobar orden
     - POST /merchants/orders/{order_token}/success
     - Si se quiere aprobar una orden para notificar una orden de pago asíncrona como una transferencia podemos usar este método
     - API Key:
       - type: apiKey X-Api-Key (HEADER)
       - name: X-Api-Key
     - parameter orderToken: (path)  
     - parameter xApiKey: (header)  (optional)
     - parameter successOrderRequest: (body) Aprobar orden (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func successOrderWithRequestBuilder(orderToken: String, xApiKey: String? = nil, successOrderRequest: SuccessOrderRequest? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/merchants/orders/{order_token}/success"
        let orderTokenPreEscape = "\(APIHelper.mapValueToPathItem(orderToken))"
        let orderTokenPostEscape = orderTokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{order_token}", with: orderTokenPostEscape, options: .literal, range: nil)
        let localVariableURLString = DEUNAClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: successOrderRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "X-Api-Key": xApiKey?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = DEUNAClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Anular pago
     
     - parameter orderToken: (path)  
     - parameter xApiKey: (header)  (optional)
     - parameter successOrderRequest: (body) Aprobar orden (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func voidPaymentOrder(orderToken: String, xApiKey: String? = nil, successOrderRequest: SuccessOrderRequest? = nil, apiResponseQueue: DispatchQueue = DEUNAClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return voidPaymentOrderWithRequestBuilder(orderToken: orderToken, xApiKey: xApiKey, successOrderRequest: successOrderRequest).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Anular pago
     - POST /merchants/orders/{order_token}/void
     - Se utiliza este método cuando se quiere anular el pago de una orden 
     - API Key:
       - type: apiKey X-Api-Key (HEADER)
       - name: X-Api-Key
     - parameter orderToken: (path)  
     - parameter xApiKey: (header)  (optional)
     - parameter successOrderRequest: (body) Aprobar orden (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func voidPaymentOrderWithRequestBuilder(orderToken: String, xApiKey: String? = nil, successOrderRequest: SuccessOrderRequest? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/merchants/orders/{order_token}/void"
        let orderTokenPreEscape = "\(APIHelper.mapValueToPathItem(orderToken))"
        let orderTokenPostEscape = orderTokenPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{order_token}", with: orderTokenPostEscape, options: .literal, range: nil)
        let localVariableURLString = DEUNAClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: successOrderRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "X-Api-Key": xApiKey?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = DEUNAClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}