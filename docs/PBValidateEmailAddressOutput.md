# PBValidateEmailAddressOutput

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**userFields** | [**NSArray&lt;PBValidateMailingAddressInputRowUserFields&gt;***](PBValidateMailingAddressInputRowUserFields.md) | These fields are returned, unmodified, in the user_fields section of the response. | [optional] 
**eMAIL** | **NSString*** | The email address submitted for verification. | [optional] 
**fINDING** | **NSString*** | One character code indicating the validity of the submitted email address. | [optional] 
**cOMMENT** | **NSString*** | The comment string pertaining to the result of the submitted email address. | [optional] 
**cOMMENTCODE** | **NSString*** | A short code which maps to each returned COMMENT field value. | [optional] 
**sUGGEMAIL** | **NSString*** | Suggested correction for submitted email address, if found. A suggestion will only be provided if it is valid and SafeToDeliver. | [optional] 
**sUGGCOMMENT** | **NSString*** | This field contains suggestion not SafeToDeliver when ValidateEmailAddress corrected the address and the corrected version of the email address failed one or more SafeToDeliver process checks. | [optional] 
**eRRORRESPONSE** | **NSString*** | Pre-formatted response intended to be provided to user. | [optional] 
**eRROR** | **NSString*** | Field reserved for special features only. | [optional] 
**status** | **NSString*** |  | [optional] 
**statusCode** | **NSString*** |  | [optional] 
**statusDescription** | **NSString*** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


