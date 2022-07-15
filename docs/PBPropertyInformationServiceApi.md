# PBPropertyInformationServiceApi

All URIs are relative to *https://api.precisely.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPropertyAttributesByAddress**](PBPropertyInformationServiceApi.md#getpropertyattributesbyaddress) | **GET** /property/v2/attributes/byaddress | PropertyV2 Attributes By Address.
[**getPropertyAttributesByAddressBatch**](PBPropertyInformationServiceApi.md#getpropertyattributesbyaddressbatch) | **POST** /property/v2/attributes/byaddress | PropertyV2 Attributes By Address Batch.


# **getPropertyAttributesByAddress**
```objc
-(NSNumber*) getPropertyAttributesByAddressWithAddress: (NSString*) address
    attributes: (NSString*) attributes
        completionHandler: (void (^)(PBPropertyInfoResponse* output, NSError* error)) handler;
```

PropertyV2 Attributes By Address.

GetPropertyAttributesbyAddress Endpoint will take address as an input and will return key property attributes in response. Optionally user will have the option to filter the attributes and will pay for only returned attributes.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // free form address text (optional)
NSString* attributes = @"attributes_example"; // Case-insensitive comma separated values of property attributes. Response will contain only the input attributes. (optional)

PBPropertyInformationServiceApi*apiInstance = [[PBPropertyInformationServiceApi alloc] init];

// PropertyV2 Attributes By Address.
[apiInstance getPropertyAttributesByAddressWithAddress:address
              attributes:attributes
          completionHandler: ^(PBPropertyInfoResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBPropertyInformationServiceApi->getPropertyAttributesByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| free form address text | [optional] 
 **attributes** | **NSString***| Case-insensitive comma separated values of property attributes. Response will contain only the input attributes. | [optional] 

### Return type

[**PBPropertyInfoResponse***](PBPropertyInfoResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPropertyAttributesByAddressBatch**
```objc
-(NSNumber*) getPropertyAttributesByAddressBatchWithBody: (PBPropertyInfoAddressRequest*) body
        completionHandler: (void (^)(PBPropertyInfoResponses* output, NSError* error)) handler;
```

PropertyV2 Attributes By Address Batch.

GetPropertyAttributesbyAddressBatch Endpoint will take the list of addresses as an input and will return key property attributes for the given addresses in response. Optionally user will have the option to filter the attributes and will pay for only returned attributes.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBPropertyInfoAddressRequest* body = [[PBPropertyInfoAddressRequest alloc] init]; //  (optional)

PBPropertyInformationServiceApi*apiInstance = [[PBPropertyInformationServiceApi alloc] init];

// PropertyV2 Attributes By Address Batch.
[apiInstance getPropertyAttributesByAddressBatchWithBody:body
          completionHandler: ^(PBPropertyInfoResponses* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBPropertyInformationServiceApi->getPropertyAttributesByAddressBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBPropertyInfoAddressRequest***](PBPropertyInfoAddressRequest*.md)|  | [optional] 

### Return type

[**PBPropertyInfoResponses***](PBPropertyInfoResponses.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

