# OrderTokenRequestOrder

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billingAddress** | [**OrderTokenRequestOrderBillingAddress**](OrderTokenRequestOrderBillingAddress.md) |  | [optional] 
**cashChange** | **Double** | Cambio solicitado por el cliente | [optional] 
**currency** | **String** | Representa la moneda de uso del comercio en 3 caracteres bajo la ISO 3166-1 alpha-3 | 
**discounts** | Set<OrderTokenRequestOrderDiscountsInner> | Son los descuentos aplicados en la orden | [optional] 
**giftCard** | [OrderTokenRequestOrderGiftCardInner] | Configuración de las tarjetas de regalo | [optional] 
**items** | Set<OrderTokenRequestOrderItemsInner> | Detalle de los productos que se encuentran en la orden | [optional] 
**metadata** | [**OrderTokenRequestOrderMetadata**](OrderTokenRequestOrderMetadata.md) |  | [optional] 
**orderId** | **String** | Representa al identificador de la orden dentro del comercio | 
**payment** | [**OrderTokenRequestOrderPayment**](OrderTokenRequestOrderPayment.md) |  | [optional] 
**redirectUrl** | **String** | URL de redirección cuando se completa la orden | [optional] 
**scheduledAt** | **String** | Fecha de entrega | [optional] 
**shipping** | [**OrderTokenRequestOrderShipping**](OrderTokenRequestOrderShipping.md) |  | [optional] 
**shippingAddress** | [**OrderTokenRequestOrderShippingAddress**](OrderTokenRequestOrderShippingAddress.md) |  | [optional] 
**shippingMethod** | [**OrderTokenRequestOrderShippingMethod**](OrderTokenRequestOrderShippingMethod.md) |  | [optional] 
**shippingMethods** | **[AnyCodable]** | Métodos de envío | [optional] 
**shippingOptions** | [**OrderTokenRequestOrderShippingOptions**](OrderTokenRequestOrderShippingOptions.md) |  | [optional] 
**status** | **String** | Estado de la orden  | [optional] 
**storeCode** | **String** | El **store_code** corresponde al código de una tienda, es decir, el comercio podría tener múltiples tiendas (sucursales) para los cuales el **store_code** sirve como identificar de las mismas, en caso de ser un comercio sin tiendas *(sucursales)* el valor por defecto deberá ser ***all***. &lt;br&gt; **Nota:** Este valor es muy importante dado que las configuraciones del Admin serán aplicados según el código de las tiendas o **store_code** | 
**subTotal** | **Double** | Es el monto del subtotal de la compra. Este monto es sin impuestos. Deberá estar expresado en centavos, por ejemplo si el monto es $10.00 estará representado como 1000 lo que significa 10 dólares 0 centavos. | 
**timezone** | **String** | Representa la zona horario del comercio. | [optional] 
**totalAmount** | **Double** | Es el total de la orden esto comprende la suma del total de sub_total y total_tax_amount. Deberá estar expresado en centavos, por ejemplo si el monto es $10.00 estará representado como 1000 lo que significa 10 dólares 0 centavos. | 
**totalDiscount** | **Double** | Es el total de los descuentos de la orden. Deberá estar expresado en centavos, por ejemplo si el monto es $10.00 estará representado como 1000 lo que significa 10 dólares 0 centavos. | [optional] 
**totalTaxAmount** | **Double** | Es el total de los impuestos de la orden. Deberá estar expresado en centavos, por ejemplo si el monto es $10.00 estará representado como 1000 lo que significa 10 dólares 0 centavos. | 
**userInstructions** | **String** | Son las instrucciones especiales que da el cliente en su compra, este valor se sustituye por el comentario en caso que el cliente lo coloque dentro del *checkout* | [optional] 
**webhookUrls** | [**OrderTokenRequestOrderWebhookUrls**](OrderTokenRequestOrderWebhookUrls.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


