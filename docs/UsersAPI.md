# UsersAPI

All URIs are relative to *https://staging-apigw.getduna.com:443*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAddress**](UsersAPI.md#createaddress) | **POST** /users/{user_id}/addresses | Crear nueva dirección para el usuario
[**deleteUserCardById**](UsersAPI.md#deleteusercardbyid) | **DELETE** /users/{user_id}/cards/{card_id} | Remove card by identifier
[**deleteUsersAddress**](UsersAPI.md#deleteusersaddress) | **DELETE** /users/{user_id}/addresses/{address_id} | Eliminar dirección
[**deleteUsersUserId**](UsersAPI.md#deleteusersuserid) | **DELETE** /users/{user_id} | Eliminar Usuario
[**editUser**](UsersAPI.md#edituser) | **PATCH** /users/{user_id} | Edit User
[**externalAuthorize**](UsersAPI.md#externalauthorize) | **POST** /users/external-authorize | Iniciar sesión - autorización externa
[**externalAuthorizeRefresh**](UsersAPI.md#externalauthorizerefresh) | **POST** /users/authorize | Actualizar token
[**getUserAddresses**](UsersAPI.md#getuseraddresses) | **GET** /users/{user_id}/addresses | Obtener todas direcciones del usuario
[**getUserCardById**](UsersAPI.md#getusercardbyid) | **GET** /users/{user_id}/cards/{card_id} | Obtain a card by its identifier.
[**getUserCards**](UsersAPI.md#getusercards) | **GET** /users/{user_id}/cards | Get all user cards
[**getUserInformation**](UsersAPI.md#getuserinformation) | **GET** /users/me | Get User Information
[**loginWithOtp**](UsersAPI.md#loginwithotp) | **POST** /users/login | Login con OTP
[**patchUserAddress**](UsersAPI.md#patchuseraddress) | **PATCH** /users/{user_id}/addresses/{address_id} | Actualizar dirección
[**registerUser**](UsersAPI.md#registeruser) | **POST** /users/signup | Register User
[**requestOtp**](UsersAPI.md#requestotp) | **POST** /users/request-code | Enviar código OTP
[**userExists**](UsersAPI.md#userexists) | **GET** /users | Users Exists
[**usersLoginDeviceFingerprintPost**](UsersAPI.md#userslogindevicefingerprintpost) | **POST** /users/login/device-fingerprint | Login User
[**usersRegister**](UsersAPI.md#usersregister) | **POST** /users/register | Registro de usuario


# **createAddress**
```swift
    open class func createAddress(userId: String, xApiKey: String? = nil, createAddressRequest: CreateAddressRequest? = nil, completion: @escaping (_ data: CreateAddress200Response?, _ error: Error?) -> Void)
```

Crear nueva dirección para el usuario

Permite crear una dirección para el usuario

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let userId = "userId_example" // String | 
let xApiKey = "xApiKey_example" // String |  (optional)
let createAddressRequest = create_address_request(additionalDescription: "additionalDescription_example", address1: "address1_example", address2: "address2_example", addressType: "addressType_example", city: "city_example", country: "country_example", firstName: "firstName_example", identityDocument: "identityDocument_example", isBillingAddress: false, isDefault: false, lastName: "lastName_example", lat: 123, lng: 123, phone: "phone_example", stateName: "stateName_example", zipcode: "zipcode_example") // CreateAddressRequest |  (optional)

// Crear nueva dirección para el usuario
UsersAPI.createAddress(userId: userId, xApiKey: xApiKey, createAddressRequest: createAddressRequest) { (response, error) in
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
 **xApiKey** | **String** |  | [optional] 
 **createAddressRequest** | [**CreateAddressRequest**](CreateAddressRequest.md) |  | [optional] 

### Return type

[**CreateAddress200Response**](CreateAddress200Response.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUserCardById**
```swift
    open class func deleteUserCardById(userId: String, cardId: String, xApiKey: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Remove card by identifier

Remove card by identifier

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let userId = "userId_example" // String | 
let cardId = "cardId_example" // String | 
let xApiKey = "xApiKey_example" // String |  (optional)

// Remove card by identifier
UsersAPI.deleteUserCardById(userId: userId, cardId: cardId, xApiKey: xApiKey) { (response, error) in
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
 **xApiKey** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUsersAddress**
```swift
    open class func deleteUsersAddress(userId: String, addressId: String, authorization: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Eliminar dirección

Permite eliminar una dirección del usuario dado su identificador 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let userId = "userId_example" // String | 
let addressId = "addressId_example" // String | 
let authorization = "authorization_example" // String |  (optional)

// Eliminar dirección
UsersAPI.deleteUsersAddress(userId: userId, addressId: addressId, authorization: authorization) { (response, error) in
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
 **addressId** | **String** |  | 
 **authorization** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUsersUserId**
```swift
    open class func deleteUsersUserId(userId: String, xApiKey: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Eliminar Usuario

Permite eliminar un usuario de la red DEUNA.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let userId = "userId_example" // String | 
let xApiKey = "xApiKey_example" // String |  (optional)

// Eliminar Usuario
UsersAPI.deleteUsersUserId(userId: userId, xApiKey: xApiKey) { (response, error) in
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
 **xApiKey** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **editUser**
```swift
    open class func editUser(userId: String, registerUserRequest: RegisterUserRequest, xApiKey: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Edit User

Editing User

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let userId = "userId_example" // String | 
let registerUserRequest = registerUser_request(email: "email_example", firstName: "firstName_example", identityDocument: "identityDocument_example", lastName: "lastName_example", phone: "phone_example") // RegisterUserRequest | Ejemplo de requestBody
let xApiKey = "xApiKey_example" // String |  (optional)

// Edit User
UsersAPI.editUser(userId: userId, registerUserRequest: registerUserRequest, xApiKey: xApiKey) { (response, error) in
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
 **registerUserRequest** | [**RegisterUserRequest**](RegisterUserRequest.md) | Ejemplo de requestBody | 
 **xApiKey** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **externalAuthorize**
```swift
    open class func externalAuthorize(xApiKey: String? = nil, authorization: String? = nil, completion: @escaping (_ data: ExternalAuthorize200Response?, _ error: Error?) -> Void)
```

Iniciar sesión - autorización externa

Entregar de forma segura un token autorizado por DEUNA ONE y el cliente.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let xApiKey = "xApiKey_example" // String |  (optional)
let authorization = "authorization_example" // String |  (optional)

// Iniciar sesión - autorización externa
UsersAPI.externalAuthorize(xApiKey: xApiKey, authorization: authorization) { (response, error) in
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

### Return type

[**ExternalAuthorize200Response**](ExternalAuthorize200Response.md)

### Authorization

[Authorization](../README.md#Authorization), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **externalAuthorizeRefresh**
```swift
    open class func externalAuthorizeRefresh(xApiKey: String? = nil, authorization: String? = nil, completion: @escaping (_ data: ExternalAuthorizeRefresh200Response?, _ error: Error?) -> Void)
```

Actualizar token

Obtener un nuevo token de forma segura a partir de un refresh_token autorizado por DEUNA ONE y el cliente.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let xApiKey = "xApiKey_example" // String |  (optional)
let authorization = "authorization_example" // String |  (optional)

// Actualizar token
UsersAPI.externalAuthorizeRefresh(xApiKey: xApiKey, authorization: authorization) { (response, error) in
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

### Return type

[**ExternalAuthorizeRefresh200Response**](ExternalAuthorizeRefresh200Response.md)

### Authorization

[Authorization](../README.md#Authorization), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserAddresses**
```swift
    open class func getUserAddresses(userId: String, authorization: String? = nil, completion: @escaping (_ data: GetUserAddresses200Response?, _ error: Error?) -> Void)
```

Obtener todas direcciones del usuario



### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let userId = "userId_example" // String | 
let authorization = "authorization_example" // String |  (optional)

// Obtener todas direcciones del usuario
UsersAPI.getUserAddresses(userId: userId, authorization: authorization) { (response, error) in
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

[**GetUserAddresses200Response**](GetUserAddresses200Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserCardById**
```swift
    open class func getUserCardById(userId: String, cardId: String, xApiKey: String? = nil, completion: @escaping (_ data: GetUserCardById200Response?, _ error: Error?) -> Void)
```

Obtain a card by its identifier.

Obtain a card by its identifier.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let userId = "userId_example" // String | 
let cardId = "cardId_example" // String | 
let xApiKey = "xApiKey_example" // String |  (optional)

// Obtain a card by its identifier.
UsersAPI.getUserCardById(userId: userId, cardId: cardId, xApiKey: xApiKey) { (response, error) in
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
 **xApiKey** | **String** |  | [optional] 

### Return type

[**GetUserCardById200Response**](GetUserCardById200Response.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserCards**
```swift
    open class func getUserCards(userId: String, xApiKey: String? = nil, completion: @escaping (_ data: GetUserCards200Response?, _ error: Error?) -> Void)
```

Get all user cards

Get all user cards

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let userId = "userId_example" // String | 
let xApiKey = "xApiKey_example" // String |  (optional)

// Get all user cards
UsersAPI.getUserCards(userId: userId, xApiKey: xApiKey) { (response, error) in
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
 **xApiKey** | **String** |  | [optional] 

### Return type

[**GetUserCards200Response**](GetUserCards200Response.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserInformation**
```swift
    open class func getUserInformation(xApiKey: String? = nil, authorization: String? = nil, completion: @escaping (_ data: GetUserInformation200Response?, _ error: Error?) -> Void)
```

Get User Information

Get User Information

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let xApiKey = "xApiKey_example" // String |  (optional)
let authorization = "authorization_example" // String |  (optional)

// Get User Information
UsersAPI.getUserInformation(xApiKey: xApiKey, authorization: authorization) { (response, error) in
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

### Return type

[**GetUserInformation200Response**](GetUserInformation200Response.md)

### Authorization

[Authorization](../README.md#Authorization), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **loginWithOtp**
```swift
    open class func loginWithOtp(loginWithOtpRequest: LoginWithOtpRequest? = nil, completion: @escaping (_ data: LoginWithOtp200Response?, _ error: Error?) -> Void)
```

Login con OTP

Permite iniciar sesión con el código OTP enviado al correo o al teléfono del usuario. **Esto se debe especificar en el query param.** 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let loginWithOtpRequest = login_with_otp_request(email: "email_example", otp: "otp_example") // LoginWithOtpRequest |  (optional)

// Login con OTP
UsersAPI.loginWithOtp(loginWithOtpRequest: loginWithOtpRequest) { (response, error) in
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
 **loginWithOtpRequest** | [**LoginWithOtpRequest**](LoginWithOtpRequest.md) |  | [optional] 

### Return type

[**LoginWithOtp200Response**](LoginWithOtp200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchUserAddress**
```swift
    open class func patchUserAddress(userId: String, addressId: String, authorization: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Actualizar dirección

Permite actualizar los datos de una dirección mediante el id del mismo

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let userId = "userId_example" // String | 
let addressId = "addressId_example" // String | 
let authorization = "authorization_example" // String |  (optional)

// Actualizar dirección
UsersAPI.patchUserAddress(userId: userId, addressId: addressId, authorization: authorization) { (response, error) in
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
 **addressId** | **String** |  | 
 **authorization** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerUser**
```swift
    open class func registerUser(registerUserRequest: RegisterUserRequest, xApiKey: String? = nil, completion: @escaping (_ data: RegisterUser200Response?, _ error: Error?) -> Void)
```

Register User

Allow register user

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let registerUserRequest = registerUser_request(email: "email_example", firstName: "firstName_example", identityDocument: "identityDocument_example", lastName: "lastName_example", phone: "phone_example") // RegisterUserRequest | Ejemplo de requestBody
let xApiKey = "xApiKey_example" // String |  (optional)

// Register User
UsersAPI.registerUser(registerUserRequest: registerUserRequest, xApiKey: xApiKey) { (response, error) in
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
 **registerUserRequest** | [**RegisterUserRequest**](RegisterUserRequest.md) | Ejemplo de requestBody | 
 **xApiKey** | **String** |  | [optional] 

### Return type

[**RegisterUser200Response**](RegisterUser200Response.md)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestOtp**
```swift
    open class func requestOtp(requestOtpRequest: RequestOtpRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Enviar código OTP

Enviar el OTP (One time password) al correo o teléfono del usuario. **Esto se debe especificar en el query param.**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let requestOtpRequest = request_otp_request(email: "email_example") // RequestOtpRequest |  (optional)

// Enviar código OTP
UsersAPI.requestOtp(requestOtpRequest: requestOtpRequest) { (response, error) in
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
 **requestOtpRequest** | [**RequestOtpRequest**](RequestOtpRequest.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userExists**
```swift
    open class func userExists(xApiKey: String? = nil, email: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Users Exists

Get if user exists

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let xApiKey = "xApiKey_example" // String |  (optional)
let email = "email_example" // String |  (optional)

// Users Exists
UsersAPI.userExists(xApiKey: xApiKey, email: email) { (response, error) in
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
 **email** | **String** |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersLoginDeviceFingerprintPost**
```swift
    open class func usersLoginDeviceFingerprintPost(xApiKey: String? = nil, authorization: String? = nil, completion: @escaping (_ data: UsersLoginDeviceFingerprintPost200Response?, _ error: Error?) -> Void)
```

Login User

Login User

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let xApiKey = "xApiKey_example" // String |  (optional)
let authorization = "authorization_example" // String |  (optional)

// Login User
UsersAPI.usersLoginDeviceFingerprintPost(xApiKey: xApiKey, authorization: authorization) { (response, error) in
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

### Return type

[**UsersLoginDeviceFingerprintPost200Response**](UsersLoginDeviceFingerprintPost200Response.md)

### Authorization

[Authorization](../README.md#Authorization), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersRegister**
```swift
    open class func usersRegister(xApiKey: String? = nil, authorization: String? = nil, usersRegisterRequest: UsersRegisterRequest? = nil, completion: @escaping (_ data: UsersRegister201Response?, _ error: Error?) -> Void)
```

Registro de usuario

Registrar un usuario de tu comercio, este usuario una vez registrado pertenecera a la Red DEUNA

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DeUnaSdk

let xApiKey = "xApiKey_example" // String |  (optional)
let authorization = "authorization_example" // String |  (optional)
let usersRegisterRequest = users_register_request(email: "email_example", firstName: "firstName_example", identityDocument: "identityDocument_example", lastName: "lastName_example", phone: "phone_example") // UsersRegisterRequest |  (optional)

// Registro de usuario
UsersAPI.usersRegister(xApiKey: xApiKey, authorization: authorization, usersRegisterRequest: usersRegisterRequest) { (response, error) in
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
 **usersRegisterRequest** | [**UsersRegisterRequest**](UsersRegisterRequest.md) |  | [optional] 

### Return type

[**UsersRegister201Response**](UsersRegister201Response.md)

### Authorization

[Authorization](../README.md#Authorization), [X-Api-Key](../README.md#X-Api-Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

