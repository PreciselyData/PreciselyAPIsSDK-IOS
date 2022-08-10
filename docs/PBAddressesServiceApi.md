# PBAddressesServiceApi

All URIs are relative to *https://api.precisely.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAddressesCountByBoundaryName**](PBAddressesServiceApi.md#getaddressescountbyboundaryname) | **GET** /addresses/v1/addresscount/byboundaryname | Addresses Count by Boundary Name.
[**getAddressesCountbyBoundary**](PBAddressesServiceApi.md#getaddressescountbyboundary) | **POST** /addresses/v1/addresscount/byboundary | Addresses count by Boundary.
[**getAddressesbyBoundary**](PBAddressesServiceApi.md#getaddressesbyboundary) | **POST** /addresses/v1/address/byboundary | Addresses by Boundary.
[**getAddressesbyBoundaryName**](PBAddressesServiceApi.md#getaddressesbyboundaryname) | **GET** /addresses/v1/address/byboundaryname | Addresses by Boundary Name.


# **getAddressesCountByBoundaryName**
```objc
-(NSURLSessionTask*) getAddressesCountByBoundaryNameWithCountry: (NSString*) country
    areaName1: (NSString*) areaName1
    areaName2: (NSString*) areaName2
    areaName3: (NSString*) areaName3
    areaName4: (NSString*) areaName4
    postCode: (NSString*) postCode
        completionHandler: (void (^)(PBAddressesCount* output, NSError* error)) handler;
```

Addresses Count by Boundary Name.

This service accepts zip code, neighborhood, county, or city names, and returns the total number of addresses associated with these names.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* country = @"country_example"; // Name of country. Acceptable values are CAN, USA.
NSString* areaName1 = @"areaName1_example"; // Specifies the largest geographical area, typically a state or province. (optional)
NSString* areaName2 = @"areaName2_example"; // Specifies the secondary geographic area, typically a county or district. (optional)
NSString* areaName3 = @"areaName3_example"; // Specifies a city or town name. (optional)
NSString* areaName4 = @"areaName4_example"; // Specifies a city subdivision or locality/neighborhood. (optional)
NSString* postCode = @"postCode_example"; // Specifies the postcode (ZIP code) in the appropriate format for the country. (optional)

PBAddressesServiceApi*apiInstance = [[PBAddressesServiceApi alloc] init];

// Addresses Count by Boundary Name.
[apiInstance getAddressesCountByBoundaryNameWithCountry:country
              areaName1:areaName1
              areaName2:areaName2
              areaName3:areaName3
              areaName4:areaName4
              postCode:postCode
          completionHandler: ^(PBAddressesCount* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBAddressesServiceApi->getAddressesCountByBoundaryName: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country** | **NSString***| Name of country. Acceptable values are CAN, USA. | 
 **areaName1** | **NSString***| Specifies the largest geographical area, typically a state or province. | [optional] 
 **areaName2** | **NSString***| Specifies the secondary geographic area, typically a county or district. | [optional] 
 **areaName3** | **NSString***| Specifies a city or town name. | [optional] 
 **areaName4** | **NSString***| Specifies a city subdivision or locality/neighborhood. | [optional] 
 **postCode** | **NSString***| Specifies the postcode (ZIP code) in the appropriate format for the country. | [optional] 

### Return type

[**PBAddressesCount***](PBAddressesCount.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAddressesCountbyBoundary**
```objc
-(NSURLSessionTask*) getAddressesCountbyBoundaryWithAddressesByBoundaryRequest: (PBAddressesByBoundaryRequest*) addressesByBoundaryRequest
        completionHandler: (void (^)(PBAddressesCount* output, NSError* error)) handler;
```

Addresses count by Boundary.

This service accepts custom geographic boundaries or drive time & drive distance, returns the total number of addresses within these boundaries.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBAddressesByBoundaryRequest* addressesByBoundaryRequest = [[PBAddressesByBoundaryRequest alloc] init]; // 

PBAddressesServiceApi*apiInstance = [[PBAddressesServiceApi alloc] init];

// Addresses count by Boundary.
[apiInstance getAddressesCountbyBoundaryWithAddressesByBoundaryRequest:addressesByBoundaryRequest
          completionHandler: ^(PBAddressesCount* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBAddressesServiceApi->getAddressesCountbyBoundary: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addressesByBoundaryRequest** | [**PBAddressesByBoundaryRequest***](PBAddressesByBoundaryRequest.md)|  | 

### Return type

[**PBAddressesCount***](PBAddressesCount.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAddressesbyBoundary**
```objc
-(NSURLSessionTask*) getAddressesbyBoundaryWithAddressesByBoundaryRequest: (PBAddressesByBoundaryRequest*) addressesByBoundaryRequest
        completionHandler: (void (^)(PBAddressesResponse* output, NSError* error)) handler;
```

Addresses by Boundary.

This service accepts custom geographic boundaries or drive time & drive distance, returns all known & valid addresses within these boundaries.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBAddressesByBoundaryRequest* addressesByBoundaryRequest = [[PBAddressesByBoundaryRequest alloc] init]; // 

PBAddressesServiceApi*apiInstance = [[PBAddressesServiceApi alloc] init];

// Addresses by Boundary.
[apiInstance getAddressesbyBoundaryWithAddressesByBoundaryRequest:addressesByBoundaryRequest
          completionHandler: ^(PBAddressesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBAddressesServiceApi->getAddressesbyBoundary: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **addressesByBoundaryRequest** | [**PBAddressesByBoundaryRequest***](PBAddressesByBoundaryRequest.md)|  | 

### Return type

[**PBAddressesResponse***](PBAddressesResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAddressesbyBoundaryName**
```objc
-(NSURLSessionTask*) getAddressesbyBoundaryNameWithCountry: (NSString*) country
    areaName1: (NSString*) areaName1
    areaName2: (NSString*) areaName2
    areaName3: (NSString*) areaName3
    areaName4: (NSString*) areaName4
    postCode: (NSString*) postCode
    maxCandidates: (NSString*) maxCandidates
    page: (NSString*) page
        completionHandler: (void (^)(PBAddressesResponse* output, NSError* error)) handler;
```

Addresses by Boundary Name.

This service accepts zip code, neighborhood, county, or city names, and returns all known & valid addresses associated with these names.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* country = @"country_example"; // Name of country. Acceptable values are CAN, USA.
NSString* areaName1 = @"areaName1_example"; // Specifies the largest geographical area, typically a state or province. (optional)
NSString* areaName2 = @"areaName2_example"; // Specifies the secondary geographic area, typically a county or district. (optional)
NSString* areaName3 = @"areaName3_example"; // Specifies a city or town name. (optional)
NSString* areaName4 = @"areaName4_example"; // Specifies a city subdivision or locality/neighborhood. (optional)
NSString* postCode = @"postCode_example"; // Specifies the postcode (ZIP code) in the appropriate format for the country. (optional)
NSString* maxCandidates = @"maxCandidates_example"; // Maximum number of addresses to be returned in response. Max. value is 100 for XML/JSON, and 2000 for CSV. (optional)
NSString* page = @"page_example"; // Response will indicate the page number. (optional)

PBAddressesServiceApi*apiInstance = [[PBAddressesServiceApi alloc] init];

// Addresses by Boundary Name.
[apiInstance getAddressesbyBoundaryNameWithCountry:country
              areaName1:areaName1
              areaName2:areaName2
              areaName3:areaName3
              areaName4:areaName4
              postCode:postCode
              maxCandidates:maxCandidates
              page:page
          completionHandler: ^(PBAddressesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBAddressesServiceApi->getAddressesbyBoundaryName: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country** | **NSString***| Name of country. Acceptable values are CAN, USA. | 
 **areaName1** | **NSString***| Specifies the largest geographical area, typically a state or province. | [optional] 
 **areaName2** | **NSString***| Specifies the secondary geographic area, typically a county or district. | [optional] 
 **areaName3** | **NSString***| Specifies a city or town name. | [optional] 
 **areaName4** | **NSString***| Specifies a city subdivision or locality/neighborhood. | [optional] 
 **postCode** | **NSString***| Specifies the postcode (ZIP code) in the appropriate format for the country. | [optional] 
 **maxCandidates** | **NSString***| Maximum number of addresses to be returned in response. Max. value is 100 for XML/JSON, and 2000 for CSV. | [optional] 
 **page** | **NSString***| Response will indicate the page number. | [optional] 

### Return type

[**PBAddressesResponse***](PBAddressesResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

