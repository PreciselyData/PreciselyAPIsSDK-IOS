# PBRisksServiceApi

All URIs are relative to *https://api.precisely.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCrimeRiskByAddress**](PBRisksServiceApi.md#getcrimeriskbyaddress) | **GET** /risks/v1/crime/byaddress | Get Crime Risk By Address
[**getCrimeRiskByAddressBatch**](PBRisksServiceApi.md#getcrimeriskbyaddressbatch) | **POST** /risks/v1/crime/byaddress | Post Crime Risk By Address
[**getCrimeRiskByLocation**](PBRisksServiceApi.md#getcrimeriskbylocation) | **GET** /risks/v1/crime/bylocation | Get Crime Risk By Location
[**getCrimeRiskByLocationBatch**](PBRisksServiceApi.md#getcrimeriskbylocationbatch) | **POST** /risks/v1/crime/bylocation | Post Crime Risk By Location
[**getDistanceToFloodHazardByAddress**](PBRisksServiceApi.md#getdistancetofloodhazardbyaddress) | **GET** /risks/v1/shoreline/distancetofloodhazard/byaddress | Get Distance To Flood Hazard By Address
[**getDistanceToFloodHazardByAddressBatch**](PBRisksServiceApi.md#getdistancetofloodhazardbyaddressbatch) | **POST** /risks/v1/shoreline/distancetofloodhazard/byaddress | Post Distance To Flood Hazard By Address
[**getDistanceToFloodHazardByLocation**](PBRisksServiceApi.md#getdistancetofloodhazardbylocation) | **GET** /risks/v1/shoreline/distancetofloodhazard/bylocation | Get Distance To Flood Hazard By Location
[**getDistanceToFloodHazardByLocationBatch**](PBRisksServiceApi.md#getdistancetofloodhazardbylocationbatch) | **POST** /risks/v1/shoreline/distancetofloodhazard/bylocation | Post Distance To Flood Hazard By Location
[**getEarthquakeHistory**](PBRisksServiceApi.md#getearthquakehistory) | **GET** /risks/v1/earthquakehistory | Earthquake History
[**getEarthquakeRiskByAddress**](PBRisksServiceApi.md#getearthquakeriskbyaddress) | **GET** /risks/v1/earthquake/byaddress | Get Earthquake Risk By Address
[**getEarthquakeRiskByAddressBatch**](PBRisksServiceApi.md#getearthquakeriskbyaddressbatch) | **POST** /risks/v1/earthquake/byaddress | Post Earthquake Risk By Address
[**getEarthquakeRiskByLocation**](PBRisksServiceApi.md#getearthquakeriskbylocation) | **GET** /risks/v1/earthquake/bylocation | Get Earthquake Risk By Location
[**getEarthquakeRiskByLocationBatch**](PBRisksServiceApi.md#getearthquakeriskbylocationbatch) | **POST** /risks/v1/earthquake/bylocation | Post Earthquake Risk By Location
[**getFireHistory**](PBRisksServiceApi.md#getfirehistory) | **GET** /risks/v1/firehistory | Get Fire History
[**getFireRiskByAddress**](PBRisksServiceApi.md#getfireriskbyaddress) | **GET** /risks/v1/fire/byaddress | Get Fire Risk By Address
[**getFireRiskByAddressBatch**](PBRisksServiceApi.md#getfireriskbyaddressbatch) | **POST** /risks/v1/fire/byaddress | Post Fire Risk By Address
[**getFireRiskByLocation**](PBRisksServiceApi.md#getfireriskbylocation) | **GET** /risks/v1/fire/bylocation | Get Fire Risk By Location
[**getFireRiskByLocationBatch**](PBRisksServiceApi.md#getfireriskbylocationbatch) | **POST** /risks/v1/fire/bylocation | Post Fire Risk By Location
[**getFireStationByAddress**](PBRisksServiceApi.md#getfirestationbyaddress) | **GET** /risks/v1/firestation/byaddress | Fire Station By Address
[**getFireStationByLocation**](PBRisksServiceApi.md#getfirestationbylocation) | **GET** /risks/v1/firestation/bylocation | Fire Station By Location
[**getFloodRiskByAddress**](PBRisksServiceApi.md#getfloodriskbyaddress) | **GET** /risks/v1/flood/byaddress | Get Flood Risk By Address
[**getFloodRiskByAddressBatch**](PBRisksServiceApi.md#getfloodriskbyaddressbatch) | **POST** /risks/v1/flood/byaddress | Post Flood Risk By Address
[**getFloodRiskByLocation**](PBRisksServiceApi.md#getfloodriskbylocation) | **GET** /risks/v1/flood/bylocation | Get Flood Risk By Location
[**getFloodRiskByLocationBatch**](PBRisksServiceApi.md#getfloodriskbylocationbatch) | **POST** /risks/v1/flood/bylocation | Post Flood Risk By Location


# **getCrimeRiskByAddress**
```objc
-(NSNumber*) getCrimeRiskByAddressWithAddress: (NSString*) address
    type: (NSString*) type
    includeGeometry: (NSString*) includeGeometry
        completionHandler: (void (^)(PBCrimeRiskResponse* output, NSError* error)) handler;
```

Get Crime Risk By Address

Accepts addresses as input and Returns local crime indexes.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // Free-form address text.
NSString* type = @"type_example"; // Type of crime like violent crime, property crime, etc., multiple crime type indexes could be requested as comma separated values with 'all' as default.) (optional)
NSString* includeGeometry = @"includeGeometry_example"; // Y or N (default is N) - if it is Y, then geometry will be part of response (optional)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Get Crime Risk By Address
[apiInstance getCrimeRiskByAddressWithAddress:address
              type:type
              includeGeometry:includeGeometry
          completionHandler: ^(PBCrimeRiskResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRisksServiceApi->getCrimeRiskByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Free-form address text. | 
 **type** | **NSString***| Type of crime like violent crime, property crime, etc., multiple crime type indexes could be requested as comma separated values with &#39;all&#39; as default.) | [optional] 
 **includeGeometry** | **NSString***| Y or N (default is N) - if it is Y, then geometry will be part of response | [optional] 

### Return type

[**PBCrimeRiskResponse***](PBCrimeRiskResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCrimeRiskByAddressBatch**
```objc
-(NSNumber*) getCrimeRiskByAddressBatchWithBody: (PBCrimeRiskByAddressRequest*) body
        completionHandler: (void (^)(PBCrimeRiskResponseList* output, NSError* error)) handler;
```

Post Crime Risk By Address

This is a Batch offering for 'Crime Risk By Address' service. It accepts a single address or a list of addresses and retrieve local crime indexes.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBCrimeRiskByAddressRequest* body = [[PBCrimeRiskByAddressRequest alloc] init]; //  (optional)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Post Crime Risk By Address
[apiInstance getCrimeRiskByAddressBatchWithBody:body
          completionHandler: ^(PBCrimeRiskResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRisksServiceApi->getCrimeRiskByAddressBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBCrimeRiskByAddressRequest***](PBCrimeRiskByAddressRequest*.md)|  | [optional] 

### Return type

[**PBCrimeRiskResponseList***](PBCrimeRiskResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCrimeRiskByLocation**
```objc
-(NSNumber*) getCrimeRiskByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    type: (NSString*) type
    includeGeometry: (NSString*) includeGeometry
        completionHandler: (void (^)(PBCrimeRiskLocationResponse* output, NSError* error)) handler;
```

Get Crime Risk By Location

Returns the crime data or crime indexes for a given location.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // The longitude of the location
NSString* latitude = @"latitude_example"; // The latitude of the location
NSString* type = @"type_example"; // Refers to crime type. Valid values are following 11 crime types with 'all' as default (more than one can also be given as comma separated types) (optional)
NSString* includeGeometry = @"includeGeometry_example"; // Y or N (default is N) - if it is Y, then geometry will be part of response (optional)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Get Crime Risk By Location
[apiInstance getCrimeRiskByLocationWithLongitude:longitude
              latitude:latitude
              type:type
              includeGeometry:includeGeometry
          completionHandler: ^(PBCrimeRiskLocationResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRisksServiceApi->getCrimeRiskByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| The longitude of the location | 
 **latitude** | **NSString***| The latitude of the location | 
 **type** | **NSString***| Refers to crime type. Valid values are following 11 crime types with &#39;all&#39; as default (more than one can also be given as comma separated types) | [optional] 
 **includeGeometry** | **NSString***| Y or N (default is N) - if it is Y, then geometry will be part of response | [optional] 

### Return type

[**PBCrimeRiskLocationResponse***](PBCrimeRiskLocationResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCrimeRiskByLocationBatch**
```objc
-(NSNumber*) getCrimeRiskByLocationBatchWithBody: (PBCrimeRiskByLocationRequest*) body
        completionHandler: (void (^)(PBCrimeRiskLocationResponseList* output, NSError* error)) handler;
```

Post Crime Risk By Location

This is a Batch offering for 'Crime Risk By Location' service. It accepts a single location coordinate or a list of location coordinates and retrieve local crime indexes.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBCrimeRiskByLocationRequest* body = [[PBCrimeRiskByLocationRequest alloc] init]; //  (optional)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Post Crime Risk By Location
[apiInstance getCrimeRiskByLocationBatchWithBody:body
          completionHandler: ^(PBCrimeRiskLocationResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRisksServiceApi->getCrimeRiskByLocationBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBCrimeRiskByLocationRequest***](PBCrimeRiskByLocationRequest*.md)|  | [optional] 

### Return type

[**PBCrimeRiskLocationResponseList***](PBCrimeRiskLocationResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDistanceToFloodHazardByAddress**
```objc
-(NSNumber*) getDistanceToFloodHazardByAddressWithAddress: (NSString*) address
    maxCandidates: (NSString*) maxCandidates
    waterBodyType: (NSString*) waterBodyType
    searchDistance: (NSString*) searchDistance
    searchDistanceUnit: (NSString*) searchDistanceUnit
        completionHandler: (void (^)(PBWaterBodyResponse* output, NSError* error)) handler;
```

Get Distance To Flood Hazard By Address

Accepts addresses as input and Returns the distance from nearest water bodies along with body name and location.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // The address of the location
NSString* maxCandidates = @"maxCandidates_example"; // This specifies the value of maxCandidates (optional)
NSString* waterBodyType = @"waterBodyType_example"; // all (default value), oceanandsea,lake,others,unknown,intermittent (optional)
NSString* searchDistance = @"searchDistance_example"; // This specifies the search distance (optional)
NSString* searchDistanceUnit = @"searchDistanceUnit_example"; // miles (default value),feet, kilometers, meters (optional)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Get Distance To Flood Hazard By Address
[apiInstance getDistanceToFloodHazardByAddressWithAddress:address
              maxCandidates:maxCandidates
              waterBodyType:waterBodyType
              searchDistance:searchDistance
              searchDistanceUnit:searchDistanceUnit
          completionHandler: ^(PBWaterBodyResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRisksServiceApi->getDistanceToFloodHazardByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| The address of the location | 
 **maxCandidates** | **NSString***| This specifies the value of maxCandidates | [optional] 
 **waterBodyType** | **NSString***| all (default value), oceanandsea,lake,others,unknown,intermittent | [optional] 
 **searchDistance** | **NSString***| This specifies the search distance | [optional] 
 **searchDistanceUnit** | **NSString***| miles (default value),feet, kilometers, meters | [optional] 

### Return type

[**PBWaterBodyResponse***](PBWaterBodyResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDistanceToFloodHazardByAddressBatch**
```objc
-(NSNumber*) getDistanceToFloodHazardByAddressBatchWithBody: (PBDistanceToFloodHazardAddressRequest*) body
        completionHandler: (void (^)(PBDistanceToFloodHazardResponse* output, NSError* error)) handler;
```

Post Distance To Flood Hazard By Address

This is a Batch offering for 'Distance To Flood Hazard By Address' service. It accepts a single address or a list of addresses and retrieve the distance from nearest water bodies along with body name and location.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBDistanceToFloodHazardAddressRequest* body = [[PBDistanceToFloodHazardAddressRequest alloc] init]; //  (optional)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Post Distance To Flood Hazard By Address
[apiInstance getDistanceToFloodHazardByAddressBatchWithBody:body
          completionHandler: ^(PBDistanceToFloodHazardResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRisksServiceApi->getDistanceToFloodHazardByAddressBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBDistanceToFloodHazardAddressRequest***](PBDistanceToFloodHazardAddressRequest*.md)|  | [optional] 

### Return type

[**PBDistanceToFloodHazardResponse***](PBDistanceToFloodHazardResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDistanceToFloodHazardByLocation**
```objc
-(NSNumber*) getDistanceToFloodHazardByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    maxCandidates: (NSString*) maxCandidates
    waterBodyType: (NSString*) waterBodyType
    searchDistance: (NSString*) searchDistance
    searchDistanceUnit: (NSString*) searchDistanceUnit
        completionHandler: (void (^)(PBWaterBodyLocationResponse* output, NSError* error)) handler;
```

Get Distance To Flood Hazard By Location

Accepts latitude & longitude as input and Returns the distance from nearest water bodies along with body name and location.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // The longitude of the location
NSString* latitude = @"latitude_example"; // The latitude of the location
NSString* maxCandidates = @"maxCandidates_example"; // This specifies the value of maxCandidates (optional)
NSString* waterBodyType = @"waterBodyType_example"; // all (default value), oceanandsea,lake,others,unknown,intermittent (optional)
NSString* searchDistance = @"searchDistance_example"; // This specifies the search distance (optional)
NSString* searchDistanceUnit = @"searchDistanceUnit_example"; // miles (default value),feet, kilometers, meters (optional)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Get Distance To Flood Hazard By Location
[apiInstance getDistanceToFloodHazardByLocationWithLongitude:longitude
              latitude:latitude
              maxCandidates:maxCandidates
              waterBodyType:waterBodyType
              searchDistance:searchDistance
              searchDistanceUnit:searchDistanceUnit
          completionHandler: ^(PBWaterBodyLocationResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRisksServiceApi->getDistanceToFloodHazardByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| The longitude of the location | 
 **latitude** | **NSString***| The latitude of the location | 
 **maxCandidates** | **NSString***| This specifies the value of maxCandidates | [optional] 
 **waterBodyType** | **NSString***| all (default value), oceanandsea,lake,others,unknown,intermittent | [optional] 
 **searchDistance** | **NSString***| This specifies the search distance | [optional] 
 **searchDistanceUnit** | **NSString***| miles (default value),feet, kilometers, meters | [optional] 

### Return type

[**PBWaterBodyLocationResponse***](PBWaterBodyLocationResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDistanceToFloodHazardByLocationBatch**
```objc
-(NSNumber*) getDistanceToFloodHazardByLocationBatchWithBody: (PBDistanceToFloodHazardLocationRequest*) body
        completionHandler: (void (^)(PBDistanceToFloodHazardLocationResponse* output, NSError* error)) handler;
```

Post Distance To Flood Hazard By Location

This is a Batch offering for 'Distance To Flood Hazard By Location' service. It accepts a single location coordinate or a list of location coordinates and retrieve the distance from nearest water bodies along with body name and location.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBDistanceToFloodHazardLocationRequest* body = [[PBDistanceToFloodHazardLocationRequest alloc] init]; //  (optional)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Post Distance To Flood Hazard By Location
[apiInstance getDistanceToFloodHazardByLocationBatchWithBody:body
          completionHandler: ^(PBDistanceToFloodHazardLocationResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRisksServiceApi->getDistanceToFloodHazardByLocationBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBDistanceToFloodHazardLocationRequest***](PBDistanceToFloodHazardLocationRequest*.md)|  | [optional] 

### Return type

[**PBDistanceToFloodHazardLocationResponse***](PBDistanceToFloodHazardLocationResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEarthquakeHistory**
```objc
-(NSNumber*) getEarthquakeHistoryWithPostCode: (NSString*) postCode
    startDate: (NSString*) startDate
    endDate: (NSString*) endDate
    minMagnitude: (NSString*) minMagnitude
    maxMagnitude: (NSString*) maxMagnitude
    maxCandidates: (NSString*) maxCandidates
        completionHandler: (void (^)(PBEarthquakeHistory* output, NSError* error)) handler;
```

Earthquake History

Accepts postcode as input and Returns historical earthquake details for a particular postcode.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* postCode = @"postCode_example"; // 5 digit Postal code to search
NSString* startDate = @"startDate_example"; // Start time in milliseconds(UTC) (optional)
NSString* endDate = @"endDate_example"; // End time in milliseconds(UTC) (optional)
NSString* minMagnitude = @"minMagnitude_example"; // Minimum richter scale magnitude (optional)
NSString* maxMagnitude = @"maxMagnitude_example"; // Maximum Richter scale magnitude (optional)
NSString* maxCandidates = @"1"; // Maximum response events (optional) (default to 1)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Earthquake History
[apiInstance getEarthquakeHistoryWithPostCode:postCode
              startDate:startDate
              endDate:endDate
              minMagnitude:minMagnitude
              maxMagnitude:maxMagnitude
              maxCandidates:maxCandidates
          completionHandler: ^(PBEarthquakeHistory* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRisksServiceApi->getEarthquakeHistory: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postCode** | **NSString***| 5 digit Postal code to search | 
 **startDate** | **NSString***| Start time in milliseconds(UTC) | [optional] 
 **endDate** | **NSString***| End time in milliseconds(UTC) | [optional] 
 **minMagnitude** | **NSString***| Minimum richter scale magnitude | [optional] 
 **maxMagnitude** | **NSString***| Maximum Richter scale magnitude | [optional] 
 **maxCandidates** | **NSString***| Maximum response events | [optional] [default to 1]

### Return type

[**PBEarthquakeHistory***](PBEarthquakeHistory.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEarthquakeRiskByAddress**
```objc
-(NSNumber*) getEarthquakeRiskByAddressWithAddress: (NSString*) address
    richterValue: (NSString*) richterValue
    includeGeometry: (NSString*) includeGeometry
        completionHandler: (void (^)(PBEarthquakeRiskResponse* output, NSError* error)) handler;
```

Get Earthquake Risk By Address

Accepts addresses as input and Returns counts of earthquakes for various richter measurements and values.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // Free-form address text
NSString* richterValue = @"richterValue_example"; // Richter values like R5 (count of richter scale 5 events), R7 (count of richter scale 7 events), R6_GE (count of events >= richter scale 6), etc., multiple richter scales could be requested as comma separated values with 'all' as default. Valid values: All (default value), R0, R1, R2, R3, R4, R5, R6, R7, R0_GE, R1_GE, R2_GE, R3_GE, R4_GE, R5_GE, R6_GE, R7_GE (optional)
NSString* includeGeometry = @"includeGeometry_example"; // Y or N (default is N) - if it is Y, then geometry will be part of response (optional)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Get Earthquake Risk By Address
[apiInstance getEarthquakeRiskByAddressWithAddress:address
              richterValue:richterValue
              includeGeometry:includeGeometry
          completionHandler: ^(PBEarthquakeRiskResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRisksServiceApi->getEarthquakeRiskByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Free-form address text | 
 **richterValue** | **NSString***| Richter values like R5 (count of richter scale 5 events), R7 (count of richter scale 7 events), R6_GE (count of events &gt;&#x3D; richter scale 6), etc., multiple richter scales could be requested as comma separated values with &#39;all&#39; as default. Valid values: All (default value), R0, R1, R2, R3, R4, R5, R6, R7, R0_GE, R1_GE, R2_GE, R3_GE, R4_GE, R5_GE, R6_GE, R7_GE | [optional] 
 **includeGeometry** | **NSString***| Y or N (default is N) - if it is Y, then geometry will be part of response | [optional] 

### Return type

[**PBEarthquakeRiskResponse***](PBEarthquakeRiskResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEarthquakeRiskByAddressBatch**
```objc
-(NSNumber*) getEarthquakeRiskByAddressBatchWithBody: (PBEarthquakeRiskByAddressRequest*) body
        completionHandler: (void (^)(PBEarthquakeRiskResponseList* output, NSError* error)) handler;
```

Post Earthquake Risk By Address

This is a Batch offering for 'Earthquake Risk By Address' service. It accepts a single address or a list of addresses and retrieve counts of earthquakes for various richter measurements and values.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBEarthquakeRiskByAddressRequest* body = [[PBEarthquakeRiskByAddressRequest alloc] init]; //  (optional)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Post Earthquake Risk By Address
[apiInstance getEarthquakeRiskByAddressBatchWithBody:body
          completionHandler: ^(PBEarthquakeRiskResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRisksServiceApi->getEarthquakeRiskByAddressBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBEarthquakeRiskByAddressRequest***](PBEarthquakeRiskByAddressRequest*.md)|  | [optional] 

### Return type

[**PBEarthquakeRiskResponseList***](PBEarthquakeRiskResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEarthquakeRiskByLocation**
```objc
-(NSNumber*) getEarthquakeRiskByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    richterValue: (NSString*) richterValue
    includeGeometry: (NSString*) includeGeometry
        completionHandler: (void (^)(PBEarthquakeRiskLocationResponse* output, NSError* error)) handler;
```

Get Earthquake Risk By Location

Accepts latitude & longitude as input and Returns counts of earthquakes for various richter measurements and values.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // The longitude of the location
NSString* latitude = @"latitude_example"; // The latitude of the location
NSString* richterValue = @"richterValue_example"; // Richter values like R5 (count of richter scale 5 events), R7 (count of richter scale 7 events), R6_GE (count of events >= richter scale 6), etc., multiple richter scales could be requested as comma separated values with 'all' as default. Valid values: All (default value), R0, R1, R2, R3, R4, R5, R6, R7, R0_GE, R1_GE, R2_GE, R3_GE, R4_GE, R5_GE, R6_GE, R7_GE (optional)
NSString* includeGeometry = @"includeGeometry_example"; // Y or N (default is N) - if it is Y, then geometry will be part of response (optional)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Get Earthquake Risk By Location
[apiInstance getEarthquakeRiskByLocationWithLongitude:longitude
              latitude:latitude
              richterValue:richterValue
              includeGeometry:includeGeometry
          completionHandler: ^(PBEarthquakeRiskLocationResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRisksServiceApi->getEarthquakeRiskByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| The longitude of the location | 
 **latitude** | **NSString***| The latitude of the location | 
 **richterValue** | **NSString***| Richter values like R5 (count of richter scale 5 events), R7 (count of richter scale 7 events), R6_GE (count of events &gt;&#x3D; richter scale 6), etc., multiple richter scales could be requested as comma separated values with &#39;all&#39; as default. Valid values: All (default value), R0, R1, R2, R3, R4, R5, R6, R7, R0_GE, R1_GE, R2_GE, R3_GE, R4_GE, R5_GE, R6_GE, R7_GE | [optional] 
 **includeGeometry** | **NSString***| Y or N (default is N) - if it is Y, then geometry will be part of response | [optional] 

### Return type

[**PBEarthquakeRiskLocationResponse***](PBEarthquakeRiskLocationResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEarthquakeRiskByLocationBatch**
```objc
-(NSNumber*) getEarthquakeRiskByLocationBatchWithBody: (PBEarthquakeRiskByLocationRequest*) body
        completionHandler: (void (^)(PBEarthquakeRiskLocationResponseList* output, NSError* error)) handler;
```

Post Earthquake Risk By Location

This is a Batch offering for 'Earthquake Risk By Location' service. It accepts a single location coordinate or a list of location coordinates and retrieve counts of earthquakes for various richter measurements and values.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBEarthquakeRiskByLocationRequest* body = [[PBEarthquakeRiskByLocationRequest alloc] init]; //  (optional)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Post Earthquake Risk By Location
[apiInstance getEarthquakeRiskByLocationBatchWithBody:body
          completionHandler: ^(PBEarthquakeRiskLocationResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRisksServiceApi->getEarthquakeRiskByLocationBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBEarthquakeRiskByLocationRequest***](PBEarthquakeRiskByLocationRequest*.md)|  | [optional] 

### Return type

[**PBEarthquakeRiskLocationResponseList***](PBEarthquakeRiskLocationResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFireHistory**
```objc
-(NSNumber*) getFireHistoryWithPostCode: (NSString*) postCode
    startDate: (NSString*) startDate
    endDate: (NSString*) endDate
    maxCandidates: (NSString*) maxCandidates
        completionHandler: (void (^)(PBFireHistory* output, NSError* error)) handler;
```

Get Fire History

Accepts postcode as input and Returns fire event details for a particular postcode.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* postCode = @"postCode_example"; // 5 digit Postal code to search
NSString* startDate = @"startDate_example"; // Start time in milliseconds(UTC) (optional)
NSString* endDate = @"endDate_example"; // End time in milliseconds(UTC) (optional)
NSString* maxCandidates = @"1"; // Maximum response events (optional) (default to 1)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Get Fire History
[apiInstance getFireHistoryWithPostCode:postCode
              startDate:startDate
              endDate:endDate
              maxCandidates:maxCandidates
          completionHandler: ^(PBFireHistory* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRisksServiceApi->getFireHistory: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postCode** | **NSString***| 5 digit Postal code to search | 
 **startDate** | **NSString***| Start time in milliseconds(UTC) | [optional] 
 **endDate** | **NSString***| End time in milliseconds(UTC) | [optional] 
 **maxCandidates** | **NSString***| Maximum response events | [optional] [default to 1]

### Return type

[**PBFireHistory***](PBFireHistory.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFireRiskByAddress**
```objc
-(NSNumber*) getFireRiskByAddressWithAddress: (NSString*) address
        completionHandler: (void (^)(PBFireRiskResponse* output, NSError* error)) handler;
```

Get Fire Risk By Address

Accepts addresses as input and Returns fire risk data by risk types.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // Free-form address text

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Get Fire Risk By Address
[apiInstance getFireRiskByAddressWithAddress:address
          completionHandler: ^(PBFireRiskResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRisksServiceApi->getFireRiskByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Free-form address text | 

### Return type

[**PBFireRiskResponse***](PBFireRiskResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFireRiskByAddressBatch**
```objc
-(NSNumber*) getFireRiskByAddressBatchWithBody: (PBFireRiskByAddressRequest*) body
        completionHandler: (void (^)(PBFireRiskResponseList* output, NSError* error)) handler;
```

Post Fire Risk By Address

This is a Batch offering for 'Fire Risk By Address' service. It accepts a single address or a list of addresses and retrieve fire risk data by risk types.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBFireRiskByAddressRequest* body = [[PBFireRiskByAddressRequest alloc] init]; //  (optional)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Post Fire Risk By Address
[apiInstance getFireRiskByAddressBatchWithBody:body
          completionHandler: ^(PBFireRiskResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRisksServiceApi->getFireRiskByAddressBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBFireRiskByAddressRequest***](PBFireRiskByAddressRequest*.md)|  | [optional] 

### Return type

[**PBFireRiskResponseList***](PBFireRiskResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFireRiskByLocation**
```objc
-(NSNumber*) getFireRiskByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
        completionHandler: (void (^)(PBFireRiskLocationResponse* output, NSError* error)) handler;
```

Get Fire Risk By Location

Accepts latitude & longitude as input and Returns fire risk data by risk types.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of Location
NSString* latitude = @"latitude_example"; // Latitude of Location

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Get Fire Risk By Location
[apiInstance getFireRiskByLocationWithLongitude:longitude
              latitude:latitude
          completionHandler: ^(PBFireRiskLocationResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRisksServiceApi->getFireRiskByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of Location | 
 **latitude** | **NSString***| Latitude of Location | 

### Return type

[**PBFireRiskLocationResponse***](PBFireRiskLocationResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFireRiskByLocationBatch**
```objc
-(NSNumber*) getFireRiskByLocationBatchWithBody: (PBFireRiskByLocationRequest*) body
        completionHandler: (void (^)(PBFireRiskLocationResponseList* output, NSError* error)) handler;
```

Post Fire Risk By Location

This is a Batch offering for 'Fire Risk By Location' service. It accepts a single location coordinate or a list of location coordinates and retrieve fire risk data by risk types.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBFireRiskByLocationRequest* body = [[PBFireRiskByLocationRequest alloc] init]; //  (optional)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Post Fire Risk By Location
[apiInstance getFireRiskByLocationBatchWithBody:body
          completionHandler: ^(PBFireRiskLocationResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRisksServiceApi->getFireRiskByLocationBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBFireRiskByLocationRequest***](PBFireRiskByLocationRequest*.md)|  | [optional] 

### Return type

[**PBFireRiskLocationResponseList***](PBFireRiskLocationResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFireStationByAddress**
```objc
-(NSNumber*) getFireStationByAddressWithAddress: (NSString*) address
    maxCandidates: (NSString*) maxCandidates
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    sortBy: (NSString*) sortBy
    historicTrafficTimeBucket: (NSString*) historicTrafficTimeBucket
        completionHandler: (void (^)(PBFireStations* output, NSError* error)) handler;
```

Fire Station By Address

Accepts addresses as input and Returns nearest fire stations.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // The address to be searched.
NSString* maxCandidates = @"maxCandidates_example"; // Specifies the maximum number of fire stations that this service retrieves. The default value is 3 and maximum value is 5. The retrieved results are traveldistance sorted from the input location. (optional)
NSString* travelTime = @"travelTime_example"; // Max travel time from input location to fire station. Maximum allowed is 2 hours (optional)
NSString* travelTimeUnit = @"travelTimeUnit_example"; // Travel time unit such as minutes (default), hours, seconds or milliseconds. (optional)
NSString* travelDistance = @"travelDistance_example"; // Maximum travel distance from input location to fire station. Maximum allowed is 50 miles (optional)
NSString* travelDistanceUnit = @"travelDistanceUnit_example"; // Travel distance unit such as Feet (default), Kilometers, Miles or Meters. (optional)
NSString* sortBy = @"sortBy_example"; // Sort the fire stations results by either travel time or travel distance (nearest first). Default sorting is by travel time. (optional)
NSString* historicTrafficTimeBucket = @"historicTrafficTimeBucket_example"; // Historic traffic time slab (optional)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Fire Station By Address
[apiInstance getFireStationByAddressWithAddress:address
              maxCandidates:maxCandidates
              travelTime:travelTime
              travelTimeUnit:travelTimeUnit
              travelDistance:travelDistance
              travelDistanceUnit:travelDistanceUnit
              sortBy:sortBy
              historicTrafficTimeBucket:historicTrafficTimeBucket
          completionHandler: ^(PBFireStations* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRisksServiceApi->getFireStationByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| The address to be searched. | 
 **maxCandidates** | **NSString***| Specifies the maximum number of fire stations that this service retrieves. The default value is 3 and maximum value is 5. The retrieved results are traveldistance sorted from the input location. | [optional] 
 **travelTime** | **NSString***| Max travel time from input location to fire station. Maximum allowed is 2 hours | [optional] 
 **travelTimeUnit** | **NSString***| Travel time unit such as minutes (default), hours, seconds or milliseconds. | [optional] 
 **travelDistance** | **NSString***| Maximum travel distance from input location to fire station. Maximum allowed is 50 miles | [optional] 
 **travelDistanceUnit** | **NSString***| Travel distance unit such as Feet (default), Kilometers, Miles or Meters. | [optional] 
 **sortBy** | **NSString***| Sort the fire stations results by either travel time or travel distance (nearest first). Default sorting is by travel time. | [optional] 
 **historicTrafficTimeBucket** | **NSString***| Historic traffic time slab | [optional] 

### Return type

[**PBFireStations***](PBFireStations.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFireStationByLocation**
```objc
-(NSNumber*) getFireStationByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    maxCandidates: (NSString*) maxCandidates
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    sortBy: (NSString*) sortBy
    historicTrafficTimeBucket: (NSString*) historicTrafficTimeBucket
        completionHandler: (void (^)(PBFireStationsLocation* output, NSError* error)) handler;
```

Fire Station By Location

Accepts latitude & longitude as input and Returns nearest fire stations.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of Location
NSString* latitude = @"latitude_example"; // Latitude of Location
NSString* maxCandidates = @"maxCandidates_example"; // Specifies the maximum number of fire stations that this service retrieves. The default value is 3. The retrieved fire stations are distance ordered from the specified location. Maximum of 5 fire stations can be retrieved. (optional)
NSString* travelTime = @"travelTime_example"; // Maximum travel time from input location to fire station. Maximum allowed is 2 hours (optional)
NSString* travelTimeUnit = @"travelTimeUnit_example"; // Travel time unit such as minutes (default), hours, seconds or milliseconds. (optional)
NSString* travelDistance = @"travelDistance_example"; // Maximum travel distance from input location to fire station. Maximum allowed is 50 miles (optional)
NSString* travelDistanceUnit = @"travelDistanceUnit_example"; // Travel distance unit such as Feet (default), Kilometers, Miles or Meters. (optional)
NSString* sortBy = @"sortBy_example"; // Sorting of fire stations in result by travel time/distance (nearest first from input location). (optional)
NSString* historicTrafficTimeBucket = @"historicTrafficTimeBucket_example"; // Historic traffic time slab (optional)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Fire Station By Location
[apiInstance getFireStationByLocationWithLongitude:longitude
              latitude:latitude
              maxCandidates:maxCandidates
              travelTime:travelTime
              travelTimeUnit:travelTimeUnit
              travelDistance:travelDistance
              travelDistanceUnit:travelDistanceUnit
              sortBy:sortBy
              historicTrafficTimeBucket:historicTrafficTimeBucket
          completionHandler: ^(PBFireStationsLocation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRisksServiceApi->getFireStationByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of Location | 
 **latitude** | **NSString***| Latitude of Location | 
 **maxCandidates** | **NSString***| Specifies the maximum number of fire stations that this service retrieves. The default value is 3. The retrieved fire stations are distance ordered from the specified location. Maximum of 5 fire stations can be retrieved. | [optional] 
 **travelTime** | **NSString***| Maximum travel time from input location to fire station. Maximum allowed is 2 hours | [optional] 
 **travelTimeUnit** | **NSString***| Travel time unit such as minutes (default), hours, seconds or milliseconds. | [optional] 
 **travelDistance** | **NSString***| Maximum travel distance from input location to fire station. Maximum allowed is 50 miles | [optional] 
 **travelDistanceUnit** | **NSString***| Travel distance unit such as Feet (default), Kilometers, Miles or Meters. | [optional] 
 **sortBy** | **NSString***| Sorting of fire stations in result by travel time/distance (nearest first from input location). | [optional] 
 **historicTrafficTimeBucket** | **NSString***| Historic traffic time slab | [optional] 

### Return type

[**PBFireStationsLocation***](PBFireStationsLocation.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFloodRiskByAddress**
```objc
-(NSNumber*) getFloodRiskByAddressWithAddress: (NSString*) address
    includeZoneDesc: (NSString*) includeZoneDesc
    includeGeometry: (NSString*) includeGeometry
        completionHandler: (void (^)(PBFloodRiskResponse* output, NSError* error)) handler;
```

Get Flood Risk By Address

Accepts addresses as input and Returns flood risk data for flood zones and base flood elevation values.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // Free-text Address
NSString* includeZoneDesc = @"includeZoneDesc_example"; // Specifies primary zone description. Valid Values: 'Y' or 'N'. (optional)
NSString* includeGeometry = @"includeGeometry_example"; // Y or N (default is N) - if it is Y, then geometry will be part of response (optional)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Get Flood Risk By Address
[apiInstance getFloodRiskByAddressWithAddress:address
              includeZoneDesc:includeZoneDesc
              includeGeometry:includeGeometry
          completionHandler: ^(PBFloodRiskResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRisksServiceApi->getFloodRiskByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Free-text Address | 
 **includeZoneDesc** | **NSString***| Specifies primary zone description. Valid Values: &#39;Y&#39; or &#39;N&#39;. | [optional] 
 **includeGeometry** | **NSString***| Y or N (default is N) - if it is Y, then geometry will be part of response | [optional] 

### Return type

[**PBFloodRiskResponse***](PBFloodRiskResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFloodRiskByAddressBatch**
```objc
-(NSNumber*) getFloodRiskByAddressBatchWithBody: (PBFloodRiskByAddressRequest*) body
        completionHandler: (void (^)(PBFloodRiskResponseList* output, NSError* error)) handler;
```

Post Flood Risk By Address

This is a Batch offering for 'Flood Risk By Address' service. It accepts a single address or a list of addresses and retrieve flood risk data for flood zones and base flood elevation values.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBFloodRiskByAddressRequest* body = [[PBFloodRiskByAddressRequest alloc] init]; //  (optional)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Post Flood Risk By Address
[apiInstance getFloodRiskByAddressBatchWithBody:body
          completionHandler: ^(PBFloodRiskResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRisksServiceApi->getFloodRiskByAddressBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBFloodRiskByAddressRequest***](PBFloodRiskByAddressRequest*.md)|  | [optional] 

### Return type

[**PBFloodRiskResponseList***](PBFloodRiskResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFloodRiskByLocation**
```objc
-(NSNumber*) getFloodRiskByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    includeZoneDesc: (NSString*) includeZoneDesc
    includeGeometry: (NSString*) includeGeometry
        completionHandler: (void (^)(PBFloodRiskLocationResponse* output, NSError* error)) handler;
```

Get Flood Risk By Location

Accepts latitude & longitude as input and Returns flood risk data for flood zones and base flood elevation values.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of Location
NSString* latitude = @"latitude_example"; // Latitude of Location
NSString* includeZoneDesc = @"includeZoneDesc_example"; // Specifies primary zone description. Valid Values: 'Y' or 'N'. Default: 'Y' (optional)
NSString* includeGeometry = @"includeGeometry_example"; // Y or N (default is N) - if it is Y, then geometry will be part of response (optional)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Get Flood Risk By Location
[apiInstance getFloodRiskByLocationWithLongitude:longitude
              latitude:latitude
              includeZoneDesc:includeZoneDesc
              includeGeometry:includeGeometry
          completionHandler: ^(PBFloodRiskLocationResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRisksServiceApi->getFloodRiskByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of Location | 
 **latitude** | **NSString***| Latitude of Location | 
 **includeZoneDesc** | **NSString***| Specifies primary zone description. Valid Values: &#39;Y&#39; or &#39;N&#39;. Default: &#39;Y&#39; | [optional] 
 **includeGeometry** | **NSString***| Y or N (default is N) - if it is Y, then geometry will be part of response | [optional] 

### Return type

[**PBFloodRiskLocationResponse***](PBFloodRiskLocationResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFloodRiskByLocationBatch**
```objc
-(NSNumber*) getFloodRiskByLocationBatchWithBody: (PBFloodRiskByLocationRequest*) body
        completionHandler: (void (^)(PBFloodRiskLocationResponseList* output, NSError* error)) handler;
```

Post Flood Risk By Location

This is a Batch offering for 'Flood Risk By Location' service. It accepts a single location coordinate or a list of location coordinates and retrieve flood risk data for flood zones and base flood elevation values.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBFloodRiskByLocationRequest* body = [[PBFloodRiskByLocationRequest alloc] init]; //  (optional)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Post Flood Risk By Location
[apiInstance getFloodRiskByLocationBatchWithBody:body
          completionHandler: ^(PBFloodRiskLocationResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRisksServiceApi->getFloodRiskByLocationBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBFloodRiskByLocationRequest***](PBFloodRiskByLocationRequest*.md)|  | [optional] 

### Return type

[**PBFloodRiskLocationResponseList***](PBFloodRiskLocationResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

