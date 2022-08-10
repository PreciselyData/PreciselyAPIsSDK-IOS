# PBZonesServiceApi

All URIs are relative to *https://api.precisely.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBasicBoundaryByAddress**](PBZonesServiceApi.md#getbasicboundarybyaddress) | **GET** /zones/v1/basicboundary/byaddress | Gets Basic Boundary by Address.
[**getBasicBoundaryByLocation**](PBZonesServiceApi.md#getbasicboundarybylocation) | **GET** /zones/v1/basicboundary/bylocation | Gets Basic Boundary by Location.
[**getPOIBoundaryByAddress**](PBZonesServiceApi.md#getpoiboundarybyaddress) | **GET** /zones/v1/poiboundary/byaddress | Gets Point of Interests Boundary by Address.
[**getPOIBoundaryByAddressBatch**](PBZonesServiceApi.md#getpoiboundarybyaddressbatch) | **POST** /zones/v1/poiboundary/byaddress | Batch method for getting Point of Interests Boundary by Address.
[**getPOIBoundaryByLocation**](PBZonesServiceApi.md#getpoiboundarybylocation) | **GET** /zones/v1/poiboundary/bylocation | Get Point of Interests Boundary by Location.
[**getPOIBoundaryByLocationBatch**](PBZonesServiceApi.md#getpoiboundarybylocationbatch) | **POST** /zones/v1/poiboundary/bylocation | Batch method for getting Point of Interests Boundary by Location.
[**getTravelBoundaryByDistance**](PBZonesServiceApi.md#gettravelboundarybydistance) | **GET** /zones/v1/travelboundary/bydistance | Get TravelBoundary By Distance.
[**getTravelBoundaryByTime**](PBZonesServiceApi.md#gettravelboundarybytime) | **GET** /zones/v1/travelboundary/bytime | Get TravelBoundary By Time.


# **getBasicBoundaryByAddress**
```objc
-(NSURLSessionTask*) getBasicBoundaryByAddressWithAddress: (NSString*) address
    country: (NSString*) country
    distance: (NSString*) distance
    distanceUnit: (NSString*) distanceUnit
    resolution: (NSString*) resolution
    responseSrs: (NSString*) responseSrs
        completionHandler: (void (^)(PBBasicBoundary* output, NSError* error)) handler;
```

Gets Basic Boundary by Address.

Gets Basic Boundary by Address.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // Address around which Basic Boundary is requested
NSString* country = @"country_example"; // Three digit ISO country code (optional)
NSString* distance = @"distance_example"; //  (optional)
NSString* distanceUnit = @"distanceUnit_example"; //  (optional)
NSString* resolution = @"resolution_example"; // This is resolution of the buffer. Curves generated in buffer are approximated by line segments and it is measured in segments per circle. The higher the resolution, the smoother the curves of the buffer but more points would be required in the boundary geometry. Number greater than 0 and in multiple of 4. If not in 4, then it is approximated to nearest multiple of 4. (optional)
NSString* responseSrs = @"responseSrs_example"; //  (optional)

PBZonesServiceApi*apiInstance = [[PBZonesServiceApi alloc] init];

// Gets Basic Boundary by Address.
[apiInstance getBasicBoundaryByAddressWithAddress:address
              country:country
              distance:distance
              distanceUnit:distanceUnit
              resolution:resolution
              responseSrs:responseSrs
          completionHandler: ^(PBBasicBoundary* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBZonesServiceApi->getBasicBoundaryByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Address around which Basic Boundary is requested | 
 **country** | **NSString***| Three digit ISO country code | [optional] 
 **distance** | **NSString***|  | [optional] 
 **distanceUnit** | **NSString***|  | [optional] 
 **resolution** | **NSString***| This is resolution of the buffer. Curves generated in buffer are approximated by line segments and it is measured in segments per circle. The higher the resolution, the smoother the curves of the buffer but more points would be required in the boundary geometry. Number greater than 0 and in multiple of 4. If not in 4, then it is approximated to nearest multiple of 4. | [optional] 
 **responseSrs** | **NSString***|  | [optional] 

### Return type

[**PBBasicBoundary***](PBBasicBoundary.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBasicBoundaryByLocation**
```objc
-(NSURLSessionTask*) getBasicBoundaryByLocationWithLatitude: (NSString*) latitude
    longitude: (NSString*) longitude
    distance: (NSString*) distance
    distanceUnit: (NSString*) distanceUnit
    resolution: (NSString*) resolution
    responseSrs: (NSString*) responseSrs
    srsName: (NSString*) srsName
        completionHandler: (void (^)(PBBasicBoundary* output, NSError* error)) handler;
```

Gets Basic Boundary by Location.

Gets Basic Boundary by Location.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* latitude = @"latitude_example"; // Latitude around which Basic Boundary is requested
NSString* longitude = @"longitude_example"; // Longitude around which Basic Boundary is requested
NSString* distance = @"distance_example"; // This is width of the buffer (in a complete circular buffer, it would be radius of the buffer). This has to be a positive number.
NSString* distanceUnit = @"distanceUnit_example"; //  (optional)
NSString* resolution = @"resolution_example"; // This is resolution of the buffer. Curves generated in buffer are approximated by line segments and it is measured in segments per circle. The higher the resolution, the smoother the curves of the buffer but more points would be required in the boundary geometry. Number greater than 0 and in multiple of 4. If not in 4, then it is approximated to nearest multiple of 4. (optional)
NSString* responseSrs = @"responseSrs_example"; //  (optional)
NSString* srsName = @"srsName_example"; //  (optional)

PBZonesServiceApi*apiInstance = [[PBZonesServiceApi alloc] init];

// Gets Basic Boundary by Location.
[apiInstance getBasicBoundaryByLocationWithLatitude:latitude
              longitude:longitude
              distance:distance
              distanceUnit:distanceUnit
              resolution:resolution
              responseSrs:responseSrs
              srsName:srsName
          completionHandler: ^(PBBasicBoundary* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBZonesServiceApi->getBasicBoundaryByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **latitude** | **NSString***| Latitude around which Basic Boundary is requested | 
 **longitude** | **NSString***| Longitude around which Basic Boundary is requested | 
 **distance** | **NSString***| This is width of the buffer (in a complete circular buffer, it would be radius of the buffer). This has to be a positive number. | 
 **distanceUnit** | **NSString***|  | [optional] 
 **resolution** | **NSString***| This is resolution of the buffer. Curves generated in buffer are approximated by line segments and it is measured in segments per circle. The higher the resolution, the smoother the curves of the buffer but more points would be required in the boundary geometry. Number greater than 0 and in multiple of 4. If not in 4, then it is approximated to nearest multiple of 4. | [optional] 
 **responseSrs** | **NSString***|  | [optional] 
 **srsName** | **NSString***|  | [optional] 

### Return type

[**PBBasicBoundary***](PBBasicBoundary.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPOIBoundaryByAddress**
```objc
-(NSURLSessionTask*) getPOIBoundaryByAddressWithAddress: (NSString*) address
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    naicsCode: (NSString*) naicsCode
        completionHandler: (void (^)(PBPoiBoundary* output, NSError* error)) handler;
```

Gets Point of Interests Boundary by Address.

Gets Point of Interests Boundary by Address.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // Address around which POI Boundary is requested
NSString* categoryCode = @"categoryCode_example"; // Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. (optional)
NSString* sicCode = @"sicCode_example"; // Specify starting digits or full sic code to filter the response (optional)
NSString* naicsCode = @"naicsCode_example"; // Will accept naicsCode to filter POIs in results. Max 10 allowed. (optional)

PBZonesServiceApi*apiInstance = [[PBZonesServiceApi alloc] init];

// Gets Point of Interests Boundary by Address.
[apiInstance getPOIBoundaryByAddressWithAddress:address
              categoryCode:categoryCode
              sicCode:sicCode
              naicsCode:naicsCode
          completionHandler: ^(PBPoiBoundary* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBZonesServiceApi->getPOIBoundaryByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| Address around which POI Boundary is requested | 
 **categoryCode** | **NSString***| Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes. | [optional] 
 **sicCode** | **NSString***| Specify starting digits or full sic code to filter the response | [optional] 
 **naicsCode** | **NSString***| Will accept naicsCode to filter POIs in results. Max 10 allowed. | [optional] 

### Return type

[**PBPoiBoundary***](PBPoiBoundary.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPOIBoundaryByAddressBatch**
```objc
-(NSURLSessionTask*) getPOIBoundaryByAddressBatchWithPOIBoundaryAddressRequest: (PBPOIBoundaryAddressRequest*) pOIBoundaryAddressRequest
        completionHandler: (void (^)(PBPOIBoundaryResponse* output, NSError* error)) handler;
```

Batch method for getting Point of Interests Boundary by Address.

Batch method for getting Point of Interests Boundary by Address.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBPOIBoundaryAddressRequest* pOIBoundaryAddressRequest = [[PBPOIBoundaryAddressRequest alloc] init]; // 

PBZonesServiceApi*apiInstance = [[PBZonesServiceApi alloc] init];

// Batch method for getting Point of Interests Boundary by Address.
[apiInstance getPOIBoundaryByAddressBatchWithPOIBoundaryAddressRequest:pOIBoundaryAddressRequest
          completionHandler: ^(PBPOIBoundaryResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBZonesServiceApi->getPOIBoundaryByAddressBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pOIBoundaryAddressRequest** | [**PBPOIBoundaryAddressRequest***](PBPOIBoundaryAddressRequest.md)|  | 

### Return type

[**PBPOIBoundaryResponse***](PBPOIBoundaryResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPOIBoundaryByLocation**
```objc
-(NSURLSessionTask*) getPOIBoundaryByLocationWithLatitude: (NSString*) latitude
    longitude: (NSString*) longitude
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    naicsCode: (NSString*) naicsCode
        completionHandler: (void (^)(PBPoiBoundary* output, NSError* error)) handler;
```

Get Point of Interests Boundary by Location.

Get Point of Interests Boundary by Location.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* latitude = @"latitude_example"; // Latitude around which POI Boundary is requested
NSString* longitude = @"longitude_example"; // Longitude around which POI Boundary is requested
NSString* categoryCode = @"categoryCode_example"; // Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes (optional)
NSString* sicCode = @"sicCode_example"; // Specify starting digits or full sic code to filter the response (optional)
NSString* naicsCode = @"naicsCode_example"; // Will accept naicsCode to filter POIs in results. Max 10 allowed. (optional)

PBZonesServiceApi*apiInstance = [[PBZonesServiceApi alloc] init];

// Get Point of Interests Boundary by Location.
[apiInstance getPOIBoundaryByLocationWithLatitude:latitude
              longitude:longitude
              categoryCode:categoryCode
              sicCode:sicCode
              naicsCode:naicsCode
          completionHandler: ^(PBPoiBoundary* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBZonesServiceApi->getPOIBoundaryByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **latitude** | **NSString***| Latitude around which POI Boundary is requested | 
 **longitude** | **NSString***| Longitude around which POI Boundary is requested | 
 **categoryCode** | **NSString***| Specific Category/Categories Codes for the desired POIs. Accepts a mix of 4 digit (Top Category), 6 digit (Second-Level Category) and 11 digit (Low-Level Category) Category Codes | [optional] 
 **sicCode** | **NSString***| Specify starting digits or full sic code to filter the response | [optional] 
 **naicsCode** | **NSString***| Will accept naicsCode to filter POIs in results. Max 10 allowed. | [optional] 

### Return type

[**PBPoiBoundary***](PBPoiBoundary.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPOIBoundaryByLocationBatch**
```objc
-(NSURLSessionTask*) getPOIBoundaryByLocationBatchWithPOIBoundaryLocationRequest: (PBPOIBoundaryLocationRequest*) pOIBoundaryLocationRequest
        completionHandler: (void (^)(PBPOIBoundaryResponse* output, NSError* error)) handler;
```

Batch method for getting Point of Interests Boundary by Location.

Batch method for getting Point of Interests Boundary by Location.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBPOIBoundaryLocationRequest* pOIBoundaryLocationRequest = [[PBPOIBoundaryLocationRequest alloc] init]; // 

PBZonesServiceApi*apiInstance = [[PBZonesServiceApi alloc] init];

// Batch method for getting Point of Interests Boundary by Location.
[apiInstance getPOIBoundaryByLocationBatchWithPOIBoundaryLocationRequest:pOIBoundaryLocationRequest
          completionHandler: ^(PBPOIBoundaryResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBZonesServiceApi->getPOIBoundaryByLocationBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pOIBoundaryLocationRequest** | [**PBPOIBoundaryLocationRequest***](PBPOIBoundaryLocationRequest.md)|  | 

### Return type

[**PBPOIBoundaryResponse***](PBPOIBoundaryResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTravelBoundaryByDistance**
```objc
-(NSURLSessionTask*) getTravelBoundaryByDistanceWithPoint: (NSString*) point
    address: (NSString*) address
    costs: (NSString*) costs
    costUnit: (NSString*) costUnit
    db: (NSString*) db
    country: (NSString*) country
    maxOffroadDistance: (NSString*) maxOffroadDistance
    maxOffroadDistanceUnit: (NSString*) maxOffroadDistanceUnit
    destinationSrs: (NSString*) destinationSrs
    majorRoads: (NSString*) majorRoads
    returnHoles: (NSString*) returnHoles
    returnIslands: (NSString*) returnIslands
    simplificationFactor: (NSString*) simplificationFactor
    bandingStyle: (NSString*) bandingStyle
    historicTrafficTimeBucket: (NSString*) historicTrafficTimeBucket
    defaultAmbientSpeed: (NSString*) defaultAmbientSpeed
    ambientSpeedUnit: (NSString*) ambientSpeedUnit
        completionHandler: (void (^)(PBTravelBoundaries* output, NSError* error)) handler;
```

Get TravelBoundary By Distance.

Returns the travel boundary based on travel distance.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* point = @"point_example"; // Starting point from where the travel boundary is calculated. Point in Lat,Long,coordsys format (optional)
NSString* address = @"address_example"; // Address around which Basic Boundary is requested. (optional)
NSString* costs = @"costs_example"; // Travel time used to calculate the travel boundary. (optional)
NSString* costUnit = @"costUnit_example"; // Travel time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). (optional)
NSString* db = @"db_example"; // Mode of commute. (optional)
NSString* country = @"country_example"; // 3 character ISO code or country name. (optional)
NSString* maxOffroadDistance = @"maxOffroadDistance_example"; // Maximum distance to allow travel off the road network. (optional)
NSString* maxOffroadDistanceUnit = @"maxOffroadDistanceUnit_example"; // MaxOffroad Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional)
NSString* destinationSrs = @"destinationSrs_example"; // Desired coordinate system of the travel boundary. (optional)
NSString* majorRoads = @"true"; // Whether to include all roads in the calculation or just major roads. (optional) (default to @"true")
NSString* returnHoles = @"returnHoles_example"; // Whether to return holes, which are areas within the larger boundary that cannot be reached within the desired time (optional)
NSString* returnIslands = @"returnIslands_example"; // Whether to return islands, which are small areas outside the main boundary that can be reached within the desired time (optional)
NSString* simplificationFactor = @"simplificationFactor_example"; // Number between 0.0 and 1.0 where 0.0 is very simple and 1.0 means the most complex (optional)
NSString* bandingStyle = @"bandingStyle_example"; // Style of banding to be used in the result (optional)
NSString* historicTrafficTimeBucket = @"historicTrafficTimeBucket_example"; // Whether routing calculation uses the historic traffic speeds (optional)
NSString* defaultAmbientSpeed = @"defaultAmbientSpeed_example"; // The speed to travel when going off a network road to find the travel boundary (for all road types). (optional)
NSString* ambientSpeedUnit = @"ambientSpeedUnit_example"; // The unit of measure to use to calculate the ambient speed. (optional)

PBZonesServiceApi*apiInstance = [[PBZonesServiceApi alloc] init];

// Get TravelBoundary By Distance.
[apiInstance getTravelBoundaryByDistanceWithPoint:point
              address:address
              costs:costs
              costUnit:costUnit
              db:db
              country:country
              maxOffroadDistance:maxOffroadDistance
              maxOffroadDistanceUnit:maxOffroadDistanceUnit
              destinationSrs:destinationSrs
              majorRoads:majorRoads
              returnHoles:returnHoles
              returnIslands:returnIslands
              simplificationFactor:simplificationFactor
              bandingStyle:bandingStyle
              historicTrafficTimeBucket:historicTrafficTimeBucket
              defaultAmbientSpeed:defaultAmbientSpeed
              ambientSpeedUnit:ambientSpeedUnit
          completionHandler: ^(PBTravelBoundaries* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBZonesServiceApi->getTravelBoundaryByDistance: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **point** | **NSString***| Starting point from where the travel boundary is calculated. Point in Lat,Long,coordsys format | [optional] 
 **address** | **NSString***| Address around which Basic Boundary is requested. | [optional] 
 **costs** | **NSString***| Travel time used to calculate the travel boundary. | [optional] 
 **costUnit** | **NSString***| Travel time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). | [optional] 
 **db** | **NSString***| Mode of commute. | [optional] 
 **country** | **NSString***| 3 character ISO code or country name. | [optional] 
 **maxOffroadDistance** | **NSString***| Maximum distance to allow travel off the road network. | [optional] 
 **maxOffroadDistanceUnit** | **NSString***| MaxOffroad Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). | [optional] 
 **destinationSrs** | **NSString***| Desired coordinate system of the travel boundary. | [optional] 
 **majorRoads** | **NSString***| Whether to include all roads in the calculation or just major roads. | [optional] [default to @&quot;true&quot;]
 **returnHoles** | **NSString***| Whether to return holes, which are areas within the larger boundary that cannot be reached within the desired time | [optional] 
 **returnIslands** | **NSString***| Whether to return islands, which are small areas outside the main boundary that can be reached within the desired time | [optional] 
 **simplificationFactor** | **NSString***| Number between 0.0 and 1.0 where 0.0 is very simple and 1.0 means the most complex | [optional] 
 **bandingStyle** | **NSString***| Style of banding to be used in the result | [optional] 
 **historicTrafficTimeBucket** | **NSString***| Whether routing calculation uses the historic traffic speeds | [optional] 
 **defaultAmbientSpeed** | **NSString***| The speed to travel when going off a network road to find the travel boundary (for all road types). | [optional] 
 **ambientSpeedUnit** | **NSString***| The unit of measure to use to calculate the ambient speed. | [optional] 

### Return type

[**PBTravelBoundaries***](PBTravelBoundaries.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTravelBoundaryByTime**
```objc
-(NSURLSessionTask*) getTravelBoundaryByTimeWithPoint: (NSString*) point
    address: (NSString*) address
    costs: (NSString*) costs
    costUnit: (NSString*) costUnit
    db: (NSString*) db
    country: (NSString*) country
    maxOffroadDistance: (NSString*) maxOffroadDistance
    maxOffroadDistanceUnit: (NSString*) maxOffroadDistanceUnit
    destinationSrs: (NSString*) destinationSrs
    majorRoads: (NSString*) majorRoads
    returnHoles: (NSString*) returnHoles
    returnIslands: (NSString*) returnIslands
    simplificationFactor: (NSString*) simplificationFactor
    bandingStyle: (NSString*) bandingStyle
    historicTrafficTimeBucket: (NSString*) historicTrafficTimeBucket
    defaultAmbientSpeed: (NSString*) defaultAmbientSpeed
    ambientSpeedUnit: (NSString*) ambientSpeedUnit
        completionHandler: (void (^)(PBTravelBoundaries* output, NSError* error)) handler;
```

Get TravelBoundary By Time.

Travel boundary based on travel time.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* point = @"point_example"; // Starting point from where the travel boundary is calculated. Point in Lat,Long,coordsys format (optional)
NSString* address = @"address_example"; // Starting address from where the travel boundary is calculated. (optional)
NSString* costs = @"costs_example"; // Travel time used to calculate the travel boundary. (optional)
NSString* costUnit = @"costUnit_example"; // Travel time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). (optional)
NSString* db = @"db_example"; // Mode of commute. (optional)
NSString* country = @"country_example"; // 3 character ISO code or country name. (optional)
NSString* maxOffroadDistance = @"maxOffroadDistance_example"; // Maximum distance to allow travel off the road network. (optional)
NSString* maxOffroadDistanceUnit = @"maxOffroadDistanceUnit_example"; // MaxOffroad Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional)
NSString* destinationSrs = @"destinationSrs_example"; // Desired coordinate system of the travel boundary. (optional)
NSString* majorRoads = @"true"; // Whether to include all roads in the calculation or just major roads. (optional) (default to @"true")
NSString* returnHoles = @"returnHoles_example"; // Whether to return holes, which are areas within the larger boundary that cannot be reached within the desired time (optional)
NSString* returnIslands = @"returnIslands_example"; // Whether to return islands, which are small areas outside the main boundary that can be reached within the desired time (optional)
NSString* simplificationFactor = @"simplificationFactor_example"; // Number between 0.0 and 1.0 where 0.0 is very simple and 1.0 means the most complex (optional)
NSString* bandingStyle = @"bandingStyle_example"; // Style of banding to be used in the result (optional)
NSString* historicTrafficTimeBucket = @"historicTrafficTimeBucket_example"; // Whether routing calculation uses the historic traffic speeds (optional)
NSString* defaultAmbientSpeed = @"defaultAmbientSpeed_example"; // The speed to travel when going off a network road to find the travel boundary (for all road types). (optional)
NSString* ambientSpeedUnit = @"ambientSpeedUnit_example"; // The unit of measure to use to calculate the ambient speed. (optional)

PBZonesServiceApi*apiInstance = [[PBZonesServiceApi alloc] init];

// Get TravelBoundary By Time.
[apiInstance getTravelBoundaryByTimeWithPoint:point
              address:address
              costs:costs
              costUnit:costUnit
              db:db
              country:country
              maxOffroadDistance:maxOffroadDistance
              maxOffroadDistanceUnit:maxOffroadDistanceUnit
              destinationSrs:destinationSrs
              majorRoads:majorRoads
              returnHoles:returnHoles
              returnIslands:returnIslands
              simplificationFactor:simplificationFactor
              bandingStyle:bandingStyle
              historicTrafficTimeBucket:historicTrafficTimeBucket
              defaultAmbientSpeed:defaultAmbientSpeed
              ambientSpeedUnit:ambientSpeedUnit
          completionHandler: ^(PBTravelBoundaries* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBZonesServiceApi->getTravelBoundaryByTime: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **point** | **NSString***| Starting point from where the travel boundary is calculated. Point in Lat,Long,coordsys format | [optional] 
 **address** | **NSString***| Starting address from where the travel boundary is calculated. | [optional] 
 **costs** | **NSString***| Travel time used to calculate the travel boundary. | [optional] 
 **costUnit** | **NSString***| Travel time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). | [optional] 
 **db** | **NSString***| Mode of commute. | [optional] 
 **country** | **NSString***| 3 character ISO code or country name. | [optional] 
 **maxOffroadDistance** | **NSString***| Maximum distance to allow travel off the road network. | [optional] 
 **maxOffroadDistanceUnit** | **NSString***| MaxOffroad Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). | [optional] 
 **destinationSrs** | **NSString***| Desired coordinate system of the travel boundary. | [optional] 
 **majorRoads** | **NSString***| Whether to include all roads in the calculation or just major roads. | [optional] [default to @&quot;true&quot;]
 **returnHoles** | **NSString***| Whether to return holes, which are areas within the larger boundary that cannot be reached within the desired time | [optional] 
 **returnIslands** | **NSString***| Whether to return islands, which are small areas outside the main boundary that can be reached within the desired time | [optional] 
 **simplificationFactor** | **NSString***| Number between 0.0 and 1.0 where 0.0 is very simple and 1.0 means the most complex | [optional] 
 **bandingStyle** | **NSString***| Style of banding to be used in the result | [optional] 
 **historicTrafficTimeBucket** | **NSString***| Whether routing calculation uses the historic traffic speeds | [optional] 
 **defaultAmbientSpeed** | **NSString***| The speed to travel when going off a network road to find the travel boundary (for all road types). | [optional] 
 **ambientSpeedUnit** | **NSString***| The unit of measure to use to calculate the ambient speed. | [optional] 

### Return type

[**PBTravelBoundaries***](PBTravelBoundaries.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

