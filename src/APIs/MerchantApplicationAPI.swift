//
// MerchantApplicationAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class MerchantApplicationAPI {

    /**
     Get Application
     
     - parameter merchantId: (path)  
     - parameter applicationId: (path)  
     - parameter authorization: (header)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func getApplicationById(merchantId: String, applicationId: String, authorization: String? = nil, apiResponseQueue: DispatchQueue = DEUNAClientAPI.apiResponseQueue, completion: @escaping ((_ data: MerchantsMerchantIdApplicationsPost200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return getApplicationByIdWithRequestBuilder(merchantId: merchantId, applicationId: applicationId, authorization: authorization).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Application
     - GET /merchants/{merchant_id}/applications/{application_id}
     - Get application by ID
     - Bearer Token:
       - type: http
       - name: Authorization
     - parameter merchantId: (path)  
     - parameter applicationId: (path)  
     - parameter authorization: (header)  (optional)
     - returns: RequestBuilder<MerchantsMerchantIdApplicationsPost200Response> 
     */
    open class func getApplicationByIdWithRequestBuilder(merchantId: String, applicationId: String, authorization: String? = nil) -> RequestBuilder<MerchantsMerchantIdApplicationsPost200Response> {
        var localVariablePath = "/merchants/{merchant_id}/applications/{application_id}"
        let merchantIdPreEscape = "\(APIHelper.mapValueToPathItem(merchantId))"
        let merchantIdPostEscape = merchantIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{merchant_id}", with: merchantIdPostEscape, options: .literal, range: nil)
        let applicationIdPreEscape = "\(APIHelper.mapValueToPathItem(applicationId))"
        let applicationIdPostEscape = applicationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{application_id}", with: applicationIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = DEUNAClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Authorization": authorization?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MerchantsMerchantIdApplicationsPost200Response>.Type = DEUNAClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Validate Application
     
     - parameter xApiKey: (header)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func merchantsApplicationsValidateGet(xApiKey: String? = nil, apiResponseQueue: DispatchQueue = DEUNAClientAPI.apiResponseQueue, completion: @escaping ((_ data: MerchantsApplicationsValidateGet200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return merchantsApplicationsValidateGetWithRequestBuilder(xApiKey: xApiKey).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Validate Application
     - GET /merchants/applications/validate
     - Validate application
     - API Key:
       - type: apiKey X-Api-Key (HEADER)
       - name: X-Api-Key
     - parameter xApiKey: (header)  (optional)
     - returns: RequestBuilder<MerchantsApplicationsValidateGet200Response> 
     */
    open class func merchantsApplicationsValidateGetWithRequestBuilder(xApiKey: String? = nil) -> RequestBuilder<MerchantsApplicationsValidateGet200Response> {
        let localVariablePath = "/merchants/applications/validate"
        let localVariableURLString = DEUNAClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "X-Api-Key": xApiKey?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MerchantsApplicationsValidateGet200Response>.Type = DEUNAClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get Applications
     
     - parameter merchantId: (path)  
     - parameter authorization: (header)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func merchantsMerchantIdApplicationsGet(merchantId: String, authorization: String? = nil, apiResponseQueue: DispatchQueue = DEUNAClientAPI.apiResponseQueue, completion: @escaping ((_ data: MerchantsMerchantIdApplicationsGet200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return merchantsMerchantIdApplicationsGetWithRequestBuilder(merchantId: merchantId, authorization: authorization).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Applications
     - GET /merchants/{merchant_id}/applications
     - Get applications of merchant
     - Bearer Token:
       - type: http
       - name: Authorization
     - parameter merchantId: (path)  
     - parameter authorization: (header)  (optional)
     - returns: RequestBuilder<MerchantsMerchantIdApplicationsGet200Response> 
     */
    open class func merchantsMerchantIdApplicationsGetWithRequestBuilder(merchantId: String, authorization: String? = nil) -> RequestBuilder<MerchantsMerchantIdApplicationsGet200Response> {
        var localVariablePath = "/merchants/{merchant_id}/applications"
        let merchantIdPreEscape = "\(APIHelper.mapValueToPathItem(merchantId))"
        let merchantIdPostEscape = merchantIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{merchant_id}", with: merchantIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = DEUNAClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Authorization": authorization?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MerchantsMerchantIdApplicationsGet200Response>.Type = DEUNAClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Create Application
     
     - parameter merchantId: (path)  
     - parameter authorization: (header)  (optional)
     - parameter merchantsMerchantIdApplicationsPostRequest: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func merchantsMerchantIdApplicationsPost(merchantId: String, authorization: String? = nil, merchantsMerchantIdApplicationsPostRequest: MerchantsMerchantIdApplicationsPostRequest? = nil, apiResponseQueue: DispatchQueue = DEUNAClientAPI.apiResponseQueue, completion: @escaping ((_ data: MerchantsMerchantIdApplicationsPost200Response?, _ error: Error?) -> Void)) -> RequestTask {
        return merchantsMerchantIdApplicationsPostWithRequestBuilder(merchantId: merchantId, authorization: authorization, merchantsMerchantIdApplicationsPostRequest: merchantsMerchantIdApplicationsPostRequest).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Application
     - POST /merchants/{merchant_id}/applications
     - Create application
     - Bearer Token:
       - type: http
       - name: Authorization
     - parameter merchantId: (path)  
     - parameter authorization: (header)  (optional)
     - parameter merchantsMerchantIdApplicationsPostRequest: (body)  (optional)
     - returns: RequestBuilder<MerchantsMerchantIdApplicationsPost200Response> 
     */
    open class func merchantsMerchantIdApplicationsPostWithRequestBuilder(merchantId: String, authorization: String? = nil, merchantsMerchantIdApplicationsPostRequest: MerchantsMerchantIdApplicationsPostRequest? = nil) -> RequestBuilder<MerchantsMerchantIdApplicationsPost200Response> {
        var localVariablePath = "/merchants/{merchant_id}/applications"
        let merchantIdPreEscape = "\(APIHelper.mapValueToPathItem(merchantId))"
        let merchantIdPostEscape = merchantIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{merchant_id}", with: merchantIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = DEUNAClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: merchantsMerchantIdApplicationsPostRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Authorization": authorization?.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<MerchantsMerchantIdApplicationsPost200Response>.Type = DEUNAClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
