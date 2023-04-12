# PBPhoneVerificationServiceApi

All URIs are relative to *https://api.precisely.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**validatephonenumber**](PBPhoneVerificationServiceApi.md#validatephonenumber) | **POST** /phoneverification/v2/validatephonenumber/results.json | Phone verification.


# **validatephonenumber**
```objc
-(NSURLSessionTask*) validatephonenumberWithValidatePhoneNumberAPIRequest: (PBValidatePhoneNumberAPIRequest*) validatePhoneNumberAPIRequest
        completionHandler: (void (^)(PBPhoneVerification* output, NSError* error)) handler;
```

Phone verification.

This service accepts a phone number as input and returns details distinguishing landline and wireless numbers.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBValidatePhoneNumberAPIRequest* validatePhoneNumberAPIRequest = [[PBValidatePhoneNumberAPIRequest alloc] init]; // 

PBPhoneVerificationServiceApi*apiInstance = [[PBPhoneVerificationServiceApi alloc] init];

// Phone verification.
[apiInstance validatephonenumberWithValidatePhoneNumberAPIRequest:validatePhoneNumberAPIRequest
          completionHandler: ^(PBPhoneVerification* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBPhoneVerificationServiceApi->validatephonenumber: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validatePhoneNumberAPIRequest** | [**PBValidatePhoneNumberAPIRequest***](PBValidatePhoneNumberAPIRequest.md)|  | 

### Return type

[**PBPhoneVerification***](PBPhoneVerification.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

