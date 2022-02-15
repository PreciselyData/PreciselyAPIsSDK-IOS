# PBRisksServiceApi

All URIs are relative to *https://api.precisely.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCrimeRiskByAddress**](PBRisksServiceApi.md#getcrimeriskbyaddress) | **GET** /risks/v1/crime/byaddress | Get Crime Risk By Address
[**getCrimeRiskByAddressBatch**](PBRisksServiceApi.md#getcrimeriskbyaddressbatch) | **POST** /risks/v1/crime/byaddress | Post Crime Risk By Address
[**getCrimeRiskByLocation**](PBRisksServiceApi.md#getcrimeriskbylocation) | **GET** /risks/v1/crime/bylocation | Get Crime Risk By  Location
[**getCrimeRiskByLocationBatch**](PBRisksServiceApi.md#getcrimeriskbylocationbatch) | **POST** /risks/v1/crime/bylocation | Post Crime Risk By Location
[**getDistanceToCoastByAddress**](PBRisksServiceApi.md#getdistancetocoastbyaddress) | **GET** /risks/v1/shoreline/distancetofloodhazard/byaddress | Get Distance To Flood Hazard By Address
[**getDistanceToCoastByAddressBatch**](PBRisksServiceApi.md#getdistancetocoastbyaddressbatch) | **POST** /risks/v1/shoreline/distancetofloodhazard/byaddress | Post Distance To Flood Hazard By Address
[**getDistanceToCoastByLocation**](PBRisksServiceApi.md#getdistancetocoastbylocation) | **GET** /risks/v1/shoreline/distancetofloodhazard/bylocation | Get Distance To Flood Hazard By Location
[**getDistanceToCoastByLocationBatch**](PBRisksServiceApi.md#getdistancetocoastbylocationbatch) | **POST** /risks/v1/shoreline/distancetofloodhazard/bylocation | Post Distance To Flood Hazard By Location
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
[**getFireStationByAddress**](PBRisksServiceApi.md#getfirestationbyaddress) | **GET** /risks/v1/firestation/byaddress | Get Fire Station By Address
[**getFireStationByLocation**](PBRisksServiceApi.md#getfirestationbylocation) | **GET** /risks/v1/firestation/bylocation | Get Fire Station By Location
[**getFloodRiskByAddress**](PBRisksServiceApi.md#getfloodriskbyaddress) | **GET** /risks/v1/flood/byaddress | Get Flood Risk By Address
[**getFloodRiskByAddressBatch**](PBRisksServiceApi.md#getfloodriskbyaddressbatch) | **POST** /risks/v1/flood/byaddress | Post Flood Risk By Address
[**getFloodRiskByLocation**](PBRisksServiceApi.md#getfloodriskbylocation) | **GET** /risks/v1/flood/bylocation | Get Flood Risk By Location
[**getFloodRiskByLocationBatch**](PBRisksServiceApi.md#getfloodriskbylocationbatch) | **POST** /risks/v1/flood/bylocation | Post Flood Risk By Location


# **getCrimeRiskByAddress**
```objc
-(NSURLSessionTask*) getCrimeRiskByAddressWithAddress: (NSString*) address
    type: (NSString*) type
    includeGeometry: (NSString*) includeGeometry
        completionHandler: (void (^)(PBCrimeRiskResponse* output, NSError* error)) handler;
```

Get Crime Risk By Address

Accepts addresses as input and Returns local crime indexes.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // free form address text
NSString* type = @"type_example"; // this is crime type; valid values are following 11 crime types with 'all' as default (more than one can also be given as comma separated types) (optional)
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
 **address** | **NSString***| free form address text | 
 **type** | **NSString***| this is crime type; valid values are following 11 crime types with &#39;all&#39; as default (more than one can also be given as comma separated types) | [optional] 
 **includeGeometry** | **NSString***| Y or N (default is N) - if it is Y, then geometry will be part of response | [optional] 

### Return type

[**PBCrimeRiskResponse***](PBCrimeRiskResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCrimeRiskByAddressBatch**
```objc
-(NSURLSessionTask*) getCrimeRiskByAddressBatchWithCrimeRiskByAddressBatchRequest: (PBCrimeRiskByAddressBatchRequest*) crimeRiskByAddressBatchRequest
        completionHandler: (void (^)(PBCrimeRiskResponseList* output, NSError* error)) handler;
```

Post Crime Risk By Address

This is a Batch offering for 'Crime Risk By Address' service. It accepts a single address or a list of addresses and retrieve local crime indexes.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBCrimeRiskByAddressBatchRequest* crimeRiskByAddressBatchRequest = [[PBCrimeRiskByAddressBatchRequest alloc] init]; // 

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Post Crime Risk By Address
[apiInstance getCrimeRiskByAddressBatchWithCrimeRiskByAddressBatchRequest:crimeRiskByAddressBatchRequest
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
 **crimeRiskByAddressBatchRequest** | [**PBCrimeRiskByAddressBatchRequest***](PBCrimeRiskByAddressBatchRequest.md)|  | 

### Return type

[**PBCrimeRiskResponseList***](PBCrimeRiskResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCrimeRiskByLocation**
```objc
-(NSURLSessionTask*) getCrimeRiskByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    type: (NSString*) type
    includeGeometry: (NSString*) includeGeometry
        completionHandler: (void (^)(PBCrimeRiskResponse* output, NSError* error)) handler;
```

Get Crime Risk By  Location

Accepts latitude/longitude as input and returns and Returns local crime indexes.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // The longitude of the location
NSString* latitude = @"latitude_example"; // The latitude of the location
NSString* type = @"type_example"; // this is crime type; valid values are following 11 crime types with 'all' as default (more than one can also be given as comma separated types) (optional)
NSString* includeGeometry = @"includeGeometry_example"; // Y or N (default is N) - if it is Y, then geometry will be part of response (optional)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Get Crime Risk By  Location
[apiInstance getCrimeRiskByLocationWithLongitude:longitude
              latitude:latitude
              type:type
              includeGeometry:includeGeometry
          completionHandler: ^(PBCrimeRiskResponse* output, NSError* error) {
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
 **type** | **NSString***| this is crime type; valid values are following 11 crime types with &#39;all&#39; as default (more than one can also be given as comma separated types) | [optional] 
 **includeGeometry** | **NSString***| Y or N (default is N) - if it is Y, then geometry will be part of response | [optional] 

### Return type

[**PBCrimeRiskResponse***](PBCrimeRiskResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCrimeRiskByLocationBatch**
```objc
-(NSURLSessionTask*) getCrimeRiskByLocationBatchWithCrimeRiskByLocationBatchRequest: (PBCrimeRiskByLocationBatchRequest*) crimeRiskByLocationBatchRequest
        completionHandler: (void (^)(PBCrimeRiskResponseList* output, NSError* error)) handler;
```

Post Crime Risk By Location

This is a Batch offering for 'Crime Risk By Location' service. It accepts a single location coordinate or a list of location coordinates and retrieve local crime indexes.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBCrimeRiskByLocationBatchRequest* crimeRiskByLocationBatchRequest = [[PBCrimeRiskByLocationBatchRequest alloc] init]; // 

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Post Crime Risk By Location
[apiInstance getCrimeRiskByLocationBatchWithCrimeRiskByLocationBatchRequest:crimeRiskByLocationBatchRequest
          completionHandler: ^(PBCrimeRiskResponseList* output, NSError* error) {
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
 **crimeRiskByLocationBatchRequest** | [**PBCrimeRiskByLocationBatchRequest***](PBCrimeRiskByLocationBatchRequest.md)|  | 

### Return type

[**PBCrimeRiskResponseList***](PBCrimeRiskResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDistanceToCoastByAddress**
```objc
-(NSURLSessionTask*) getDistanceToCoastByAddressWithAddress: (NSString*) address
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
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // The address of the location (optional)
NSString* maxCandidates = @"maxCandidates_example"; // This specifies the value of maxCandidates (optional)
NSString* waterBodyType = @"waterBodyType_example"; // This specifies the value of waterBodyType (optional)
NSString* searchDistance = @"searchDistance_example"; // This specifies the search distance (optional)
NSString* searchDistanceUnit = @"searchDistanceUnit_example"; // miles (default value),feet, kilometers, meters (optional)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Get Distance To Flood Hazard By Address
[apiInstance getDistanceToCoastByAddressWithAddress:address
              maxCandidates:maxCandidates
              waterBodyType:waterBodyType
              searchDistance:searchDistance
              searchDistanceUnit:searchDistanceUnit
          completionHandler: ^(PBWaterBodyResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRisksServiceApi->getDistanceToCoastByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| The address of the location | [optional] 
 **maxCandidates** | **NSString***| This specifies the value of maxCandidates | [optional] 
 **waterBodyType** | **NSString***| This specifies the value of waterBodyType | [optional] 
 **searchDistance** | **NSString***| This specifies the search distance | [optional] 
 **searchDistanceUnit** | **NSString***| miles (default value),feet, kilometers, meters | [optional] 

### Return type

[**PBWaterBodyResponse***](PBWaterBodyResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDistanceToCoastByAddressBatch**
```objc
-(NSURLSessionTask*) getDistanceToCoastByAddressBatchWithDistanceToFloodHazardAddressRequest: (PBDistanceToFloodHazardAddressRequest*) distanceToFloodHazardAddressRequest
        completionHandler: (void (^)(PBDistanceToFloodHazardResponse* output, NSError* error)) handler;
```

Post Distance To Flood Hazard By Address

This is a Batch offering for 'Distance To Flood Hazard By Address' service. It accepts a single address or a list of addresses and retrieve the distance from nearest water bodies along with body name and location.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBDistanceToFloodHazardAddressRequest* distanceToFloodHazardAddressRequest = [[PBDistanceToFloodHazardAddressRequest alloc] init]; // 

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Post Distance To Flood Hazard By Address
[apiInstance getDistanceToCoastByAddressBatchWithDistanceToFloodHazardAddressRequest:distanceToFloodHazardAddressRequest
          completionHandler: ^(PBDistanceToFloodHazardResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRisksServiceApi->getDistanceToCoastByAddressBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **distanceToFloodHazardAddressRequest** | [**PBDistanceToFloodHazardAddressRequest***](PBDistanceToFloodHazardAddressRequest.md)|  | 

### Return type

[**PBDistanceToFloodHazardResponse***](PBDistanceToFloodHazardResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDistanceToCoastByLocation**
```objc
-(NSURLSessionTask*) getDistanceToCoastByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    maxCandidates: (NSString*) maxCandidates
    waterBodyType: (NSString*) waterBodyType
    searchDistance: (NSString*) searchDistance
    searchDistanceUnit: (NSString*) searchDistanceUnit
        completionHandler: (void (^)(PBWaterBodyResponse* output, NSError* error)) handler;
```

Get Distance To Flood Hazard By Location

Accepts latitude & longitude as input and Returns the distance from nearest water bodies along with body name and location.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // The longitude of the location (optional)
NSString* latitude = @"latitude_example"; // The latitude of the location (optional)
NSString* maxCandidates = @"maxCandidates_example"; // This specifies the value of maxCandidates (optional)
NSString* waterBodyType = @"waterBodyType_example"; // This specifies the value of waterBodyType (optional)
NSString* searchDistance = @"searchDistance_example"; // This specifies the search distance (optional)
NSString* searchDistanceUnit = @"searchDistanceUnit_example"; // miles (default value),feet, kilometers, meters (optional)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Get Distance To Flood Hazard By Location
[apiInstance getDistanceToCoastByLocationWithLongitude:longitude
              latitude:latitude
              maxCandidates:maxCandidates
              waterBodyType:waterBodyType
              searchDistance:searchDistance
              searchDistanceUnit:searchDistanceUnit
          completionHandler: ^(PBWaterBodyResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRisksServiceApi->getDistanceToCoastByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| The longitude of the location | [optional] 
 **latitude** | **NSString***| The latitude of the location | [optional] 
 **maxCandidates** | **NSString***| This specifies the value of maxCandidates | [optional] 
 **waterBodyType** | **NSString***| This specifies the value of waterBodyType | [optional] 
 **searchDistance** | **NSString***| This specifies the search distance | [optional] 
 **searchDistanceUnit** | **NSString***| miles (default value),feet, kilometers, meters | [optional] 

### Return type

[**PBWaterBodyResponse***](PBWaterBodyResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDistanceToCoastByLocationBatch**
```objc
-(NSURLSessionTask*) getDistanceToCoastByLocationBatchWithDistanceToFloodHazardLocationRequest: (PBDistanceToFloodHazardLocationRequest*) distanceToFloodHazardLocationRequest
        completionHandler: (void (^)(PBDistanceToFloodHazardResponse* output, NSError* error)) handler;
```

Post Distance To Flood Hazard By Location

This is a Batch offering for 'Distance To Flood Hazard By Location' service. It accepts a single location coordinate or a list of location coordinates and retrieve the distance from nearest water bodies along with body name and location.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBDistanceToFloodHazardLocationRequest* distanceToFloodHazardLocationRequest = [[PBDistanceToFloodHazardLocationRequest alloc] init]; // 

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Post Distance To Flood Hazard By Location
[apiInstance getDistanceToCoastByLocationBatchWithDistanceToFloodHazardLocationRequest:distanceToFloodHazardLocationRequest
          completionHandler: ^(PBDistanceToFloodHazardResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRisksServiceApi->getDistanceToCoastByLocationBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **distanceToFloodHazardLocationRequest** | [**PBDistanceToFloodHazardLocationRequest***](PBDistanceToFloodHazardLocationRequest.md)|  | 

### Return type

[**PBDistanceToFloodHazardResponse***](PBDistanceToFloodHazardResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEarthquakeHistory**
```objc
-(NSURLSessionTask*) getEarthquakeHistoryWithPostCode: (NSString*) postCode
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
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* postCode = @"postCode_example"; // 5 digit Postal code to search
NSString* startDate = @"startDate_example"; // Start time in milliseconds(UTC) (optional)
NSString* endDate = @"endDate_example"; // End time in milliseconds(UTC) (optional)
NSString* minMagnitude = @"minMagnitude_example"; // Minimum richter scale magnitude (optional)
NSString* maxMagnitude = @"maxMagnitude_example"; // Maximum Richter scale magnitude (optional)
NSString* maxCandidates = @"maxCandidates_example"; // Maximum response events (optional)

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
 **maxCandidates** | **NSString***| Maximum response events | [optional] 

### Return type

[**PBEarthquakeHistory***](PBEarthquakeHistory.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEarthquakeRiskByAddress**
```objc
-(NSURLSessionTask*) getEarthquakeRiskByAddressWithAddress: (NSString*) address
    richterValue: (NSString*) richterValue
    includeGeometry: (NSString*) includeGeometry
        completionHandler: (void (^)(PBEarthquakeRiskResponse* output, NSError* error)) handler;
```

Get Earthquake Risk By Address

Accepts addresses as input and Returns counts of earthquakes for various richter measurements and values.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // free form address text
NSString* richterValue = @"richterValue_example"; // all (default value), R0, R1, R2, R3, R4, R5, R6, R7, R0_GE, R1_GE, R2_GE, R3_GE, R4_GE, R5_GE, R6_GE, R7_GE (optional)
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
 **address** | **NSString***| free form address text | 
 **richterValue** | **NSString***| all (default value), R0, R1, R2, R3, R4, R5, R6, R7, R0_GE, R1_GE, R2_GE, R3_GE, R4_GE, R5_GE, R6_GE, R7_GE | [optional] 
 **includeGeometry** | **NSString***| Y or N (default is N) - if it is Y, then geometry will be part of response | [optional] 

### Return type

[**PBEarthquakeRiskResponse***](PBEarthquakeRiskResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEarthquakeRiskByAddressBatch**
```objc
-(NSURLSessionTask*) getEarthquakeRiskByAddressBatchWithEarthquakeRiskByAddressRequest: (PBEarthquakeRiskByAddressRequest*) earthquakeRiskByAddressRequest
        completionHandler: (void (^)(PBEarthquakeRiskResponseList* output, NSError* error)) handler;
```

Post Earthquake Risk By Address

This is a Batch offering for 'Earthquake Risk By Address' service. It accepts a single address or a list of addresses and retrieve counts of earthquakes for various richter measurements and values.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBEarthquakeRiskByAddressRequest* earthquakeRiskByAddressRequest = [[PBEarthquakeRiskByAddressRequest alloc] init]; // 

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Post Earthquake Risk By Address
[apiInstance getEarthquakeRiskByAddressBatchWithEarthquakeRiskByAddressRequest:earthquakeRiskByAddressRequest
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
 **earthquakeRiskByAddressRequest** | [**PBEarthquakeRiskByAddressRequest***](PBEarthquakeRiskByAddressRequest.md)|  | 

### Return type

[**PBEarthquakeRiskResponseList***](PBEarthquakeRiskResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEarthquakeRiskByLocation**
```objc
-(NSURLSessionTask*) getEarthquakeRiskByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    richterValue: (NSString*) richterValue
    includeGeometry: (NSString*) includeGeometry
        completionHandler: (void (^)(PBEarthquakeRiskResponse* output, NSError* error)) handler;
```

Get Earthquake Risk By Location

Accepts latitude & longitude as input and Returns counts of earthquakes for various richter measurements and values.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // The longitude of the location
NSString* latitude = @"latitude_example"; // The latitude of the location
NSString* richterValue = @"richterValue_example"; // all (default value), R0, R1, R2, R3, R4, R5, R6, R7, R0_GE, R1_GE, R2_GE, R3_GE, R4_GE, R5_GE, R6_GE, R7_GE (optional)
NSString* includeGeometry = @"includeGeometry_example"; // Y or N (default is N) - if it is Y, then geometry will be part of response (optional)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Get Earthquake Risk By Location
[apiInstance getEarthquakeRiskByLocationWithLongitude:longitude
              latitude:latitude
              richterValue:richterValue
              includeGeometry:includeGeometry
          completionHandler: ^(PBEarthquakeRiskResponse* output, NSError* error) {
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
 **richterValue** | **NSString***| all (default value), R0, R1, R2, R3, R4, R5, R6, R7, R0_GE, R1_GE, R2_GE, R3_GE, R4_GE, R5_GE, R6_GE, R7_GE | [optional] 
 **includeGeometry** | **NSString***| Y or N (default is N) - if it is Y, then geometry will be part of response | [optional] 

### Return type

[**PBEarthquakeRiskResponse***](PBEarthquakeRiskResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEarthquakeRiskByLocationBatch**
```objc
-(NSURLSessionTask*) getEarthquakeRiskByLocationBatchWithEarthquakeRiskByLocationRequest: (PBEarthquakeRiskByLocationRequest*) earthquakeRiskByLocationRequest
        completionHandler: (void (^)(PBEarthquakeRiskResponseList* output, NSError* error)) handler;
```

Post Earthquake Risk By Location

This is a Batch offering for 'Earthquake Risk By Location' service. It accepts a single location coordinate or a list of location coordinates and retrieve counts of earthquakes for various richter measurements and values.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBEarthquakeRiskByLocationRequest* earthquakeRiskByLocationRequest = [[PBEarthquakeRiskByLocationRequest alloc] init]; // 

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Post Earthquake Risk By Location
[apiInstance getEarthquakeRiskByLocationBatchWithEarthquakeRiskByLocationRequest:earthquakeRiskByLocationRequest
          completionHandler: ^(PBEarthquakeRiskResponseList* output, NSError* error) {
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
 **earthquakeRiskByLocationRequest** | [**PBEarthquakeRiskByLocationRequest***](PBEarthquakeRiskByLocationRequest.md)|  | 

### Return type

[**PBEarthquakeRiskResponseList***](PBEarthquakeRiskResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFireHistory**
```objc
-(NSURLSessionTask*) getFireHistoryWithPostCode: (NSString*) postCode
    startDate: (NSString*) startDate
    endDate: (NSString*) endDate
    maxCandidates: (NSString*) maxCandidates
        completionHandler: (void (^)(PBFireHistory* output, NSError* error)) handler;
```

Get Fire History

Accepts postcode as input and Returns fire event details for a particular postcode.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* postCode = @"postCode_example"; // 5 digit Postal code to search
NSString* startDate = @"startDate_example"; // Start time in milliseconds(UTC) (optional)
NSString* endDate = @"endDate_example"; // End time in milliseconds(UTC) (optional)
NSString* maxCandidates = @"maxCandidates_example"; // Maximum response events (optional)

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
 **maxCandidates** | **NSString***| Maximum response events | [optional] 

### Return type

[**PBFireHistory***](PBFireHistory.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFireRiskByAddress**
```objc
-(NSURLSessionTask*) getFireRiskByAddressWithAddress: (NSString*) address
    includeGeometry: (NSString*) includeGeometry
        completionHandler: (void (^)(PBFireRiskResponse* output, NSError* error)) handler;
```

Get Fire Risk By Address

Accepts addresses as input and Returns fire risk data by risk types.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // Free form address text
NSString* includeGeometry = @"includeGeometry_example"; // Flag to return Geometry default is N (optional)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Get Fire Risk By Address
[apiInstance getFireRiskByAddressWithAddress:address
              includeGeometry:includeGeometry
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
 **address** | **NSString***| Free form address text | 
 **includeGeometry** | **NSString***| Flag to return Geometry default is N | [optional] 

### Return type

[**PBFireRiskResponse***](PBFireRiskResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFireRiskByAddressBatch**
```objc
-(NSURLSessionTask*) getFireRiskByAddressBatchWithFireRiskByAddressRequest: (PBFireRiskByAddressRequest*) fireRiskByAddressRequest
        completionHandler: (void (^)(PBFireRiskResponseList* output, NSError* error)) handler;
```

Post Fire Risk By Address

This is a Batch offering for 'Fire Risk By Address' service. It accepts a single address or a list of addresses and retrieve fire risk data by risk types.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBFireRiskByAddressRequest* fireRiskByAddressRequest = [[PBFireRiskByAddressRequest alloc] init]; // 

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Post Fire Risk By Address
[apiInstance getFireRiskByAddressBatchWithFireRiskByAddressRequest:fireRiskByAddressRequest
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
 **fireRiskByAddressRequest** | [**PBFireRiskByAddressRequest***](PBFireRiskByAddressRequest.md)|  | 

### Return type

[**PBFireRiskResponseList***](PBFireRiskResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFireRiskByLocation**
```objc
-(NSURLSessionTask*) getFireRiskByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    includeGeometry: (NSString*) includeGeometry
        completionHandler: (void (^)(PBFireRiskResponse* output, NSError* error)) handler;
```

Get Fire Risk By Location

Accepts latitude & longitude as input and Returns fire risk data by risk types.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of Location
NSString* latitude = @"latitude_example"; // Latitude of Location
NSString* includeGeometry = @"includeGeometry_example"; // Flag to return Geometry default is N (optional)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Get Fire Risk By Location
[apiInstance getFireRiskByLocationWithLongitude:longitude
              latitude:latitude
              includeGeometry:includeGeometry
          completionHandler: ^(PBFireRiskResponse* output, NSError* error) {
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
 **includeGeometry** | **NSString***| Flag to return Geometry default is N | [optional] 

### Return type

[**PBFireRiskResponse***](PBFireRiskResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFireRiskByLocationBatch**
```objc
-(NSURLSessionTask*) getFireRiskByLocationBatchWithFireRiskByLocationRequest: (PBFireRiskByLocationRequest*) fireRiskByLocationRequest
        completionHandler: (void (^)(PBFireRiskResponseList* output, NSError* error)) handler;
```

Post Fire Risk By Location

This is a Batch offering for 'Fire Risk By Location' service. It accepts a single location coordinate or a list of location coordinates and retrieve fire risk data by risk types.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBFireRiskByLocationRequest* fireRiskByLocationRequest = [[PBFireRiskByLocationRequest alloc] init]; // 

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Post Fire Risk By Location
[apiInstance getFireRiskByLocationBatchWithFireRiskByLocationRequest:fireRiskByLocationRequest
          completionHandler: ^(PBFireRiskResponseList* output, NSError* error) {
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
 **fireRiskByLocationRequest** | [**PBFireRiskByLocationRequest***](PBFireRiskByLocationRequest.md)|  | 

### Return type

[**PBFireRiskResponseList***](PBFireRiskResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFireStationByAddress**
```objc
-(NSURLSessionTask*) getFireStationByAddressWithAddress: (NSString*) address
    maxCandidates: (NSString*) maxCandidates
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    sortBy: (NSString*) sortBy
    historicTrafficTimeBucket: (NSString*) historicTrafficTimeBucket
        completionHandler: (void (^)(PBFireStations* output, NSError* error)) handler;
```

Get Fire Station By Address

Accepts addresses as input and Returns nearest fire stations.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // Free Address
NSString* maxCandidates = @"maxCandidates_example"; // Specifies the maximum number of fire stations that this service retrieves. The default value is 3 and maximum value is 5. The retrieved results are traveldistance sorted from the input location. (optional)
NSString* travelTime = @"travelTime_example"; // Max travel time from input location to fire station. Maximum allowed is 2 hours (optional)
NSString* travelTimeUnit = @"travelTimeUnit_example"; // minutes (default), hours, seconds, milliseconds (optional)
NSString* travelDistance = @"travelDistance_example"; // Max travel distance from input location to fire station. Maximum allowed is 50 miles (optional)
NSString* travelDistanceUnit = @"travelDistanceUnit_example"; // Feet (default), Kilometers, Miles, Meters (optional)
NSString* sortBy = @"sortBy_example"; // time (default), distance (optional)
NSString* historicTrafficTimeBucket = @"historicTrafficTimeBucket_example"; // Historic traffic time slab (optional)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Get Fire Station By Address
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
 **address** | **NSString***| Free Address | 
 **maxCandidates** | **NSString***| Specifies the maximum number of fire stations that this service retrieves. The default value is 3 and maximum value is 5. The retrieved results are traveldistance sorted from the input location. | [optional] 
 **travelTime** | **NSString***| Max travel time from input location to fire station. Maximum allowed is 2 hours | [optional] 
 **travelTimeUnit** | **NSString***| minutes (default), hours, seconds, milliseconds | [optional] 
 **travelDistance** | **NSString***| Max travel distance from input location to fire station. Maximum allowed is 50 miles | [optional] 
 **travelDistanceUnit** | **NSString***| Feet (default), Kilometers, Miles, Meters | [optional] 
 **sortBy** | **NSString***| time (default), distance | [optional] 
 **historicTrafficTimeBucket** | **NSString***| Historic traffic time slab | [optional] 

### Return type

[**PBFireStations***](PBFireStations.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFireStationByLocation**
```objc
-(NSURLSessionTask*) getFireStationByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    maxCandidates: (NSString*) maxCandidates
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    sortBy: (NSString*) sortBy
    historicTrafficTimeBucket: (NSString*) historicTrafficTimeBucket
        completionHandler: (void (^)(PBFireStations* output, NSError* error)) handler;
```

Get Fire Station By Location

Accepts latitude & longitude as input and Returns nearest fire stations.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of Location
NSString* latitude = @"latitude_example"; // Latitude of Location
NSString* maxCandidates = @"maxCandidates_example"; // Specifies the maximum number of fire stations that this service retrieves. The default value is 3 and maximum value is 5. The retrieved results are traveldistance sorted from the input location. (optional)
NSString* travelTime = @"travelTime_example"; // Max travel time from input location to fire station. Maximum allowed is 2 hours (optional)
NSString* travelTimeUnit = @"travelTimeUnit_example"; // minutes (default), hours, seconds, milliseconds (optional)
NSString* travelDistance = @"travelDistance_example"; // Max travel distance from input location to fire station. Maximum allowed is 50 miles (optional)
NSString* travelDistanceUnit = @"travelDistanceUnit_example"; // Feet (default), Kilometers, Miles, Meters (optional)
NSString* sortBy = @"sortBy_example"; // time (default), distance (optional)
NSString* historicTrafficTimeBucket = @"historicTrafficTimeBucket_example"; // Historic traffic time slab (optional)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Get Fire Station By Location
[apiInstance getFireStationByLocationWithLongitude:longitude
              latitude:latitude
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
                            NSLog(@"Error calling PBRisksServiceApi->getFireStationByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of Location | 
 **latitude** | **NSString***| Latitude of Location | 
 **maxCandidates** | **NSString***| Specifies the maximum number of fire stations that this service retrieves. The default value is 3 and maximum value is 5. The retrieved results are traveldistance sorted from the input location. | [optional] 
 **travelTime** | **NSString***| Max travel time from input location to fire station. Maximum allowed is 2 hours | [optional] 
 **travelTimeUnit** | **NSString***| minutes (default), hours, seconds, milliseconds | [optional] 
 **travelDistance** | **NSString***| Max travel distance from input location to fire station. Maximum allowed is 50 miles | [optional] 
 **travelDistanceUnit** | **NSString***| Feet (default), Kilometers, Miles, Meters | [optional] 
 **sortBy** | **NSString***| time (default), distance | [optional] 
 **historicTrafficTimeBucket** | **NSString***| Historic traffic time slab | [optional] 

### Return type

[**PBFireStations***](PBFireStations.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFloodRiskByAddress**
```objc
-(NSURLSessionTask*) getFloodRiskByAddressWithAddress: (NSString*) address
    includeZoneDesc: (NSString*) includeZoneDesc
    includeGeometry: (NSString*) includeGeometry
        completionHandler: (void (^)(PBFloodRiskResponse* output, NSError* error)) handler;
```

Get Flood Risk By Address

Accepts addresses as input and Returns flood risk data for flood zones and base flood elevation values.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // Free text Address
NSString* includeZoneDesc = @"includeZoneDesc_example"; // Flag to return zone description (optional)
NSString* includeGeometry = @"includeGeometry_example"; // Flag to return Geometry (optional)

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
 **address** | **NSString***| Free text Address | 
 **includeZoneDesc** | **NSString***| Flag to return zone description | [optional] 
 **includeGeometry** | **NSString***| Flag to return Geometry | [optional] 

### Return type

[**PBFloodRiskResponse***](PBFloodRiskResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFloodRiskByAddressBatch**
```objc
-(NSURLSessionTask*) getFloodRiskByAddressBatchWithFloodRiskByAddressRequest: (PBFloodRiskByAddressRequest*) floodRiskByAddressRequest
        completionHandler: (void (^)(PBFloodRiskResponseList* output, NSError* error)) handler;
```

Post Flood Risk By Address

This is a Batch offering for 'Flood Risk By Address' service. It accepts a single address or a list of addresses and retrieve flood risk data for flood zones and base flood elevation values.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBFloodRiskByAddressRequest* floodRiskByAddressRequest = [[PBFloodRiskByAddressRequest alloc] init]; // 

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Post Flood Risk By Address
[apiInstance getFloodRiskByAddressBatchWithFloodRiskByAddressRequest:floodRiskByAddressRequest
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
 **floodRiskByAddressRequest** | [**PBFloodRiskByAddressRequest***](PBFloodRiskByAddressRequest.md)|  | 

### Return type

[**PBFloodRiskResponseList***](PBFloodRiskResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFloodRiskByLocation**
```objc
-(NSURLSessionTask*) getFloodRiskByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    includeZoneDesc: (NSString*) includeZoneDesc
    includeGeometry: (NSString*) includeGeometry
        completionHandler: (void (^)(PBFloodRiskResponse* output, NSError* error)) handler;
```

Get Flood Risk By Location

Accepts latitude & longitude as input and Returns flood risk data for flood zones and base flood elevation values.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of Location
NSString* latitude = @"latitude_example"; // Latitude of Location
NSString* includeZoneDesc = @"includeZoneDesc_example"; // Flag to return zone description (optional)
NSString* includeGeometry = @"includeGeometry_example"; // Flag to return Geometry (optional)

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Get Flood Risk By Location
[apiInstance getFloodRiskByLocationWithLongitude:longitude
              latitude:latitude
              includeZoneDesc:includeZoneDesc
              includeGeometry:includeGeometry
          completionHandler: ^(PBFloodRiskResponse* output, NSError* error) {
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
 **includeZoneDesc** | **NSString***| Flag to return zone description | [optional] 
 **includeGeometry** | **NSString***| Flag to return Geometry | [optional] 

### Return type

[**PBFloodRiskResponse***](PBFloodRiskResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFloodRiskByLocationBatch**
```objc
-(NSURLSessionTask*) getFloodRiskByLocationBatchWithFloodRiskByLocationRequest: (PBFloodRiskByLocationRequest*) floodRiskByLocationRequest
        completionHandler: (void (^)(PBFloodRiskResponseList* output, NSError* error)) handler;
```

Post Flood Risk By Location

This is a Batch offering for 'Flood Risk By Location' service. It accepts a single location coordinate or a list of location coordinates and retrieve flood risk data for flood zones and base flood elevation values.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBFloodRiskByLocationRequest* floodRiskByLocationRequest = [[PBFloodRiskByLocationRequest alloc] init]; // 

PBRisksServiceApi*apiInstance = [[PBRisksServiceApi alloc] init];

// Post Flood Risk By Location
[apiInstance getFloodRiskByLocationBatchWithFloodRiskByLocationRequest:floodRiskByLocationRequest
          completionHandler: ^(PBFloodRiskResponseList* output, NSError* error) {
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
 **floodRiskByLocationRequest** | [**PBFloodRiskByLocationRequest***](PBFloodRiskByLocationRequest.md)|  | 

### Return type

[**PBFloodRiskResponseList***](PBFloodRiskResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

