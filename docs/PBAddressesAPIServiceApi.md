# PBAddressesAPIServiceApi

All URIs are relative to *https://api.precisely.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAddressesByBoundaryName**](PBAddressesAPIServiceApi.md#getaddressesbyboundaryname) | **GET** /addresses/v1/address/byboundaryname | Addresses By Boundary Area.
[**getAddressesCountByBoundary**](PBAddressesAPIServiceApi.md#getaddressescountbyboundary) | **POST** /addresses/v1/addresscount/byboundary | Address Counts by Boundary.
[**getAddressesCountByBoundaryName**](PBAddressesAPIServiceApi.md#getaddressescountbyboundaryname) | **GET** /addresses/v1/addresscount/byboundaryname | Address Counts by Boundary Name.
[**getAddressesbyBoundary**](PBAddressesAPIServiceApi.md#getaddressesbyboundary) | **POST** /addresses/v1/address/byboundary | Addresses by Boundary.


# **getAddressesByBoundaryName**
```objc
-(NSNumber*) getAddressesByBoundaryNameWithCountry: (NSString*) country
    areaName1: (NSString*) areaName1
    areaName2: (NSString*) areaName2
    areaName3: (NSString*) areaName3
    areaName4: (NSString*) areaName4
    postCode: (NSString*) postCode
    maxCandidates: (NSString*) maxCandidates
    page: (NSString*) page
        completionHandler: (void (^)(PBAddressesResponse* output, NSError* error)) handler;
```

Addresses By Boundary Area.

This service accepts zip code, neighborhood, county, or city names, and returns all known & valid addresses associated with these names.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

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

PBAddressesAPIServiceApi*apiInstance = [[PBAddressesAPIServiceApi alloc] init];

// Addresses By Boundary Area.
[apiInstance getAddressesByBoundaryNameWithCountry:country
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
                            NSLog(@"Error calling PBAddressesAPIServiceApi->getAddressesByBoundaryName: %@", error);
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

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAddressesCountByBoundary**
```objc
-(NSNumber*) getAddressesCountByBoundaryWithBody: (PBAddressesByBoundaryRequest*) body
        completionHandler: (void (^)(PBAddressesCount* output, NSError* error)) handler;
```

Address Counts by Boundary.

This service accepts custom geographic boundaries or drivetimes & drive distances, returns the total number of addresses within these boundaries.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBAddressesByBoundaryRequest* body = [[PBAddressesByBoundaryRequest alloc] init]; //  (optional)

PBAddressesAPIServiceApi*apiInstance = [[PBAddressesAPIServiceApi alloc] init];

// Address Counts by Boundary.
[apiInstance getAddressesCountByBoundaryWithBody:body
          completionHandler: ^(PBAddressesCount* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBAddressesAPIServiceApi->getAddressesCountByBoundary: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBAddressesByBoundaryRequest***](PBAddressesByBoundaryRequest*.md)|  | [optional] 

### Return type

[**PBAddressesCount***](PBAddressesCount.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAddressesCountByBoundaryName**
```objc
-(NSNumber*) getAddressesCountByBoundaryNameWithCountry: (NSString*) country
    areaName1: (NSString*) areaName1
    areaName2: (NSString*) areaName2
    areaName3: (NSString*) areaName3
    areaName4: (NSString*) areaName4
    postCode: (NSString*) postCode
        completionHandler: (void (^)(PBAddressesCount* output, NSError* error)) handler;
```

Address Counts by Boundary Name.

This service accepts zip code, neighborhood, county, or city names, and returns the total number of addresses associated with these names. 

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* country = @"country_example"; // Name of country. Acceptable values are CAN, USA.
NSString* areaName1 = @"areaName1_example"; // Specifies the largest geographical area, typically a state or province. (optional)
NSString* areaName2 = @"areaName2_example"; // Specifies the secondary geographic area, typically a county or district. (optional)
NSString* areaName3 = @"areaName3_example"; // Specifies a city or town name. (optional)
NSString* areaName4 = @"areaName4_example"; // Specifies a city subdivision or locality/neighborhood. (optional)
NSString* postCode = @"postCode_example"; // Specifies the postcode (ZIP code) in the appropriate format for the country. (optional)

PBAddressesAPIServiceApi*apiInstance = [[PBAddressesAPIServiceApi alloc] init];

// Address Counts by Boundary Name.
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
                            NSLog(@"Error calling PBAddressesAPIServiceApi->getAddressesCountByBoundaryName: %@", error);
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

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAddressesbyBoundary**
```objc
-(NSNumber*) getAddressesbyBoundaryWithBody: (PBAddressesByBoundaryRequest*) body
        completionHandler: (void (^)(PBAddressesResponse* output, NSError* error)) handler;
```

Addresses by Boundary.

This service accepts custom geographic boundaries or drivetimes & drive distances, returns all known & valid addresses within these boundaries.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBAddressesByBoundaryRequest* body = [[PBAddressesByBoundaryRequest alloc] init]; //  (optional)

PBAddressesAPIServiceApi*apiInstance = [[PBAddressesAPIServiceApi alloc] init];

// Addresses by Boundary.
[apiInstance getAddressesbyBoundaryWithBody:body
          completionHandler: ^(PBAddressesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBAddressesAPIServiceApi->getAddressesbyBoundary: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBAddressesByBoundaryRequest***](PBAddressesByBoundaryRequest*.md)|  | [optional] 

### Return type

[**PBAddressesResponse***](PBAddressesResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

