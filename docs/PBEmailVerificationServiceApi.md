# PBEmailVerificationServiceApi

All URIs are relative to *https://api.precisely.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**validateEmailAddress**](PBEmailVerificationServiceApi.md#validateemailaddress) | **POST** /emailverification/v1/validateemailaddress/results.json | ValidateEmailAddress


# **validateEmailAddress**
```objc
-(NSNumber*) validateEmailAddressWithInputEmailAddress: (PBValidateEmailAddressAPIRequest*) inputEmailAddress
        completionHandler: (void (^)(PBValidateEmailAddressAPIResponse* output, NSError* error)) handler;
```

ValidateEmailAddress

Confirm that your customer’s mailing address exists and that mail and packages can be delivered to it.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBValidateEmailAddressAPIRequest* inputEmailAddress = [[PBValidateEmailAddressAPIRequest alloc] init]; // 

PBEmailVerificationServiceApi*apiInstance = [[PBEmailVerificationServiceApi alloc] init];

// ValidateEmailAddress
[apiInstance validateEmailAddressWithInputEmailAddress:inputEmailAddress
          completionHandler: ^(PBValidateEmailAddressAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBEmailVerificationServiceApi->validateEmailAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputEmailAddress** | [**PBValidateEmailAddressAPIRequest***](PBValidateEmailAddressAPIRequest*.md)|  | 

### Return type

[**PBValidateEmailAddressAPIResponse***](PBValidateEmailAddressAPIResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

