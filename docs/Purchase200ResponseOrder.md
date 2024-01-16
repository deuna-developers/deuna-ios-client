# Purchase200ResponseOrder

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billingAddress** | [**PurchaseRequestBillingAddress**](PurchaseRequestBillingAddress.md) |  | [optional] 
**cashChange** | **Double** | Cambio solicitado por el cliente | [optional] 
**currency** | **String** | Representa la moneda de uso del comercio en 3 caracteres bajo la ISO 3166-1 alpha-3 | [optional] 
**discounts** | **Set<AnyCodable>** | Son los descuentos aplicados en la orden | [optional] 
**displayItemsTotalAmount** | **String** | Es el costo total de todos los items de la orden que se mostrara en el checkout | [optional] 
**displayShippingAmount** | **String** | Es el costo total del envío de la orden que se mostrara en el checkout. | [optional] 
**displaySubTotal** | **String** | Es el subtotal de la compra, que comprende la suma de items_total_amount y shipping_amount que se mostrara en el checkout. | [optional] 
**displayTaxAmount** | **String** | Es el monto total de los **impuestos** aplicados en la orden que aparece en el checkout. | [optional] 
**displayTotalAmount** | **String** | Es el total de la orden esto comprende la suma del total de *items_total_amount*, *shipping_amount* y *tax_amount* que se mostrara en el checkout. | [optional] 
**displayTotalDiscount** | **String** | Monto de descuento total de la orden que se mostrara en el checkout | [optional] 
**giftCard** | **[AnyCodable]** | tarjeta de regalo | [optional] 
**items** | [Purchase200ResponseOrderItemsInner] | Detalle de los productos que se encuentran en la orden | [optional] 
**itemsTotalAmount** | **Double** | Es el costo total de todos los items de la orden. | [optional] 
**metadata** | [**OrderToken200ResponseOrderMetadata**](OrderToken200ResponseOrderMetadata.md) |  | [optional] 
**orderId** | **String** | Representa al identificador de la orden dentro del comercio | [optional] 
**payment** | [**Purchase200ResponseOrderPayment**](Purchase200ResponseOrderPayment.md) |  | [optional] 
**paymentLink** | **String** | Es el link de pago generado al tokenizar la orden para efectuar el pago | [optional] 
**redirectUrl** | **String** | Url donde se redireccionara al terminar la compra | [optional] 
**scheduledAt** | **String** | Fecha de entrega | [optional] 
**shippingAddress** | [**OrderTokenRequestOrderShippingAddress**](OrderTokenRequestOrderShippingAddress.md) |  | [optional] 
**shippingAmount** | **Double** | Es el costo total del envío de la orden. | [optional] 
**shippingMethods** | **[AnyCodable]** | Métodos de envío | [optional] 
**shippingOptions** | **AnyCodable** | Son los métodos de envío disponibles de la orden, actualmente tenemos delivery, pickup y dinein | [optional] 
**status** | **String** | Estado de la orden  | [optional] 
**storeCode** | **String** | Es el código de la tienda, por defecto el código de la tienda es all | [optional] 
**subTotal** | **Double** | Es el subtotal de la compra, que comprende la suma de items_total_amount y shipping_amount. | [optional] 
**taxAmount** | **Double** | Es el monto total de los **impuestos** aplicados en la orden. | [optional] 
**timezone** | **String** | Representa la zona horario de tu comercio | [optional] 
**totalAmount** | **Double** | Es el total de la orden esto comprende la suma del total de *items_total_amount*, *shipping_amount* y *tax_amount*. | [optional] 
**totalDiscount** | **Double** | Monto de descuento total de la orden | [optional] 
**userInstructions** | **String** | Son las instrucciones especiales que da el cliente en su compra, este valor se sustituye por el comentario en caso que el cliente lo coloque dentro del *checkout* | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


