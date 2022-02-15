# PBPropertyInformationServiceApi

All URIs are relative to *https://api.precisely.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getParcelBoundaryByAddress**](PBPropertyInformationServiceApi.md#getparcelboundarybyaddress) | **GET** /property/v1/parcelboundary/byaddress | Get Parcel Boundary By Address
[**getParcelBoundaryByLocation**](PBPropertyInformationServiceApi.md#getparcelboundarybylocation) | **GET** /property/v1/parcelboundary/bylocation | Get Parcel Boundary By Location
[**getPropertyAttributesByAddress**](PBPropertyInformationServiceApi.md#getpropertyattributesbyaddress) | **GET** /property/v2/attributes/byaddress | PropertyV2 Attributes By Address.
[**getPropertyAttributesByAddressBatch**](PBPropertyInformationServiceApi.md#getpropertyattributesbyaddressbatch) | **POST** /property/v2/attributes/byaddress | PropertyV2 Attributes By Address Batch.


# **getParcelBoundaryByAddress**
```objc
-(NSURLSessionTask*) getParcelBoundaryByAddressWithAddress: (NSString*) address
        completionHandler: (void (^)(PBParcelBoundary* output, NSError* error)) handler;
```

Get Parcel Boundary By Address

Accepts address as input and returns property parcel boundary around that address.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // free form address text

PBPropertyInformationServiceApi*apiInstance = [[PBPropertyInformationServiceApi alloc] init];

// Get Parcel Boundary By Address
[apiInstance getParcelBoundaryByAddressWithAddress:address
          completionHandler: ^(PBParcelBoundary* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBPropertyInformationServiceApi->getParcelBoundaryByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| free form address text | 

### Return type

[**PBParcelBoundary***](PBParcelBoundary.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getParcelBoundaryByLocation**
```objc
-(NSURLSessionTask*) getParcelBoundaryByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
        completionHandler: (void (^)(PBParcelBoundary* output, NSError* error)) handler;
```

Get Parcel Boundary By Location

Accepts latitude/longitude as input and returns property parcel boundary around that location.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of Location
NSString* latitude = @"latitude_example"; // Latitude of Location

PBPropertyInformationServiceApi*apiInstance = [[PBPropertyInformationServiceApi alloc] init];

// Get Parcel Boundary By Location
[apiInstance getParcelBoundaryByLocationWithLongitude:longitude
              latitude:latitude
          completionHandler: ^(PBParcelBoundary* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBPropertyInformationServiceApi->getParcelBoundaryByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of Location | 
 **latitude** | **NSString***| Latitude of Location | 

### Return type

[**PBParcelBoundary***](PBParcelBoundary.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPropertyAttributesByAddress**
```objc
-(NSURLSessionTask*) getPropertyAttributesByAddressWithAddress: (NSString*) address
    attributes: (NSString*) attributes
        completionHandler: (void (^)(PBPropertyInfoResponse* output, NSError* error)) handler;
```

PropertyV2 Attributes By Address.

GetPropertyAttributesbyAddress Endpoint will take address as an input and will return key property attributes in response. Optionally user will have the option to filter the attributes and will pay for only returned attributes.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

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

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPropertyAttributesByAddressBatch**
```objc
-(NSURLSessionTask*) getPropertyAttributesByAddressBatchWithPropertyInfoAddressRequest: (PBPropertyInfoAddressRequest*) propertyInfoAddressRequest
        completionHandler: (void (^)(PBPropertyInfoResponses* output, NSError* error)) handler;
```

PropertyV2 Attributes By Address Batch.

GetPropertyAttributesbyAddressBatch Endpoint will take the list of addresses as an input and will return key property attributes for the given addresses in response. Optionally user will have the option to filter the attributes and will pay for only returned attributes.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBPropertyInfoAddressRequest* propertyInfoAddressRequest = [[PBPropertyInfoAddressRequest alloc] init]; // 

PBPropertyInformationServiceApi*apiInstance = [[PBPropertyInformationServiceApi alloc] init];

// PropertyV2 Attributes By Address Batch.
[apiInstance getPropertyAttributesByAddressBatchWithPropertyInfoAddressRequest:propertyInfoAddressRequest
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
 **propertyInfoAddressRequest** | [**PBPropertyInfoAddressRequest***](PBPropertyInfoAddressRequest.md)|  | 

### Return type

[**PBPropertyInfoResponses***](PBPropertyInfoResponses.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

