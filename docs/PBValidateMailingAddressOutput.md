# PBValidateMailingAddressOutput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userFields** | [**NSArray&lt;PBValidateMailingAddressInputRowUserFields&gt;***](PBValidateMailingAddressInputRowUserFields.md) | These fields are returned, unmodified, in the user_fields section of the response. | [optional] 
**addressLine1** | **NSString*** | The first line of the validated address. | [optional] 
**addressLine2** | **NSString*** | The second line of the validated address. | [optional] 
**firmName** | **NSString*** | The validated firm or company name. | [optional] 
**city** | **NSString*** | The validated city name. | [optional] 
**postalCode** | **NSString*** | The validated ZIP Code or postal code. | [optional] 
**country** | **NSString*** | The country name in English. | [optional] 
**stateProvince** | **NSString*** | The validated state or province abbreviation. | [optional] 
**blockAddress** | **NSString*** | The formatted address, as it would appear on a physical mail piece. | [optional] 
**additionalInputData** | **NSString*** | Input data not used by the address validation process. | [optional] 
**postalCodeBase** | **NSString*** | The 5-digit ZIP Code. | [optional] 
**postalCodeAddOn** | **NSString*** | The 4-digit add-on part of the ZIP Code. | [optional] 
**status** | **NSString*** | Reports the success or failure of the match attempt. | [optional] 
**statusCode** | **NSString*** | Reason for failure, if there is one. | [optional] 
**statusDescription** | **NSString*** | Description of the problem, if there is one. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


