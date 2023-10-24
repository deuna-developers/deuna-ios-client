# CardsAPI

All URIs are relative to *https://staging-apigw.getduna.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cardsBinBinGet**](CardsAPI.md#cardsbinbinget) | **GET** /cards/bin/{bin} | Bin detector
[**deleteUsersUserIdCardsCardId**](CardsAPI.md#deleteusersuseridcardscardid) | **DELETE** /payments-cards/users/{user_id}/cards/{card_id} | Eliminar una tarjeta
[**getUserCards**](CardsAPI.md#getusercards) | **GET** /payments-cards/users/{user_id}/cards | Obtener todas las tarjetas del usuario
[**getUserIdCards**](CardsAPI.md#getuseridcards) | **GET** /payments-cards/users/{user_id}/cards/{card_id} | Obtener una tarjeta
[**postUsersUserIdCards**](CardsAPI.md#postusersuseridcards) | **POST** /payments-cards/users/{user_id}/cards | Crear una tarjeta


# **cardsBinBinGet**
```swift
    open class func cardsBinBinGet(bin: String, xApiKey: String? = nil, completion: @escaping (_ data: CardsBinBinGet200Response?, _ error: Error?) -> Void)
```

Bin detector

Get Bin

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let bin = "bin_example" // String | 
let xApiKey = "xApiKey_example" // String |  (optional)

// Bin detector
CardsAPI.cardsBinBinGet(bin: bin, xApiKey: xApiKey) { (response, error) in
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
 **bin** | **String** |  | 
 **xApiKey** | **String** |  | [optional] 

### Return type

[**CardsBinBinGet200Response**](CardsBinBinGet200Response.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUsersUserIdCardsCardId**
```swift
    open class func deleteUsersUserIdCardsCardId(userId: String, cardId: String, authorization: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Eliminar una tarjeta

Eliminar una tarjeta.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let userId = "userId_example" // String | 
let cardId = "cardId_example" // String | 
let authorization = "authorization_example" // String |  (optional)

// Eliminar una tarjeta
CardsAPI.deleteUsersUserIdCardsCardId(userId: userId, cardId: cardId, authorization: authorization) { (response, error) in
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
 **userId** | **String** |  | 
 **cardId** | **String** |  | 
 **authorization** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserCards**
```swift
    open class func getUserCards(userId: String, authorization: String? = nil, completion: @escaping (_ data: GetUserCards200Response?, _ error: Error?) -> Void)
```

Obtener todas las tarjetas del usuario

Obtener todas las tarjetas del usuario

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let userId = "userId_example" // String | 
let authorization = "authorization_example" // String |  (optional)

// Obtener todas las tarjetas del usuario
CardsAPI.getUserCards(userId: userId, authorization: authorization) { (response, error) in
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
 **userId** | **String** |  | 
 **authorization** | **String** |  | [optional] 

### Return type

[**GetUserCards200Response**](GetUserCards200Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserIdCards**
```swift
    open class func getUserIdCards(userId: String, cardId: String, authorization: String? = nil, completion: @escaping (_ data: GetUserIdCards200Response?, _ error: Error?) -> Void)
```

Obtener una tarjeta

Obtener una tarjeta por su identificador.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let userId = "userId_example" // String | 
let cardId = "cardId_example" // String | 
let authorization = "authorization_example" // String |  (optional)

// Obtener una tarjeta
CardsAPI.getUserIdCards(userId: userId, cardId: cardId, authorization: authorization) { (response, error) in
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
 **userId** | **String** |  | 
 **cardId** | **String** |  | 
 **authorization** | **String** |  | [optional] 

### Return type

[**GetUserIdCards200Response**](GetUserIdCards200Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postUsersUserIdCards**
```swift
    open class func postUsersUserIdCards(userId: String, authorization: String? = nil, postUsersUserIdCardsRequest: PostUsersUserIdCardsRequest? = nil, completion: @escaping (_ data: PostUsersUserIdCards201Response?, _ error: Error?) -> Void)
```

Crear una tarjeta

Crear una tarjeta para el usuario.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let userId = "userId_example" // String | 
let authorization = "authorization_example" // String |  (optional)
let postUsersUserIdCardsRequest = post_users_user_id_cards_request(address1: "address1_example", cardCvv: "cardCvv_example", cardHolder: "cardHolder_example", cardHolderDni: "cardHolderDni_example", cardNumber: "cardNumber_example", cardVerificationConfig: post_users_user_id_cards_request_card_verification_config(invokeCardVerification: false), city: "city_example", country: "country_example", expiryMonth: "expiryMonth_example", expiryYear: "expiryYear_example", phone: "phone_example", state: "state_example", zip: "zip_example") // PostUsersUserIdCardsRequest |  (optional)

// Crear una tarjeta
CardsAPI.postUsersUserIdCards(userId: userId, authorization: authorization, postUsersUserIdCardsRequest: postUsersUserIdCardsRequest) { (response, error) in
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
 **userId** | **String** |  | 
 **authorization** | **String** |  | [optional] 
 **postUsersUserIdCardsRequest** | [**PostUsersUserIdCardsRequest**](PostUsersUserIdCardsRequest.md) |  | [optional] 

### Return type

[**PostUsersUserIdCards201Response**](PostUsersUserIdCards201Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

