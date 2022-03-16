# PBStreetsServiceApi

All URIs are relative to *https://api.precisely.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getIntersectionByAddress**](PBStreetsServiceApi.md#getintersectionbyaddress) | **GET** /streets/v1/intersection/byaddress | Nearest Intersection By Address
[**getIntersectionByLocation**](PBStreetsServiceApi.md#getintersectionbylocation) | **GET** /streets/v1/intersection/bylocation | Nearest Intersection By Location
[**getNearestSpeedLimit**](PBStreetsServiceApi.md#getnearestspeedlimit) | **GET** /streets/v1/speedlimit | Nearest Speedlimit


# **getIntersectionByAddress**
```objc
-(NSNumber*) getIntersectionByAddressWithAddress: (NSString*) address
    roadClass: (NSString*) roadClass
    driveTime: (NSString*) driveTime
    driveTimeUnit: (NSString*) driveTimeUnit
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    historicSpeed: (NSString*) historicSpeed
    maxCandidates: (NSString*) maxCandidates
        completionHandler: (void (^)(PBIntersectionResponse* output, NSError* error)) handler;
```

Nearest Intersection By Address

This service accepts an address as input and returns the Nearest Intersection.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // Address
NSString* roadClass = @"roadClass_example"; // Filters roads with specified class, allowed values are (Major, Motorways, Other and All), default is All (optional)
NSString* driveTime = @"driveTime_example"; // Returns Intersection in specified drive time (optional)
NSString* driveTimeUnit = @"driveTimeUnit_example"; // Drive time unit, allowed values are (hours, minutes, seconds and milliseconds), default is minutes (optional)
NSString* searchRadius = @"searchRadius_example"; // Search radius within which user wants to search, default is 50 miles (optional)
NSString* searchRadiusUnit = @"searchRadiusUnit_example"; // Search radius unit, allowed values are (feet, meter, kilometers and miles) (optional)
NSString* historicSpeed = @"historicSpeed_example"; // Traffic flow in peak time, allowed values are (AMPEAK,PMPEAK,OFFPEAK,NIGHT) (optional)
NSString* maxCandidates = @"maxCandidates_example"; // max candidates to be returned default is 1 (optional)

PBStreetsServiceApi*apiInstance = [[PBStreetsServiceApi alloc] init];

// Nearest Intersection By Address
[apiInstance getIntersectionByAddressWithAddress:address
              roadClass:roadClass
              driveTime:driveTime
              driveTimeUnit:driveTimeUnit
              searchRadius:searchRadius
              searchRadiusUnit:searchRadiusUnit
              historicSpeed:historicSpeed
              maxCandidates:maxCandidates
          completionHandler: ^(PBIntersectionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBStreetsServiceApi->getIntersectionByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Address | 
 **roadClass** | **NSString***| Filters roads with specified class, allowed values are (Major, Motorways, Other and All), default is All | [optional] 
 **driveTime** | **NSString***| Returns Intersection in specified drive time | [optional] 
 **driveTimeUnit** | **NSString***| Drive time unit, allowed values are (hours, minutes, seconds and milliseconds), default is minutes | [optional] 
 **searchRadius** | **NSString***| Search radius within which user wants to search, default is 50 miles | [optional] 
 **searchRadiusUnit** | **NSString***| Search radius unit, allowed values are (feet, meter, kilometers and miles) | [optional] 
 **historicSpeed** | **NSString***| Traffic flow in peak time, allowed values are (AMPEAK,PMPEAK,OFFPEAK,NIGHT) | [optional] 
 **maxCandidates** | **NSString***| max candidates to be returned default is 1 | [optional] 

### Return type

[**PBIntersectionResponse***](PBIntersectionResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIntersectionByLocation**
```objc
-(NSNumber*) getIntersectionByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    roadClass: (NSString*) roadClass
    driveTime: (NSString*) driveTime
    driveTimeUnit: (NSString*) driveTimeUnit
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    historicSpeed: (NSString*) historicSpeed
    maxCandidates: (NSString*) maxCandidates
        completionHandler: (void (^)(PBIntersectionResponse* output, NSError* error)) handler;
```

Nearest Intersection By Location

This service accepts latitude/longitude as input and returns the Nearest Intersection.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of the location.
NSString* latitude = @"latitude_example"; // Latitude of the location.
NSString* roadClass = @"roadClass_example"; // Filters roads with specified class, allowed values are (Major, Motorways, Other and All), default is All (optional)
NSString* driveTime = @"driveTime_example"; // Returns Intersection in specified drive time (optional)
NSString* driveTimeUnit = @"driveTimeUnit_example"; // Drive time unit, allowed values are (hours, minutes, seconds and milliseconds), default is minutes (optional)
NSString* searchRadius = @"searchRadius_example"; // Search radius within which user wants to search, default is 50 miles (optional)
NSString* searchRadiusUnit = @"searchRadiusUnit_example"; // Search radius unit, allowed values are (feet, meter, kilometers and miles) (optional)
NSString* historicSpeed = @"historicSpeed_example"; // Traffic flow in peak time, allowed values are (AMPEAK,PMPEAK,OFFPEAK,NIGHT) (optional)
NSString* maxCandidates = @"maxCandidates_example"; // max candidates to be returned default is 1 (optional)

PBStreetsServiceApi*apiInstance = [[PBStreetsServiceApi alloc] init];

// Nearest Intersection By Location
[apiInstance getIntersectionByLocationWithLongitude:longitude
              latitude:latitude
              roadClass:roadClass
              driveTime:driveTime
              driveTimeUnit:driveTimeUnit
              searchRadius:searchRadius
              searchRadiusUnit:searchRadiusUnit
              historicSpeed:historicSpeed
              maxCandidates:maxCandidates
          completionHandler: ^(PBIntersectionResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBStreetsServiceApi->getIntersectionByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of the location. | 
 **latitude** | **NSString***| Latitude of the location. | 
 **roadClass** | **NSString***| Filters roads with specified class, allowed values are (Major, Motorways, Other and All), default is All | [optional] 
 **driveTime** | **NSString***| Returns Intersection in specified drive time | [optional] 
 **driveTimeUnit** | **NSString***| Drive time unit, allowed values are (hours, minutes, seconds and milliseconds), default is minutes | [optional] 
 **searchRadius** | **NSString***| Search radius within which user wants to search, default is 50 miles | [optional] 
 **searchRadiusUnit** | **NSString***| Search radius unit, allowed values are (feet, meter, kilometers and miles) | [optional] 
 **historicSpeed** | **NSString***| Traffic flow in peak time, allowed values are (AMPEAK,PMPEAK,OFFPEAK,NIGHT) | [optional] 
 **maxCandidates** | **NSString***| max candidates to be returned default is 1 | [optional] 

### Return type

[**PBIntersectionResponse***](PBIntersectionResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNearestSpeedLimit**
```objc
-(NSNumber*) getNearestSpeedLimitWithPath: (NSString*) path
        completionHandler: (void (^)(PBSpeedLimit* output, NSError* error)) handler;
```

Nearest Speedlimit

This service accepts point coordinates of a path as input and returns the posted speed limit of the road segment on which this path will snap.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* path = @"path_example"; // Accepts multiple points which will be snapped to the nearest road segment. Longitude and Latitude will be comma separated (longitude,latitude) and Point Coordinates will be separated by semi-colon(;)

PBStreetsServiceApi*apiInstance = [[PBStreetsServiceApi alloc] init];

// Nearest Speedlimit
[apiInstance getNearestSpeedLimitWithPath:path
          completionHandler: ^(PBSpeedLimit* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBStreetsServiceApi->getNearestSpeedLimit: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **NSString***| Accepts multiple points which will be snapped to the nearest road segment. Longitude and Latitude will be comma separated (longitude,latitude) and Point Coordinates will be separated by semi-colon(;) | 

### Return type

[**PBSpeedLimit***](PBSpeedLimit.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

