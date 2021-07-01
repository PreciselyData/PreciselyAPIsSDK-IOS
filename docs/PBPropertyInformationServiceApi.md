# PBPropertyInformationServiceApi

All URIs are relative to *https://api.precisely.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getGeoPropertyByAddress**](PBPropertyInformationServiceApi.md#getgeopropertybyaddress) | **GET** /property/v1/all/attributes/byaddress | Get Property Attributes By Address
[**getGeoPropertyByAddressBatch**](PBPropertyInformationServiceApi.md#getgeopropertybyaddressbatch) | **POST** /property/v1/all/attributes/byaddress | Post Property Attributes By Address
[**getParcelBoundaryByAddress**](PBPropertyInformationServiceApi.md#getparcelboundarybyaddress) | **GET** /property/v1/parcelboundary/byaddress | Get Parcel Boundary By Address
[**getParcelBoundaryByLocation**](PBPropertyInformationServiceApi.md#getparcelboundarybylocation) | **GET** /property/v1/parcelboundary/bylocation | Get Parcel Boundary By Location
[**getPropertyAttributesByAddress**](PBPropertyInformationServiceApi.md#getpropertyattributesbyaddress) | **GET** /property/v2/attributes/byaddress | PropertyV2 Attributes By Address.
[**getPropertyAttributesByAddressBatch**](PBPropertyInformationServiceApi.md#getpropertyattributesbyaddressbatch) | **POST** /property/v2/attributes/byaddress | PropertyV2 Attributes By Address Batch.


# **getGeoPropertyByAddress**
```objc
-(NSNumber*) getGeoPropertyByAddressWithAddress: (NSString*) address
        completionHandler: (void (^)(PBGeoPropertyResponse* output, NSError* error)) handler;
```

Get Property Attributes By Address

Accepts address as input and returns property attributes for the matched address.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // free form address text

PBPropertyInformationServiceApi*apiInstance = [[PBPropertyInformationServiceApi alloc] init];

// Get Property Attributes By Address
[apiInstance getGeoPropertyByAddressWithAddress:address
          completionHandler: ^(PBGeoPropertyResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBPropertyInformationServiceApi->getGeoPropertyByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| free form address text | 

### Return type

[**PBGeoPropertyResponse***](PBGeoPropertyResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGeoPropertyByAddressBatch**
```objc
-(NSNumber*) getGeoPropertyByAddressBatchWithBody: (PBGeoPropertyAddressRequest*) body
        completionHandler: (void (^)(PBGeoPropertyResponses* output, NSError* error)) handler;
```

Post Property Attributes By Address

This is a Batch offering for 'Property Attributes By Address' service. It accepts a single address or a list of addresses and returns property attributes for the matched address.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBGeoPropertyAddressRequest* body = [[PBGeoPropertyAddressRequest alloc] init]; //  (optional)

PBPropertyInformationServiceApi*apiInstance = [[PBPropertyInformationServiceApi alloc] init];

// Post Property Attributes By Address
[apiInstance getGeoPropertyByAddressBatchWithBody:body
          completionHandler: ^(PBGeoPropertyResponses* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBPropertyInformationServiceApi->getGeoPropertyByAddressBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBGeoPropertyAddressRequest***](PBGeoPropertyAddressRequest*.md)|  | [optional] 

### Return type

[**PBGeoPropertyResponses***](PBGeoPropertyResponses.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getParcelBoundaryByAddress**
```objc
-(NSNumber*) getParcelBoundaryByAddressWithAddress: (NSString*) address
    accept: (NSString*) accept
        completionHandler: (void (^)(PBParcelBoundary* output, NSError* error)) handler;
```

Get Parcel Boundary By Address

Accepts address as input and returns property parcel boundary around that address.

### Example 
```objc

NSString* address = @"address_example"; // free form address text
NSString* accept = @"accept_example"; //  (optional)

PBPropertyInformationServiceApi*apiInstance = [[PBPropertyInformationServiceApi alloc] init];

// Get Parcel Boundary By Address
[apiInstance getParcelBoundaryByAddressWithAddress:address
              accept:accept
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
 **accept** | **NSString***|  | [optional] 

### Return type

[**PBParcelBoundary***](PBParcelBoundary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getParcelBoundaryByLocation**
```objc
-(NSNumber*) getParcelBoundaryByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    accept: (NSString*) accept
        completionHandler: (void (^)(PBParcelBoundary* output, NSError* error)) handler;
```

Get Parcel Boundary By Location

Accepts latitude/longitude as input and returns property parcel boundary around that location.

### Example 
```objc

NSString* longitude = @"longitude_example"; // Longitude of Location
NSString* latitude = @"latitude_example"; // Latitude of Location
NSString* accept = @"accept_example"; //  (optional)

PBPropertyInformationServiceApi*apiInstance = [[PBPropertyInformationServiceApi alloc] init];

// Get Parcel Boundary By Location
[apiInstance getParcelBoundaryByLocationWithLongitude:longitude
              latitude:latitude
              accept:accept
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
 **accept** | **NSString***|  | [optional] 

### Return type

[**PBParcelBoundary***](PBParcelBoundary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPropertyAttributesByAddress**
```objc
-(NSNumber*) getPropertyAttributesByAddressWithAddress: (NSString*) address
    attributeFilter: (NSString*) attributeFilter
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
NSString* attributeFilter = @"attributeFilter_example"; // Case-insensitive comma separated values of property attributes. Response will contain only the input attributes. (optional)

PBPropertyInformationServiceApi*apiInstance = [[PBPropertyInformationServiceApi alloc] init];

// PropertyV2 Attributes By Address.
[apiInstance getPropertyAttributesByAddressWithAddress:address
              attributeFilter:attributeFilter
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
 **attributeFilter** | **NSString***| Case-insensitive comma separated values of property attributes. Response will contain only the input attributes. | [optional] 

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

