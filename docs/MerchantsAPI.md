# MerchantsAPI

All URIs are relative to *https://staging-apigw.getduna.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createMerchant**](MerchantsAPI.md#createmerchant) | **POST** /merchants | Create merchant
[**createMerchantStore**](MerchantsAPI.md#createmerchantstore) | **POST** /merchants/{merchant_id}/stores | Create Merchant Store
[**createPublicKey**](MerchantsAPI.md#createpublickey) | **POST** /merchants/{merchant_id}/public-keys | Create Public Key
[**getAllMerchants**](MerchantsAPI.md#getallmerchants) | **GET** /merchants-all | Get All Merchants
[**getMerchant**](MerchantsAPI.md#getmerchant) | **GET** /merchants/{merchant_id} | Get merchant
[**getMerchantStores**](MerchantsAPI.md#getmerchantstores) | **GET** /merchants/{merchant_id}/stores | Get Merchant Stores
[**identityToken**](MerchantsAPI.md#identitytoken) | **POST** /merchants/identity-token | Identity Token
[**login**](MerchantsAPI.md#login) | **POST** /merchants/login | Login
[**me**](MerchantsAPI.md#me) | **GET** /merchants-tokens/me | Get Information
[**registerMerchantToken**](MerchantsAPI.md#registermerchanttoken) | **POST** /merchants/{merchant_id}/tokens | Register Merchant Token
[**registerMerchantUser**](MerchantsAPI.md#registermerchantuser) | **POST** /merchants/users | Register Merchant User
[**registerMerchantUsers**](MerchantsAPI.md#registermerchantusers) | **GET** /merchant-users | Register Merchant User
[**updateMerchant**](MerchantsAPI.md#updatemerchant) | **PUT** /merchants/{merchant_id} | Update merchant


# **createMerchant**
```swift
    open class func createMerchant(xApiKey: String? = nil, createMerchantRequest: CreateMerchantRequest? = nil, completion: @escaping (_ data: CreateMerchant200Response?, _ error: Error?) -> Void)
```

Create merchant

Create merchant

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let xApiKey = "xApiKey_example" // String |  (optional)
let createMerchantRequest = createMerchant_request(city: "city_example", currency: "currency_example", managedByDuna: false, name: "name_example", shortName: "shortName_example", timezone: "timezone_example") // CreateMerchantRequest |  (optional)

// Create merchant
MerchantsAPI.createMerchant(xApiKey: xApiKey, createMerchantRequest: createMerchantRequest) { (response, error) in
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
 **createMerchantRequest** | [**CreateMerchantRequest**](CreateMerchantRequest.md) |  | [optional] 

### Return type

[**CreateMerchant200Response**](CreateMerchant200Response.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createMerchantStore**
```swift
    open class func createMerchantStore(merchantId: String, authorization: String? = nil, xApiKey: String? = nil, createMerchantStoreRequest: CreateMerchantStoreRequest? = nil, completion: @escaping (_ data: CreateMerchantStore200Response?, _ error: Error?) -> Void)
```

Create Merchant Store

Create Merchant Store

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let merchantId = "merchantId_example" // String | 
let authorization = "authorization_example" // String |  (optional)
let xApiKey = "xApiKey_example" // String |  (optional)
let createMerchantStoreRequest = createMerchantStore_request(address: "address_example", latitude: 123, longitude: 123, name: "name_example") // CreateMerchantStoreRequest |  (optional)

// Create Merchant Store
MerchantsAPI.createMerchantStore(merchantId: merchantId, authorization: authorization, xApiKey: xApiKey, createMerchantStoreRequest: createMerchantStoreRequest) { (response, error) in
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
 **xApiKey** | **String** |  | [optional] 
 **createMerchantStoreRequest** | [**CreateMerchantStoreRequest**](CreateMerchantStoreRequest.md) |  | [optional] 

### Return type

[**CreateMerchantStore200Response**](CreateMerchantStore200Response.md)

### Authorization

[Authorization](../README.md#Authorization), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPublicKey**
```swift
    open class func createPublicKey(merchantId: String, xApiKey: String? = nil, completion: @escaping (_ data: CreatePublicKey201Response?, _ error: Error?) -> Void)
```

Create Public Key

Create Public Key

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let merchantId = "merchantId_example" // String | 
let xApiKey = "xApiKey_example" // String |  (optional)

// Create Public Key
MerchantsAPI.createPublicKey(merchantId: merchantId, xApiKey: xApiKey) { (response, error) in
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
 **xApiKey** | **String** |  | [optional] 

### Return type

[**CreatePublicKey201Response**](CreatePublicKey201Response.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllMerchants**
```swift
    open class func getAllMerchants(authorization: String? = nil, completion: @escaping (_ data: GetAllMerchants200Response?, _ error: Error?) -> Void)
```

Get All Merchants

Get All Merchants

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let authorization = "authorization_example" // String |  (optional)

// Get All Merchants
MerchantsAPI.getAllMerchants(authorization: authorization) { (response, error) in
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

[**GetAllMerchants200Response**](GetAllMerchants200Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMerchant**
```swift
    open class func getMerchant(merchantId: String, xApiKey: String? = nil, completion: @escaping (_ data: GetMerchant200Response?, _ error: Error?) -> Void)
```

Get merchant

Get merchant

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let merchantId = "merchantId_example" // String | 
let xApiKey = "xApiKey_example" // String |  (optional)

// Get merchant
MerchantsAPI.getMerchant(merchantId: merchantId, xApiKey: xApiKey) { (response, error) in
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
 **xApiKey** | **String** |  | [optional] 

### Return type

[**GetMerchant200Response**](GetMerchant200Response.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMerchantStores**
```swift
    open class func getMerchantStores(merchantId: String, authorization: String? = nil, xApiKey: String? = nil, completion: @escaping (_ data: GetMerchantStores200Response?, _ error: Error?) -> Void)
```

Get Merchant Stores

Get Merchant Store

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let merchantId = "merchantId_example" // String | 
let authorization = "authorization_example" // String |  (optional)
let xApiKey = "xApiKey_example" // String |  (optional)

// Get Merchant Stores
MerchantsAPI.getMerchantStores(merchantId: merchantId, authorization: authorization, xApiKey: xApiKey) { (response, error) in
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
 **xApiKey** | **String** |  | [optional] 

### Return type

[**GetMerchantStores200Response**](GetMerchantStores200Response.md)

### Authorization

[Authorization](../README.md#Authorization), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **identityToken**
```swift
    open class func identityToken(authorization: String? = nil, completion: @escaping (_ data: IdentityToken200Response?, _ error: Error?) -> Void)
```

Identity Token

Identity Token

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let authorization = "authorization_example" // String |  (optional)

// Identity Token
MerchantsAPI.identityToken(authorization: authorization) { (response, error) in
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

[**IdentityToken200Response**](IdentityToken200Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **login**
```swift
    open class func login(xApiKey: String? = nil, loginRequest: LoginRequest? = nil, completion: @escaping (_ data: Login200Response?, _ error: Error?) -> Void)
```

Login

Make a Merchant Login

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let xApiKey = "xApiKey_example" // String |  (optional)
let loginRequest = login_request(email: "email_example", password: "password_example") // LoginRequest |  (optional)

// Login
MerchantsAPI.login(xApiKey: xApiKey, loginRequest: loginRequest) { (response, error) in
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
 **loginRequest** | [**LoginRequest**](LoginRequest.md) |  | [optional] 

### Return type

[**Login200Response**](Login200Response.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **me**
```swift
    open class func me(authorization: String? = nil, completion: @escaping (_ data: Me200Response?, _ error: Error?) -> Void)
```

Get Information

Getting Merchant Information

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let authorization = "authorization_example" // String |  (optional)

// Get Information
MerchantsAPI.me(authorization: authorization) { (response, error) in
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

[**Me200Response**](Me200Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerMerchantToken**
```swift
    open class func registerMerchantToken(merchantId: String, authorization: String? = nil, completion: @escaping (_ data: RegisterMerchantToken200Response?, _ error: Error?) -> Void)
```

Register Merchant Token

Register Merchant Token

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let merchantId = "merchantId_example" // String | 
let authorization = "authorization_example" // String |  (optional)

// Register Merchant Token
MerchantsAPI.registerMerchantToken(merchantId: merchantId, authorization: authorization) { (response, error) in
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

[**RegisterMerchantToken200Response**](RegisterMerchantToken200Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerMerchantUser**
```swift
    open class func registerMerchantUser(xApiKey: String? = nil, registerMerchantUsersRequest: RegisterMerchantUsersRequest? = nil, completion: @escaping (_ data: RegisterMerchantUsers200Response?, _ error: Error?) -> Void)
```

Register Merchant User

Register Merchant User

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let xApiKey = "xApiKey_example" // String |  (optional)
let registerMerchantUsersRequest = registerMerchantUsers_request(email: "email_example", merchantId: "merchantId_example", name: "name_example", password: "password_example", phone: "phone_example", role: "role_example") // RegisterMerchantUsersRequest |  (optional)

// Register Merchant User
MerchantsAPI.registerMerchantUser(xApiKey: xApiKey, registerMerchantUsersRequest: registerMerchantUsersRequest) { (response, error) in
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
 **registerMerchantUsersRequest** | [**RegisterMerchantUsersRequest**](RegisterMerchantUsersRequest.md) |  | [optional] 

### Return type

[**RegisterMerchantUsers200Response**](RegisterMerchantUsers200Response.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerMerchantUsers**
```swift
    open class func registerMerchantUsers(authorization: String? = nil, registerMerchantUsersRequest: RegisterMerchantUsersRequest? = nil, completion: @escaping (_ data: RegisterMerchantUsers200Response?, _ error: Error?) -> Void)
```

Register Merchant User

Register Merchant User

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let authorization = "authorization_example" // String |  (optional)
let registerMerchantUsersRequest = registerMerchantUsers_request(email: "email_example", merchantId: "merchantId_example", name: "name_example", password: "password_example", phone: "phone_example", role: "role_example") // RegisterMerchantUsersRequest |  (optional)

// Register Merchant User
MerchantsAPI.registerMerchantUsers(authorization: authorization, registerMerchantUsersRequest: registerMerchantUsersRequest) { (response, error) in
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
 **registerMerchantUsersRequest** | [**RegisterMerchantUsersRequest**](RegisterMerchantUsersRequest.md) |  | [optional] 

### Return type

[**RegisterMerchantUsers200Response**](RegisterMerchantUsers200Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMerchant**
```swift
    open class func updateMerchant(merchantId: String, xApiKey: String? = nil, updateMerchantRequest: UpdateMerchantRequest? = nil, completion: @escaping (_ data: GetMerchant200Response?, _ error: Error?) -> Void)
```

Update merchant

Update merchant

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let merchantId = "merchantId_example" // String | 
let xApiKey = "xApiKey_example" // String |  (optional)
let updateMerchantRequest = updateMerchant_request(amplitudeId: "amplitudeId_example", autoApproveOrderInCore: false, city: "city_example", country: "country_example", domain: "domain_example", gtmId: "gtmId_example", logo: "logo_example", managedByDuna: false, name: "name_example", orderApiPort: 123, orderApiUrl: "orderApiUrl_example", shortName: "shortName_example", statusChangesNotificationUrl: "statusChangesNotificationUrl_example", storefrontBaseUrl: "storefrontBaseUrl_example", storefrontPrivateUrl: "storefrontPrivateUrl_example", timezone: "timezone_example", token: "token_example", useDunaSend: false) // UpdateMerchantRequest |  (optional)

// Update merchant
MerchantsAPI.updateMerchant(merchantId: merchantId, xApiKey: xApiKey, updateMerchantRequest: updateMerchantRequest) { (response, error) in
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
 **xApiKey** | **String** |  | [optional] 
 **updateMerchantRequest** | [**UpdateMerchantRequest**](UpdateMerchantRequest.md) |  | [optional] 

### Return type

[**GetMerchant200Response**](GetMerchant200Response.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

