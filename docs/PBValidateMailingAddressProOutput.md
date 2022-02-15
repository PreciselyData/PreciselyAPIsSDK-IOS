# PBValidateMailingAddressProOutput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userFields** | [**NSArray&lt;PBGetPostalCodesAPIOutputUserFields&gt;***](PBGetPostalCodesAPIOutputUserFields.md) | These fields are returned, unmodified, in the user_fields section of the response. | [optional] 
**addressLine1** | **NSString*** | The first line of the validated address. | [optional] 
**addressLine2** | **NSString*** | The second line of the validated address. | [optional] 
**firmName** | **NSString*** | The validated firm or company name. | [optional] 
**changeScore** | **NSString*** | A value of 0 and 100 that reflects how much the address has changed to make it valid. | [optional] 
**locality** | **NSString*** | Generally a locality is a village in rural areas or it may be a suburb in urban areas. | [optional] 
**suburb** | **NSString*** | The suburb name. | [optional] 
**addressType** | **NSString*** | A single letter code that indicates the type of address. | [optional] 
**deliverability** | **NSString*** | An estimate of confidence that an item mailed or shipped to this address would be successfully delivered. | [optional] 
**addressQuality** | **NSString*** | A two character code indicating overall quality of the resulting address. | [optional] 
**couldNotValidate** | **NSString*** | Mentions the address component that could not be validated, in case no match is found. | [optional] 
**city** | **NSString*** | The validated city name. | [optional] 
**postalCode** | **NSString*** | The validated ZIP Code or postal code. | [optional] 
**country** | **NSString*** | The country in the format determined by what you selected. | [optional] 
**stateProvince** | **NSString*** | The validated state or province abbreviation. | [optional] 
**blockAddress** | **NSString*** | The formatted address, as it would appear on a physical mail piece. | [optional] 
**additionalInputData** | **NSString*** | Input data that could not be matched to a particular address component. | [optional] 
**postalCodeBase** | **NSString*** | The 5-digit ZIP Code. | [optional] 
**postalCodeAddOn** | **NSString*** | The 4-digit add-on part of the ZIP Code. | [optional] 
**status** | **NSString*** | Reports the success or failure of the match attempt. | [optional] 
**statusCode** | **NSString*** | Reason for failure, if there is one. | [optional] 
**statusDescription** | **NSString*** | Description of the problem, if there is one. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


