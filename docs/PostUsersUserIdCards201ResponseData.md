# PostUsersUserIdCards201ResponseData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cardHolder** | **String** | Nombre del tarjetahabiente | [optional] 
**cardHolderDni** | **String** | Número de identificación del tarjetahabiente | [optional] 
**company** | **String** | Compañia que emite la tarjeta | [optional] 
**createdAt** | **String** | Fecha en que fue creada la tarjeta  (UTC) | [optional] 
**deletedAt** | **String** | En caso de que el usuario elimine una tarjeta, se le da de baja con la fecha y se destruye el token de la tarjeta esta se manteniene para fines financieron y legales | [optional] 
**expirationDate** | **String** | Fecha de expiración | [optional] 
**firstSix** | **String** | Primero 6 dígitos de la tarjeta | [optional] 
**id** | **String** | Identificador único de la tarjeta | [optional] 
**lastFour** | **String** | Últimos 4 dígitos de la tarjeta | [optional] 
**updatedAt** | **String** | Fecha de modificacion de la tarjeta  (UTC) | [optional] 
**userId** | **String** | Identificador del usuario | [optional] 
**verifiedAt** | **String** | Fecha de verificación de la tarjeta (UTC) | [optional] 
**verifiedBy** | **String** | Describe el flujo por el cual verificó la tarjeta este puede ser por card_verifier,payment, empty string tarjeta no verificada | [optional] 
**verifiedWithTransactionId** | **String** | Identificador de la transacción que verificó la tarjeta | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


