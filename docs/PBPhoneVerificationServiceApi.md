# PBPhoneVerificationServiceApi

All URIs are relative to *https://api.precisely.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**phoneVerification**](PBPhoneVerificationServiceApi.md#phoneverification) | **GET** /phoneverification/v1/phoneverification | Phone verification.


# **phoneVerification**
```objc
-(NSNumber*) phoneVerificationWithPhoneNumber: (NSString*) phoneNumber
    includeNetworkInfo: (NSString*) includeNetworkInfo
        completionHandler: (void (^)(PBPhoneVerification* output, NSError* error)) handler;
```

Phone verification.

This service accepts a phone number as input and returns details distinguishing landline and wireless numbers and also checks if a wireless number can be located.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* phoneNumber = @"phoneNumber_example"; // E.164 formatted phone number. Accepts digits only. Country Code (1) optional for USA & CAN.
NSString* includeNetworkInfo = @"includeNetworkInfo_example"; // Y or N (default is Y) – if it is N, then network/carrier details will not be added in the response. (optional)

PBPhoneVerificationServiceApi*apiInstance = [[PBPhoneVerificationServiceApi alloc] init];

// Phone verification.
[apiInstance phoneVerificationWithPhoneNumber:phoneNumber
              includeNetworkInfo:includeNetworkInfo
          completionHandler: ^(PBPhoneVerification* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBPhoneVerificationServiceApi->phoneVerification: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phoneNumber** | **NSString***| E.164 formatted phone number. Accepts digits only. Country Code (1) optional for USA &amp; CAN. | 
 **includeNetworkInfo** | **NSString***| Y or N (default is Y) – if it is N, then network/carrier details will not be added in the response. | [optional] 

### Return type

[**PBPhoneVerification***](PBPhoneVerification.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

