# GetOrder200ResponseOrder

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billingAddress** | [**OrderToken200ResponseOrderBillingAddress**](OrderToken200ResponseOrderBillingAddress.md) |  | [optional] 
**cashChange** | **Double** | Cambio solicitado por el cliente | [optional] 
**currency** | **String** | Representa la moneda de uso del comercio en 3 caracteres bajo la ISO 3166-1 alpha-3 | [optional] 
**discounts** | Set<OrderToken200ResponseOrderDiscountsInner> | Son los descuentos aplicados en la orden | [optional] 
**displayItemsTotalAmount** | **String** | Es el costo total de todos los items de la orden que se mostrara en el checkout | [optional] 
**displayShippingAmount** | **String** | Es el costo total del envío de la orden que se mostrara en el checkout. | [optional] 
**displayShippingTaxAmount** | **String** | Es la visualización del monto total de los **impuestos** del envío aplicados en la orden que aparece en el checkout. | [optional] 
**displaySubTotal** | **String** | Es el subtotal de la compra, que comprende la suma de items_total_amount y shipping_amount que se mostrara en el checkout. | [optional] 
**displayTaxAmount** | **String** | Es el monto total de los **impuestos** aplicados en la orden que aparece en el checkout. | [optional] 
**displayTotalAmount** | **String** | Es el total de la orden esto comprende la suma del total de *items_total_amount*, *shipping_amount* y *tax_amount* que se mostrara en el checkout. | [optional] 
**displayTotalDiscount** | **String** | Monto de descuento total de la orden que se mostrara en el checkout | [optional] 
**displayTotalTaxAmount** | **String** | Es la visualizacion total de la orden esto comprende la suma del total de *shipping_tax_amount* y *tax_amount* que se mostrara en el checkout. | [optional] 
**giftCard** | [OrderTokenRequestOrderGiftCardInner] | Configuración de las tarjetas de regalo | [optional] 
**items** | [OrderToken200ResponseOrderItemsInner] | Detalle de los productos que se encuentran en la orden | [optional] 
**itemsTotalAmount** | **Double** | Es el costo total de todos los items de la orden. | [optional] 
**metadata** | [**OrderToken200ResponseOrderMetadata**](OrderToken200ResponseOrderMetadata.md) |  | [optional] 
**orderId** | **String** | Representa al identificador de la orden dentro del comercio | [optional] 
**payment** | [**OrderTokenRequestOrderPayment**](OrderTokenRequestOrderPayment.md) |  | [optional] 
**paymentLink** | **String** | Es el link de pago generado al tokenizar la orden para efectuar el pago | [optional] 
**redirectUrl** | **String** | Url donde se redireccionara al terminar la compra | [optional] 
**scheduledAt** | **String** | Fecha de entrega | [optional] 
**shipping** | [**OrderToken200ResponseOrderShipping**](OrderToken200ResponseOrderShipping.md) |  | [optional] 
**shippingAddress** | [**OrderTokenRequestOrderShippingAddress**](OrderTokenRequestOrderShippingAddress.md) |  | [optional] 
**shippingAmount** | **Double** | Es el costo total del envío de la orden. | [optional] 
**shippingMethod** | [**OrderTokenRequestOrderShippingMethod**](OrderTokenRequestOrderShippingMethod.md) |  | [optional] 
**shippingMethods** | **[AnyCodable]** | Métodos de envío | [optional] 
**shippingOptions** | [**GetOrder200ResponseOrderShippingOptions**](GetOrder200ResponseOrderShippingOptions.md) |  | [optional] 
**shippingTaxAmount** | **Int64** | Es el monto total de los **impuestos** del envío aplicados en la orden que aparece en el checkout. | [optional] 
**status** | **String** | Estado de la orden  | [optional] 
**storeCode** | **String** | Es el código de la tienda, por defecto el código de la tienda es all | [optional] 
**subTotal** | **Double** | Es el subtotal de la compra, que comprende la suma de items_total_amount y shipping_amount. | [optional] [default to 4470]
**taxAmount** | **Double** | Es el monto total de los **impuestos** aplicados en la orden. | [optional] 
**timezone** | **String** | Representa la zona horario de tu comercio | [optional] 
**totalAmount** | **Double** | Es el total de la orden esto comprende la suma del total de *items_total_amount*, *shipping_amount* y *tax_amount*. | [optional] 
**totalDiscount** | **Double** | Monto de descuento total de la orden | [optional] 
**totalTaxAmount** | **Int64** | Es el total de la orden esto comprende la suma del total de *shipping_tax_amount* y *tax_amount* que se mostrara en el checkout. | [optional] 
**userInstructions** | **String** | Son las instrucciones especiales que da el cliente en su compra, este valor se sustituye por el comentario en caso que el cliente lo coloque dentro del *checkout* | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


