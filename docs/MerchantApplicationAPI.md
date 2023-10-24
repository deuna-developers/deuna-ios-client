# MerchantApplicationAPI

All URIs are relative to *https://staging-apigw.getduna.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getApplicationById**](MerchantApplicationAPI.md#getapplicationbyid) | **GET** /merchants/{merchant_id}/applications/{application_id} | Get Application
[**merchantsApplicationsValidateGet**](MerchantApplicationAPI.md#merchantsapplicationsvalidateget) | **GET** /merchants/applications/validate | Validate Application
[**merchantsMerchantIdApplicationsGet**](MerchantApplicationAPI.md#merchantsmerchantidapplicationsget) | **GET** /merchants/{merchant_id}/applications | Get Applications
[**merchantsMerchantIdApplicationsPost**](MerchantApplicationAPI.md#merchantsmerchantidapplicationspost) | **POST** /merchants/{merchant_id}/applications | Create Application


# **getApplicationById**
```swift
    open class func getApplicationById(merchantId: String, applicationId: String, authorization: String? = nil, completion: @escaping (_ data: MerchantsMerchantIdApplicationsPost200Response?, _ error: Error?) -> Void)
```

Get Application

Get application by ID

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let merchantId = "merchantId_example" // String | 
let applicationId = "applicationId_example" // String | 
let authorization = "authorization_example" // String |  (optional)

// Get Application
MerchantApplicationAPI.getApplicationById(merchantId: merchantId, applicationId: applicationId, authorization: authorization) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **merchantId** | **String** |  | 
 **applicationId** | **String** |  | 
 **authorization** | **String** |  | [optional] 

### Return type

[**MerchantsMerchantIdApplicationsPost200Response**](MerchantsMerchantIdApplicationsPost200Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **merchantsApplicationsValidateGet**
```swift
    open class func merchantsApplicationsValidateGet(xApiKey: String? = nil, completion: @escaping (_ data: MerchantsApplicationsValidateGet200Response?, _ error: Error?) -> Void)
```

Validate Application

Validate application

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let xApiKey = "xApiKey_example" // String |  (optional)

// Validate Application
MerchantApplicationAPI.merchantsApplicationsValidateGet(xApiKey: xApiKey) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiKey** | **String** |  | [optional] 

### Return type

[**MerchantsApplicationsValidateGet200Response**](MerchantsApplicationsValidateGet200Response.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **merchantsMerchantIdApplicationsGet**
```swift
    open class func merchantsMerchantIdApplicationsGet(merchantId: String, authorization: String? = nil, completion: @escaping (_ data: MerchantsMerchantIdApplicationsGet200Response?, _ error: Error?) -> Void)
```

Get Applications

Get applications of merchant

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let merchantId = "merchantId_example" // String | 
let authorization = "authorization_example" // String |  (optional)

// Get Applications
MerchantApplicationAPI.merchantsMerchantIdApplicationsGet(merchantId: merchantId, authorization: authorization) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **merchantId** | **String** |  | 
 **authorization** | **String** |  | [optional] 

### Return type

[**MerchantsMerchantIdApplicationsGet200Response**](MerchantsMerchantIdApplicationsGet200Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **merchantsMerchantIdApplicationsPost**
```swift
    open class func merchantsMerchantIdApplicationsPost(merchantId: String, authorization: String? = nil, merchantsMerchantIdApplicationsPostRequest: MerchantsMerchantIdApplicationsPostRequest? = nil, completion: @escaping (_ data: MerchantsMerchantIdApplicationsPost200Response?, _ error: Error?) -> Void)
```

Create Application

Create application

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let merchantId = "merchantId_example" // String | 
let authorization = "authorization_example" // String |  (optional)
let merchantsMerchantIdApplicationsPostRequest = _merchants__merchant_id__applications_post_request(expireAt: "expireAt_example", isSandbox: false, name: "name_example") // MerchantsMerchantIdApplicationsPostRequest |  (optional)

// Create Application
MerchantApplicationAPI.merchantsMerchantIdApplicationsPost(merchantId: merchantId, authorization: authorization, merchantsMerchantIdApplicationsPostRequest: merchantsMerchantIdApplicationsPostRequest) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **merchantId** | **String** |  | 
 **authorization** | **String** |  | [optional] 
 **merchantsMerchantIdApplicationsPostRequest** | [**MerchantsMerchantIdApplicationsPostRequest**](MerchantsMerchantIdApplicationsPostRequest.md) |  | [optional] 

### Return type

[**MerchantsMerchantIdApplicationsPost200Response**](MerchantsMerchantIdApplicationsPost200Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

