# OrderAPI

All URIs are relative to *https://staging-apigw.getduna.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelOrder**](OrderAPI.md#cancelorder) | **POST** /merchants/orders/{order_token}/cancel | Cancelar la orden
[**getInstallments**](OrderAPI.md#getinstallments) | **GET** /merchants/transactions/orders/{order_token}/installments | Obtener Installments para Orden
[**getOrder**](OrderAPI.md#getorder) | **GET** /merchants/orders/{order_token} | Obtener orden por token
[**orderToken**](OrderAPI.md#ordertoken) | **POST** /merchants/orders | Crear token de orden
[**refundOrder**](OrderAPI.md#refundorder) | **POST** /merchants/orders/{order_token}/refund | Reembolsar orden
[**successOrder**](OrderAPI.md#successorder) | **POST** /merchants/orders/{order_token}/success | Aprobar orden
[**voidPaymentOrder**](OrderAPI.md#voidpaymentorder) | **POST** /merchants/orders/{order_token}/void | Anular pago


# **cancelOrder**
```swift
    open class func cancelOrder(orderToken: String, xApiKey: String? = nil, cancelOrderRequest: CancelOrderRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Cancelar la orden

Cancela una orden identificada por el token de la orden. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let orderToken = "orderToken_example" // String | 
let xApiKey = "xApiKey_example" // String |  (optional)
let cancelOrderRequest = cancel_order_request(reason: "reason_example") // CancelOrderRequest |  (optional)

// Cancelar la orden
OrderAPI.cancelOrder(orderToken: orderToken, xApiKey: xApiKey, cancelOrderRequest: cancelOrderRequest) { (response, error) in
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
 **cancelOrderRequest** | [**CancelOrderRequest**](CancelOrderRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInstallments**
```swift
    open class func getInstallments(orderToken: String, xApiKey: String? = nil, authorization: String? = nil, completion: @escaping (_ data: GetInstallments200Response?, _ error: Error?) -> Void)
```

Obtener Installments para Orden

Obtener Installments para Orden

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let orderToken = "orderToken_example" // String | 
let xApiKey = "xApiKey_example" // String |  (optional)
let authorization = "authorization_example" // String |  (optional)

// Obtener Installments para Orden
OrderAPI.getInstallments(orderToken: orderToken, xApiKey: xApiKey, authorization: authorization) { (response, error) in
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

# **getOrder**
```swift
    open class func getOrder(orderToken: String, xApiKey: String? = nil, completion: @escaping (_ data: OrderToken200Response?, _ error: Error?) -> Void)
```

Obtener orden por token



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let orderToken = "orderToken_example" // String | 
let xApiKey = "xApiKey_example" // String |  (optional)

// Obtener orden por token
OrderAPI.getOrder(orderToken: orderToken, xApiKey: xApiKey) { (response, error) in
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

### Return type

[**OrderToken200Response**](OrderToken200Response.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **orderToken**
```swift
    open class func orderToken(xApiKey: String? = nil, orderTokenRequest: OrderTokenRequest? = nil, completion: @escaping (_ data: OrderToken200Response?, _ error: Error?) -> Void)
```

Crear token de orden

Generar una orden tokenizada en DEUNA, este deberá ser usado para el resto de peticiones y para poder inicializar el checkout

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let xApiKey = "xApiKey_example" // String |  (optional)
let orderTokenRequest = order_token_request(order: order_token_request_order(billingAddress: order_token_request_order_billing_address(additionalDescription: "additionalDescription_example", address1: "address1_example", address2: "address2_example", addressType: "addressType_example", city: "city_example", country: "country_example", createdAt: "createdAt_example", firstName: "firstName_example", id: 123, identityDocument: "identityDocument_example", isDefault: false, lastName: "lastName_example", lat: 123, lng: 123, phone: "phone_example", stateName: "stateName_example", updatedAt: "updatedAt_example", userId: "userId_example", zipcode: "zipcode_example"), cashChange: 123, currency: "currency_example", discounts: [order_token_request_order_discounts_inner(amount: 123, code: "code_example", description: "description_example", detailsUrl: "detailsUrl_example", discountCategory: "discountCategory_example", freeShipping: order_token_request_order_discounts_inner_free_shipping(isFreeShipping: false, maximumCostAllowed: 123), reference: "reference_example", targetType: "targetType_example", type: "type_example")], giftCard: [order_token_request_order_gift_card_inner(amount: 123, code: "code_example", description: "description_example", detailsUrl: "detailsUrl_example", reference: "reference_example")], items: [order_token_request_order_items_inner(brand: "brand_example", category: "category_example", color: "color_example", description: "description_example", detailsUrl: "detailsUrl_example", discounts: [order_token_request_order_items_inner_discounts_inner(amount: 123, refIdx: 123)], id: "id_example", imageUrl: "imageUrl_example", isbn: "isbn_example", manufacturer: "manufacturer_example", name: "name_example", options: "options_example", quantity: 123, size: "size_example", sku: "sku_example", taxAmount: order_token_request_order_items_inner_tax_amount(amount: 123, currency: "currency_example", currencySymbol: "currencySymbol_example"), taxable: false, totalAmount: order_token_request_order_items_inner_total_amount(amount: 123, currency: "currency_example", currencySymbol: "currencySymbol_example", originalAmount: 123, totalDiscount: 123), unitPrice: order_token_request_order_items_inner_unit_price(amount: 123, currency: "currency_example", currencySymbol: "currencySymbol_example"), uom: "uom_example", upc: "upc_example", weight: order_token_request_order_items_inner_weight(unit: "unit_example", weight: 123))], metadata: order_token_request_order_metadata(key1: "key1_example", key2: "key2_example"), orderId: "orderId_example", payment: order_token_request_order_payment(data: order_token_request_order_payment_data(amount: order_token_request_order_payment_data_amount(amount: 123, currency: "currency_example"), createdAt: "createdAt_example", customer: order_token_request_order_payment_data_customer(email: "email_example", id: "id_example"), fromCard: order_token_request_order_payment_data_from_card(cardBrand: "cardBrand_example", firstSix: "firstSix_example", lastFour: "lastFour_example"), id: "id_example", merchant: order_token_request_order_payment_data_merchant(id: "id_example", storeCode: "storeCode_example"), metadata: 123, methodType: "methodType_example", processor: "processor_example", reason: "reason_example", status: "status_example", updatedAt: "updatedAt_example")), redirectUrl: "redirectUrl_example", scheduledAt: "scheduledAt_example", shipping: order_token_request_order_shipping(discounts: [nil], originalAmount: 123, totalDiscount: 123), shippingAddress: order_token_request_order_shipping_address(additionalDescription: "additionalDescription_example", address1: "address1_example", address2: "address2_example", addressType: "addressType_example", city: "city_example", country: "country_example", createdAt: "createdAt_example", firstName: "firstName_example", id: 123, identityDocument: "identityDocument_example", isDefault: false, lastName: "lastName_example", lat: 123, lng: 123, phone: "phone_example", stateName: "stateName_example", updatedAt: "updatedAt_example", userId: "userId_example", zipcode: "zipcode_example"), shippingMethod: order_token_request_order_shipping_method(code: "code_example", cost: 123, displayCost: "displayCost_example", displayTaxAmount: "displayTaxAmount_example", maxDeliveryDate: "maxDeliveryDate_example", minDeliveryDate: "minDeliveryDate_example", name: "name_example", scheduler: [order_token_request_order_shipping_method_scheduler_inner(date: "date_example", endTime: "endTime_example", startTime: "startTime_example", stepsMinutes: 123)], taxAmount: 123), shippingMethods: [123], shippingOptions: order_token_request_order_shipping_options(details: order_token_request_order_shipping_options_details(additionalDetails: order_token_request_order_shipping_options_details_additional_details(addressNotes: "addressNotes_example", pickupTime: "pickupTime_example", stockLocation: "stockLocation_example"), address: "address_example", addressCoordinates: order_token_request_order_shipping_options_details_address_coordinates(lat: 123, lng: 123), contact: order_token_request_order_shipping_options_details_contact(name: "name_example", phone: "phone_example"), storeName: "storeName_example"), type: "type_example"), status: "status_example", storeCode: "storeCode_example", subTotal: 123, timezone: "timezone_example", totalAmount: 123, totalDiscount: 123, totalTaxAmount: 123, userInstructions: "userInstructions_example", webhookUrls: order_token_request_order_webhook_urls(applyCoupon: "applyCoupon_example", getShippingMethods: "getShippingMethods_example", notifyOrder: "notifyOrder_example", removeCoupon: "removeCoupon_example", shippingRate: "shippingRate_example", updateShippingMethod: "updateShippingMethod_example")), orderType: "orderType_example") // OrderTokenRequest |  (optional)

// Crear token de orden
OrderAPI.orderToken(xApiKey: xApiKey, orderTokenRequest: orderTokenRequest) { (response, error) in
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
 **orderTokenRequest** | [**OrderTokenRequest**](OrderTokenRequest.md) |  | [optional] 

### Return type

[**OrderToken200Response**](OrderToken200Response.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml, multipart/form-data

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refundOrder**
```swift
    open class func refundOrder(orderToken: String, xApiKey: String? = nil, refundOrderRequest: RefundOrderRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Reembolsar orden

Este request crea un reembolso de una orden identificada por el token de la orden, el reembolo puede ser: 1. <b>Reembolso total</b>, en este caso no es necesario enviar el atributo `amount`. 2. <b>Reembolso parcial</b>, debes enviar el atributo  `amount` para especificar que es un reembolso parcial, indicando la cantidad a reembolsar.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let orderToken = "orderToken_example" // String | 
let xApiKey = "xApiKey_example" // String |  (optional)
let refundOrderRequest = refund_order_request(amount: 123, reason: "reason_example") // RefundOrderRequest | Reembolso de la orden (optional)

// Reembolsar orden
OrderAPI.refundOrder(orderToken: orderToken, xApiKey: xApiKey, refundOrderRequest: refundOrderRequest) { (response, error) in
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
 **refundOrderRequest** | [**RefundOrderRequest**](RefundOrderRequest.md) | Reembolso de la orden | [optional] 

### Return type

Void (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **successOrder**
```swift
    open class func successOrder(orderToken: String, xApiKey: String? = nil, successOrderRequest: SuccessOrderRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Aprobar orden

Si se quiere aprobar una orden para notificar una orden de pago asíncrona como una transferencia podemos usar este método

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let orderToken = "orderToken_example" // String | 
let xApiKey = "xApiKey_example" // String |  (optional)
let successOrderRequest = success_order_request(reason: "reason_example") // SuccessOrderRequest | Aprobar orden (optional)

// Aprobar orden
OrderAPI.successOrder(orderToken: orderToken, xApiKey: xApiKey, successOrderRequest: successOrderRequest) { (response, error) in
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
 **successOrderRequest** | [**SuccessOrderRequest**](SuccessOrderRequest.md) | Aprobar orden | [optional] 

### Return type

Void (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **voidPaymentOrder**
```swift
    open class func voidPaymentOrder(orderToken: String, xApiKey: String? = nil, successOrderRequest: SuccessOrderRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Anular pago

Se utiliza este método cuando se quiere anular el pago de una orden 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let orderToken = "orderToken_example" // String | 
let xApiKey = "xApiKey_example" // String |  (optional)
let successOrderRequest = success_order_request(reason: "reason_example") // SuccessOrderRequest | Aprobar orden (optional)

// Anular pago
OrderAPI.voidPaymentOrder(orderToken: orderToken, xApiKey: xApiKey, successOrderRequest: successOrderRequest) { (response, error) in
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
 **successOrderRequest** | [**SuccessOrderRequest**](SuccessOrderRequest.md) | Aprobar orden | [optional] 

### Return type

Void (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

