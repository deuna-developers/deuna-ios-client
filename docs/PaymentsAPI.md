# PaymentsAPI

All URIs are relative to *https://staging-apigw.getduna.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**capture**](PaymentsAPI.md#capture) | **POST** /merchants/orders/{order_token}/capture | Capturar un pago autorizado
[**getMerchantsPaymentsMethods**](PaymentsAPI.md#getmerchantspaymentsmethods) | **GET** /merchants/orders/{order_token}/payments-methods | Métodos de pago
[**getPaymentMethods**](PaymentsAPI.md#getpaymentmethods) | **GET** /transactions/payments-methods | Payment methods campos específicos
[**purchase**](PaymentsAPI.md#purchase) | **POST** /merchants/transactions/purchase | Realizar pago de orden
[**verifyPaymentOtp**](PaymentsAPI.md#verifypaymentotp) | **POST** /merchants/orders/{order_token}/transactions/verify | Verificar pago con OTP


# **capture**
```swift
    open class func capture(orderToken: String, xApiKey: String? = nil, captureRequest: CaptureRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Capturar un pago autorizado

La opción de **capturar un pago autorizado** te permite completar una transacción con estado **authorized**. Una transaccion esta en estado  **authorized** cuando se reservaron los fondos necesarios para dicha transacción.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let orderToken = "orderToken_example" // String | 
let xApiKey = "xApiKey_example" // String |  (optional)
let captureRequest = capture_request(amount: 123) // CaptureRequest |  (optional)

// Capturar un pago autorizado
PaymentsAPI.capture(orderToken: orderToken, xApiKey: xApiKey, captureRequest: captureRequest) { (response, error) in
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
 **captureRequest** | [**CaptureRequest**](CaptureRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMerchantsPaymentsMethods**
```swift
    open class func getMerchantsPaymentsMethods(orderToken: String, xApiKey: String? = nil, authorization: String? = nil, completion: @escaping (_ data: GetMerchantsPaymentsMethods200Response?, _ error: Error?) -> Void)
```

Métodos de pago

Obtiene los métodos disponibles que tiene el comercio para esa orden en específico

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let orderToken = "orderToken_example" // String | 
let xApiKey = "xApiKey_example" // String |  (optional)
let authorization = "authorization_example" // String |  (optional)

// Métodos de pago
PaymentsAPI.getMerchantsPaymentsMethods(orderToken: orderToken, xApiKey: xApiKey, authorization: authorization) { (response, error) in
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

[**GetMerchantsPaymentsMethods200Response**](GetMerchantsPaymentsMethods200Response.md)

### Authorization

[Authorization](../README.md#Authorization), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPaymentMethods**
```swift
    open class func getPaymentMethods(authorization: String? = nil, completion: @escaping (_ data: GetPaymentMethods200Response?, _ error: Error?) -> Void)
```

Payment methods campos específicos

Obtén los métodos de pago asociados al comercio y su respectiva información adicional requerida.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let authorization = "authorization_example" // String |  (optional)

// Payment methods campos específicos
PaymentsAPI.getPaymentMethods(authorization: authorization) { (response, error) in
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
 **authorization** | **String** |  | [optional] 

### Return type

[**GetPaymentMethods200Response**](GetPaymentMethods200Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **purchase**
```swift
    open class func purchase(xApiKey: String? = nil, authorization: String? = nil, xDeviceId: String? = nil, xSessionId: String? = nil, purchaseRequest: PurchaseRequest? = nil, completion: @escaping (_ data: Purchase200Response?, _ error: Error?) -> Void)
```

Realizar pago de orden

Realiza el pago de la orden. Para los procesadores previamente configurados, al momento de hacer el pago, en la respuesta el atributo 'status' cambiará a 'authorized'  indicando que dicha transacción esta pendiente para realizar una captura o anulación, según sea el caso.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let xApiKey = "xApiKey_example" // String |  (optional)
let authorization = "authorization_example" // String |  (optional)
let xDeviceId = "xDeviceId_example" // String |  (optional)
let xSessionId = "xSessionId_example" // String |  (optional)
let purchaseRequest = purchase_request(billingAddress: purchase_request_billing_address(additionalDescription: "additionalDescription_example", address1: "address1_example", address2: "address2_example", addressType: "addressType_example", city: "city_example", country: "country_example", createdAt: "createdAt_example", email: "email_example", firstName: "firstName_example", id: 123, identityDocument: "identityDocument_example", isDefault: false, lastName: "lastName_example", lat: 123, lng: 123, phone: "phone_example", stateName: "stateName_example", updatedAt: "updatedAt_example", userId: "userId_example", zipcode: "zipcode_example"), callbackUrl: "callbackUrl_example", cardId: "cardId_example", cashChange: "cashChange_example", creditCard: purchase_request_credit_card(address1: "address1_example", cardCvv: "cardCvv_example", cardHolder: "cardHolder_example", cardHolderDni: "cardHolderDni_example", cardNumber: "cardNumber_example", city: "city_example", country: "country_example", expiryMonth: "expiryMonth_example", expiryYear: "expiryYear_example", installments: 123, phone: "phone_example", state: "state_example", zip: "zip_example"), deviceId: "deviceId_example", email: "email_example", methodType: "methodType_example", paymentLink: "paymentLink_example", processorName: "processorName_example", saveUserInfo: false, sessionId: "sessionId_example", shippingAddress: purchase_request_shipping_address(additionalDescription: "additionalDescription_example", address1: "address1_example", address2: "address2_example", addressType: "addressType_example", city: "city_example", country: "country_example", createdAt: "createdAt_example", email: "email_example", firstName: "firstName_example", id: 123, identityDocument: "identityDocument_example", isDefault: false, lastName: "lastName_example", lat: 123, lng: 123, phone: "phone_example", stateName: "stateName_example", updatedAt: "updatedAt_example", userId: "userId_example", zipcode: "zipcode_example"), specificFields: purchase_request_specific_fields(callbacks: purchase_request_specific_fields_callbacks(onCanceled: "onCanceled_example", onFailed: "onFailed_example", onReject: "onReject_example", onSuccess: "onSuccess_example"), description: "description_example", financialInstitution: "financialInstitution_example"), storeCode: "storeCode_example", token: "token_example", userInstructions: "userInstructions_example") // PurchaseRequest |  (optional)

// Realizar pago de orden
PaymentsAPI.purchase(xApiKey: xApiKey, authorization: authorization, xDeviceId: xDeviceId, xSessionId: xSessionId, purchaseRequest: purchaseRequest) { (response, error) in
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
 **authorization** | **String** |  | [optional] 
 **xDeviceId** | **String** |  | [optional] 
 **xSessionId** | **String** |  | [optional] 
 **purchaseRequest** | [**PurchaseRequest**](PurchaseRequest.md) |  | [optional] 

### Return type

[**Purchase200Response**](Purchase200Response.md)

### Authorization

[Authorization](../README.md#Authorization), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyPaymentOtp**
```swift
    open class func verifyPaymentOtp(orderToken: String, xApiKey: String? = nil, authorization: String? = nil, verifyPaymentOtpRequest: VerifyPaymentOtpRequest? = nil, completion: @escaping (_ data: OrderToken200Response?, _ error: Error?) -> Void)
```

Verificar pago con OTP

Verificar el pago con el código OTP 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let orderToken = "orderToken_example" // String | 
let xApiKey = "xApiKey_example" // String |  (optional)
let authorization = "authorization_example" // String |  (optional)
let verifyPaymentOtpRequest = verify_payment_otp_request(otp: "otp_example") // VerifyPaymentOtpRequest |  (optional)

// Verificar pago con OTP
PaymentsAPI.verifyPaymentOtp(orderToken: orderToken, xApiKey: xApiKey, authorization: authorization, verifyPaymentOtpRequest: verifyPaymentOtpRequest) { (response, error) in
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
 **verifyPaymentOtpRequest** | [**VerifyPaymentOtpRequest**](VerifyPaymentOtpRequest.md) |  | [optional] 

### Return type

[**OrderToken200Response**](OrderToken200Response.md)

### Authorization

[Authorization](../README.md#Authorization), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

