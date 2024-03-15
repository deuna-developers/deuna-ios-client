# OrdersAPI

All URIs are relative to *https://staging-apigw.getduna.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getInstallments**](OrdersAPI.md#getinstallments) | **GET** /merchants/transactions/orders/{order_token}/installments | Obtener Installments para Orden


# **getInstallments**
```swift
    open class func getInstallments(orderToken: String, xApiKey: String? = nil, authorization: String? = nil, completion: @escaping (_ data: GetInstallments200Response?, _ error: Error?) -> Void)
```

Obtener Installments para Orden

Obtener Installments para Orden

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DEUNAClient

let orderToken = "orderToken_example" // String | 
let xApiKey = "xApiKey_example" // String |  (optional)
let authorization = "authorization_example" // String |  (optional)

// Obtener Installments para Orden
OrdersAPI.getInstallments(orderToken: orderToken, xApiKey: xApiKey, authorization: authorization) { (response, error) in
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
 **orderToken** | **String** |  | 
 **xApiKey** | **String** |  | [optional] 
 **authorization** | **String** |  | [optional] 

### Return type

[**GetInstallments200Response**](GetInstallments200Response.md)

### Authorization

[Authorization](../README.md#Authorization), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

