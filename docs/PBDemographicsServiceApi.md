# PBDemographicsServiceApi

All URIs are relative to *https://api.precisely.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDemographicsAdvanced**](PBDemographicsServiceApi.md#getdemographicsadvanced) | **POST** /demographics-segmentation/v1/advanced/demographics | Demographics Advanced Endpoint
[**getDemographicsBasic**](PBDemographicsServiceApi.md#getdemographicsbasic) | **GET** /demographics-segmentation/v1/basic/demographics | Demographics Basic
[**getDemographicsByAddress**](PBDemographicsServiceApi.md#getdemographicsbyaddress) | **GET** /demographics-segmentation/v1/demographics/byaddress | Demographics By Address.
[**getDemographicsByBoundaryIds**](PBDemographicsServiceApi.md#getdemographicsbyboundaryids) | **GET** /demographics-segmentation/v1/demographics/byboundaryids | Demographics By Boundaryids.
[**getDemographicsByLocation**](PBDemographicsServiceApi.md#getdemographicsbylocation) | **GET** /demographics-segmentation/v1/demographics/bylocation | Demographics By Location.
[**getSegmentationByAddress**](PBDemographicsServiceApi.md#getsegmentationbyaddress) | **GET** /demographics-segmentation/v1/segmentation/byaddress | Segmentation By Address.
[**getSegmentationByLocation**](PBDemographicsServiceApi.md#getsegmentationbylocation) | **GET** /demographics-segmentation/v1/segmentation/bylocation | Segmentation By Location.


# **getDemographicsAdvanced**
```objc
-(NSURLSessionTask*) getDemographicsAdvancedWithDemographicsAdvancedRequest: (PBDemographicsAdvancedRequest*) demographicsAdvancedRequest
        completionHandler: (void (^)(PBDemographics* output, NSError* error)) handler;
```

Demographics Advanced Endpoint

Demographics Advanced Endpoint will return the aggregated values of the selected demographics variables of the regions falling inside a user provided geometry or travel time/distance boundaries. All the intersecting demographic boundaries will be snapped completely, and user will have option to request these boundaries in response.  

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBDemographicsAdvancedRequest* demographicsAdvancedRequest = [[PBDemographicsAdvancedRequest alloc] init]; // 

PBDemographicsServiceApi*apiInstance = [[PBDemographicsServiceApi alloc] init];

// Demographics Advanced Endpoint
[apiInstance getDemographicsAdvancedWithDemographicsAdvancedRequest:demographicsAdvancedRequest
          completionHandler: ^(PBDemographics* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBDemographicsServiceApi->getDemographicsAdvanced: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **demographicsAdvancedRequest** | [**PBDemographicsAdvancedRequest***](PBDemographicsAdvancedRequest.md)|  | 

### Return type

[**PBDemographics***](PBDemographics.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDemographicsBasic**
```objc
-(NSURLSessionTask*) getDemographicsBasicWithAddress: (NSString*) address
    longitude: (NSString*) longitude
    latitude: (NSString*) latitude
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    travelMode: (NSString*) travelMode
    country: (NSString*) country
    profile: (NSString*) profile
    filter: (NSString*) filter
    includeGeometry: (NSString*) includeGeometry
        completionHandler: (void (^)(PBDemographics* output, NSError* error)) handler;
```

Demographics Basic

Demographics Basic Endpoint will return the aggregated values of the selected demographics variables of the regions falling inside the search radius. All the intersecting demographic boundaries will be snapped completely and user will have option to request these boundaries in response.  

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // Address to be searched (optional)
NSString* longitude = @"longitude_example"; // Longitude of the location (optional)
NSString* latitude = @"latitude_example"; // Latitude of the location (optional)
NSString* searchRadius = @"searchRadius_example"; // Radius within which demographics details are required. Max. value is 52800 Feet or 10 miles (optional)
NSString* searchRadiusUnit = @"searchRadiusUnit_example"; // Radius unit such as Feet, Kilometers, Miles or Meters  (optional)
NSString* travelTime = @"travelTime_example"; // Travel Time based on ‘travelMode’ within which demographics details are required. Max. value is 1 hour. (optional)
NSString* travelTimeUnit = @"travelTimeUnit_example"; // minutes,hours,seconds,milliseconds. Default is meters.Default is minutes. (optional)
NSString* travelDistance = @"travelDistance_example"; // Travel Distance based on ‘travelMode’ within which demographics details are required. Max. value is 10 miles. (optional)
NSString* travelDistanceUnit = @"travelDistanceUnit_example"; // feet,kilometers,miles,meters.  Default is feet. (optional)
NSString* travelMode = @"travelMode_example"; // Default is driving. (optional)
NSString* country = @"country_example"; // 3 digit ISO country code (Used in case address is mentioned). (optional)
NSString* profile = @"profile_example"; // Applicable on ranged variables. Returns top sorted result based on the input value. (optional)
NSString* filter = @"filter_example"; // If Y, demographic boundaries are returned in response. (optional)
NSString* includeGeometry = @"includeGeometry_example"; //  (optional)

PBDemographicsServiceApi*apiInstance = [[PBDemographicsServiceApi alloc] init];

// Demographics Basic
[apiInstance getDemographicsBasicWithAddress:address
              longitude:longitude
              latitude:latitude
              searchRadius:searchRadius
              searchRadiusUnit:searchRadiusUnit
              travelTime:travelTime
              travelTimeUnit:travelTimeUnit
              travelDistance:travelDistance
              travelDistanceUnit:travelDistanceUnit
              travelMode:travelMode
              country:country
              profile:profile
              filter:filter
              includeGeometry:includeGeometry
          completionHandler: ^(PBDemographics* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBDemographicsServiceApi->getDemographicsBasic: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Address to be searched | [optional] 
 **longitude** | **NSString***| Longitude of the location | [optional] 
 **latitude** | **NSString***| Latitude of the location | [optional] 
 **searchRadius** | **NSString***| Radius within which demographics details are required. Max. value is 52800 Feet or 10 miles | [optional] 
 **searchRadiusUnit** | **NSString***| Radius unit such as Feet, Kilometers, Miles or Meters  | [optional] 
 **travelTime** | **NSString***| Travel Time based on ‘travelMode’ within which demographics details are required. Max. value is 1 hour. | [optional] 
 **travelTimeUnit** | **NSString***| minutes,hours,seconds,milliseconds. Default is meters.Default is minutes. | [optional] 
 **travelDistance** | **NSString***| Travel Distance based on ‘travelMode’ within which demographics details are required. Max. value is 10 miles. | [optional] 
 **travelDistanceUnit** | **NSString***| feet,kilometers,miles,meters.  Default is feet. | [optional] 
 **travelMode** | **NSString***| Default is driving. | [optional] 
 **country** | **NSString***| 3 digit ISO country code (Used in case address is mentioned). | [optional] 
 **profile** | **NSString***| Applicable on ranged variables. Returns top sorted result based on the input value. | [optional] 
 **filter** | **NSString***| If Y, demographic boundaries are returned in response. | [optional] 
 **includeGeometry** | **NSString***|  | [optional] 

### Return type

[**PBDemographics***](PBDemographics.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDemographicsByAddress**
```objc
-(NSURLSessionTask*) getDemographicsByAddressWithAddress: (NSString*) address
    country: (NSString*) country
    profile: (NSString*) profile
    filter: (NSString*) filter
    valueFormat: (NSString*) valueFormat
    variableLevel: (NSString*) variableLevel
        completionHandler: (void (^)(PBDemographics* output, NSError* error)) handler;
```

Demographics By Address.

Provides the demographic details around a specified address. GeoLife 'byaddress' service accepts address as an input to return a specific population segment's age group, ethnicity, income, purchasing behaviour, commuter patterns and more.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // The address to be searched.
NSString* country = @"country_example"; // 3 letter ISO code of the country to be searched.Allowed values USA,CAN,GBR,AUS. (optional)
NSString* profile = @"profile_example"; // Retrieves the sorted demographic data on the basis of pre-defined profiles that can display the top 3 or top 5 results (by location) either in ascending or descending order.Allowed values Top5Ascending,Top5Descending,Top3Ascending,Top3Descending (optional)
NSString* filter = @"filter_example"; // The 'filter' parameter retrieves the demographic data based upon specified input themes. (optional)
NSString* valueFormat = @"valueFormat_example"; // The 'valueFormat' parameter is applicable for few ranged variables where percent & count both are available and filter response based on the input value. (optional)
NSString* variableLevel = @"variableLevel_example"; // The 'variableLevel' retrieves demographic facts in response based on the input value (optional)

PBDemographicsServiceApi*apiInstance = [[PBDemographicsServiceApi alloc] init];

// Demographics By Address.
[apiInstance getDemographicsByAddressWithAddress:address
              country:country
              profile:profile
              filter:filter
              valueFormat:valueFormat
              variableLevel:variableLevel
          completionHandler: ^(PBDemographics* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBDemographicsServiceApi->getDemographicsByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| The address to be searched. | 
 **country** | **NSString***| 3 letter ISO code of the country to be searched.Allowed values USA,CAN,GBR,AUS. | [optional] 
 **profile** | **NSString***| Retrieves the sorted demographic data on the basis of pre-defined profiles that can display the top 3 or top 5 results (by location) either in ascending or descending order.Allowed values Top5Ascending,Top5Descending,Top3Ascending,Top3Descending | [optional] 
 **filter** | **NSString***| The &#39;filter&#39; parameter retrieves the demographic data based upon specified input themes. | [optional] 
 **valueFormat** | **NSString***| The &#39;valueFormat&#39; parameter is applicable for few ranged variables where percent &amp; count both are available and filter response based on the input value. | [optional] 
 **variableLevel** | **NSString***| The &#39;variableLevel&#39; retrieves demographic facts in response based on the input value | [optional] 

### Return type

[**PBDemographics***](PBDemographics.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDemographicsByBoundaryIds**
```objc
-(NSURLSessionTask*) getDemographicsByBoundaryIdsWithBoundaryIds: (NSString*) boundaryIds
    profile: (NSString*) profile
    filter: (NSString*) filter
    valueFormat: (NSString*) valueFormat
    variableLevel: (NSString*) variableLevel
        completionHandler: (void (^)(PBDemographics* output, NSError* error)) handler;
```

Demographics By Boundaryids.

This endpoint will allow the user to request demographics details by census boundary id. Multiple comma separated boundary ids will be accepted. 

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* boundaryIds = @"boundaryIds_example"; // Accepts comma separated multiple boundary ids. (optional)
NSString* profile = @"profile_example"; // Applicable on ranged variables. Returns top sorted result based on the input value. (optional)
NSString* filter = @"filter_example"; // Accept the comma separated theme names and filter response based on value. Maximum 10 can be provided. (optional)
NSString* valueFormat = @"valueFormat_example"; // Applicable for few ranged variables where percent & count both are available and filter response based on the input value. (optional)
NSString* variableLevel = @"variableLevel_example"; // Retrieves demographic facts in response based on the input value. (optional)

PBDemographicsServiceApi*apiInstance = [[PBDemographicsServiceApi alloc] init];

// Demographics By Boundaryids.
[apiInstance getDemographicsByBoundaryIdsWithBoundaryIds:boundaryIds
              profile:profile
              filter:filter
              valueFormat:valueFormat
              variableLevel:variableLevel
          completionHandler: ^(PBDemographics* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBDemographicsServiceApi->getDemographicsByBoundaryIds: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **boundaryIds** | **NSString***| Accepts comma separated multiple boundary ids. | [optional] 
 **profile** | **NSString***| Applicable on ranged variables. Returns top sorted result based on the input value. | [optional] 
 **filter** | **NSString***| Accept the comma separated theme names and filter response based on value. Maximum 10 can be provided. | [optional] 
 **valueFormat** | **NSString***| Applicable for few ranged variables where percent &amp; count both are available and filter response based on the input value. | [optional] 
 **variableLevel** | **NSString***| Retrieves demographic facts in response based on the input value. | [optional] 

### Return type

[**PBDemographics***](PBDemographics.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDemographicsByLocation**
```objc
-(NSURLSessionTask*) getDemographicsByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    profile: (NSString*) profile
    filter: (NSString*) filter
    valueFormat: (NSString*) valueFormat
    variableLevel: (NSString*) variableLevel
        completionHandler: (void (^)(PBDemographics* output, NSError* error)) handler;
```

Demographics By Location.

Provides the demographic details around a specified location. GeoLife 'bylocation' service accepts longitude and latitude as an input to return a specific population segment's age group, ethnicity, income, purchasing behaviour, commuter patterns and more.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of the location. (optional)
NSString* latitude = @"latitude_example"; // Latitude of the location. (optional)
NSString* profile = @"profile_example"; // Retrieves the sorted demographic data on the basis of pre-defined profiles that can display the top 3 or top 5 results (by location) either in ascending or descending order.Allowed values Top5Ascending,Top5Descending,Top3Ascending,Top3Descending (optional)
NSString* filter = @"filter_example"; // The 'filter' parameter retrieves the demographic data based upon specified input themes. (optional)
NSString* valueFormat = @"valueFormat_example"; // The 'valueFormat' parameter is applicable for few ranged variables where percent & count both are available and filter response based on the input value. (optional)
NSString* variableLevel = @"variableLevel_example"; // The 'variableLevel' retrieves demographic facts in response based on the input value (optional)

PBDemographicsServiceApi*apiInstance = [[PBDemographicsServiceApi alloc] init];

// Demographics By Location.
[apiInstance getDemographicsByLocationWithLongitude:longitude
              latitude:latitude
              profile:profile
              filter:filter
              valueFormat:valueFormat
              variableLevel:variableLevel
          completionHandler: ^(PBDemographics* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBDemographicsServiceApi->getDemographicsByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of the location. | [optional] 
 **latitude** | **NSString***| Latitude of the location. | [optional] 
 **profile** | **NSString***| Retrieves the sorted demographic data on the basis of pre-defined profiles that can display the top 3 or top 5 results (by location) either in ascending or descending order.Allowed values Top5Ascending,Top5Descending,Top3Ascending,Top3Descending | [optional] 
 **filter** | **NSString***| The &#39;filter&#39; parameter retrieves the demographic data based upon specified input themes. | [optional] 
 **valueFormat** | **NSString***| The &#39;valueFormat&#39; parameter is applicable for few ranged variables where percent &amp; count both are available and filter response based on the input value. | [optional] 
 **variableLevel** | **NSString***| The &#39;variableLevel&#39; retrieves demographic facts in response based on the input value | [optional] 

### Return type

[**PBDemographics***](PBDemographics.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSegmentationByAddress**
```objc
-(NSURLSessionTask*) getSegmentationByAddressWithAddress: (NSString*) address
    country: (NSString*) country
        completionHandler: (void (^)(PBSegmentation* output, NSError* error)) handler;
```

Segmentation By Address.

Provides the segmentation details around a specified address. GeoLife 'Segmentation by Address' service accepts address as an input to return the lifestyle characteristics of households in terms of their family status, children characteristics, income behaviors, financial preferences and interests.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // The address to be searched.
NSString* country = @"country_example"; // 3 letter ISO code of the country to be searched.Allowed values USA,CAN,GBR,FRA,ITA,AUS,DEU. (optional)

PBDemographicsServiceApi*apiInstance = [[PBDemographicsServiceApi alloc] init];

// Segmentation By Address.
[apiInstance getSegmentationByAddressWithAddress:address
              country:country
          completionHandler: ^(PBSegmentation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBDemographicsServiceApi->getSegmentationByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| The address to be searched. | 
 **country** | **NSString***| 3 letter ISO code of the country to be searched.Allowed values USA,CAN,GBR,FRA,ITA,AUS,DEU. | [optional] 

### Return type

[**PBSegmentation***](PBSegmentation.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSegmentationByLocation**
```objc
-(NSURLSessionTask*) getSegmentationByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
        completionHandler: (void (^)(PBSegmentation* output, NSError* error)) handler;
```

Segmentation By Location.

Provides the segmentation details around a specified location. GeoLife 'segmentation bylocation' service accepts longitude and latitude as an input to return the lifestyle characteristics of households in terms of their family status, children characteristics, income behaviors, financial preferences and interests.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of the location.
NSString* latitude = @"latitude_example"; // Latitude of the location.

PBDemographicsServiceApi*apiInstance = [[PBDemographicsServiceApi alloc] init];

// Segmentation By Location.
[apiInstance getSegmentationByLocationWithLongitude:longitude
              latitude:latitude
          completionHandler: ^(PBSegmentation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBDemographicsServiceApi->getSegmentationByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of the location. | 
 **latitude** | **NSString***| Latitude of the location. | 

### Return type

[**PBSegmentation***](PBSegmentation.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

