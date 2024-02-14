# PBRoutingServiceApi

All URIs are relative to *https://api.precisely.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRouteByAddress**](PBRoutingServiceApi.md#getroutebyaddress) | **GET** /routing/v1/route/byaddress | Gets Route By Address.
[**getRouteByLocation**](PBRoutingServiceApi.md#getroutebylocation) | **GET** /routing/v1/route/bylocation | Gets Route By Location.
[**getTravelCostMatrixByAddress**](PBRoutingServiceApi.md#gettravelcostmatrixbyaddress) | **GET** /routing/v1/travelcostmatrix/byaddress | Get Cost Matrix By Address.
[**getTravelCostMatrixByLocation**](PBRoutingServiceApi.md#gettravelcostmatrixbylocation) | **GET** /routing/v1/travelcostmatrix/bylocation | Get Cost Matrix By Location.


# **getRouteByAddress**
```objc
-(NSURLSessionTask*) getRouteByAddressWithStartAddress: (NSString*) startAddress
    endAddress: (NSString*) endAddress
    db: (NSString*) db
    country: (NSString*) country
    intermediateAddresses: (NSString*) intermediateAddresses
    returnIntermediatePoints: (NSString*) returnIntermediatePoints
    oip: (NSString*) oip
    destinationSrs: (NSString*) destinationSrs
    optimizeBy: (NSString*) optimizeBy
    returnDistance: (NSString*) returnDistance
    distanceUnit: (NSString*) distanceUnit
    returnTime: (NSString*) returnTime
    timeUnit: (NSString*) timeUnit
    language: (NSString*) language
    directionsStyle: (NSString*) directionsStyle
    segmentGeometryStyle: (NSString*) segmentGeometryStyle
    primaryNameOnly: (NSString*) primaryNameOnly
    majorRoads: (NSString*) majorRoads
    historicTrafficTimeBucket: (NSString*) historicTrafficTimeBucket
    returnDirectionGeometry: (NSString*) returnDirectionGeometry
    useCvr: (NSString*) useCvr
    looseningBarrierRestrictions: (NSString*) looseningBarrierRestrictions
    vehicleType: (NSString*) vehicleType
    weight: (NSString*) weight
    weightUnit: (NSString*) weightUnit
    height: (NSString*) height
    heightUnit: (NSString*) heightUnit
    length: (NSString*) length
    lengthUnit: (NSString*) lengthUnit
    width: (NSString*) width
    widthUnit: (NSString*) widthUnit
        completionHandler: (void (^)(PBRouteResponse* output, NSError* error)) handler;
```

Gets Route By Address.

Accepts addresses as input and Returns Point-to-Point and Multi-Point travel directions by various travel modes.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* startAddress = @"startAddress_example"; // Starting address of the route. (optional)
NSString* endAddress = @"endAddress_example"; // Ending address of the route. (optional)
NSString* db = @"driving"; // Mode of commute. (optional) (default to @"driving")
NSString* country = @"USA"; // Three digit ISO country code. (optional) (default to @"USA")
NSString* intermediateAddresses = @"intermediateAddresses_example"; // List of intermediate points of the route. (optional)
NSString* returnIntermediatePoints = @"false"; // return intermediate points (optional) (default to @"false")
NSString* oip = @"false"; // Specifies whether waypoints need to be optimized. (optional) (default to @"false")
NSString* destinationSrs = @"destinationSrs_example"; // Specifies the desired coordinate system of the returned route. (optional)
NSString* optimizeBy = @"time"; // Specifies whether the route should be optimized by time or distance. (optional) (default to @"time")
NSString* returnDistance = @"true"; // Specifies whether distance needs to be part of direction information in response. (optional) (default to @"true")
NSString* distanceUnit = @"m"; // Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional) (default to @"m")
NSString* returnTime = @"true"; // Specifies whether time needs to be part of direction information in response. (optional) (default to @"true")
NSString* timeUnit = @"min"; // Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond) (optional) (default to @"min")
NSString* language = @"language_example"; // Specifies the language of travel directions. (optional)
NSString* directionsStyle = @"None"; // Specifies whether route directions text is to be returned in the response and in what detail (Normal or Terse). (optional) (default to @"None")
NSString* segmentGeometryStyle = @"none"; // Specifies whether the route geometry is to be returned in the response and in what detail (End or All). (optional) (default to @"none")
NSString* primaryNameOnly = @"false"; // If true then only the primary street name is returned otherwise all the names for a street. (optional) (default to @"false")
NSString* majorRoads = @"false"; // Whether to include all roads in route calculation or just major roads. (optional) (default to @"false")
NSString* historicTrafficTimeBucket = @"None"; // Specifies whether routing calculation uses the historic traffic speeds. (optional) (default to @"None")
NSString* returnDirectionGeometry = @"false"; // Whether to include geometry associated with each route instruction in response. (optional) (default to @"false")
NSString* useCvr = @"N"; // This parameter will enable/disable CVR (Commercial Vehicle Restrictions) capability in our APIs. (optional) (default to @"N")
NSString* looseningBarrierRestrictions = @"Y"; // Specifies that barriers will be removed when determining the route. (optional) (default to @"Y")
NSString* vehicleType = @"ALL"; // vehicle type. (optional) (default to @"ALL")
NSString* weight = @""; // Specifies the maximum weight of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
NSString* weightUnit = @"kg"; // The unit of weight eg. kg(kilogram), lb(pound), mt(metric ton), t(ton). (optional) (default to @"kg")
NSString* height = @""; // Specifies the maximum height of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
NSString* heightUnit = @"ft"; // The unit of height e.g m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional) (default to @"ft")
NSString* length = @""; // Specifies the maximum length of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
NSString* lengthUnit = @"ft"; // The unit of length eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional) (default to @"ft")
NSString* width = @""; // Specifies the maximum width of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
NSString* widthUnit = @"ft"; // The unit of width eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional) (default to @"ft")

PBRoutingServiceApi*apiInstance = [[PBRoutingServiceApi alloc] init];

// Gets Route By Address.
[apiInstance getRouteByAddressWithStartAddress:startAddress
              endAddress:endAddress
              db:db
              country:country
              intermediateAddresses:intermediateAddresses
              returnIntermediatePoints:returnIntermediatePoints
              oip:oip
              destinationSrs:destinationSrs
              optimizeBy:optimizeBy
              returnDistance:returnDistance
              distanceUnit:distanceUnit
              returnTime:returnTime
              timeUnit:timeUnit
              language:language
              directionsStyle:directionsStyle
              segmentGeometryStyle:segmentGeometryStyle
              primaryNameOnly:primaryNameOnly
              majorRoads:majorRoads
              historicTrafficTimeBucket:historicTrafficTimeBucket
              returnDirectionGeometry:returnDirectionGeometry
              useCvr:useCvr
              looseningBarrierRestrictions:looseningBarrierRestrictions
              vehicleType:vehicleType
              weight:weight
              weightUnit:weightUnit
              height:height
              heightUnit:heightUnit
              length:length
              lengthUnit:lengthUnit
              width:width
              widthUnit:widthUnit
          completionHandler: ^(PBRouteResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRoutingServiceApi->getRouteByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startAddress** | **NSString***| Starting address of the route. | [optional] 
 **endAddress** | **NSString***| Ending address of the route. | [optional] 
 **db** | **NSString***| Mode of commute. | [optional] [default to @&quot;driving&quot;]
 **country** | **NSString***| Three digit ISO country code. | [optional] [default to @&quot;USA&quot;]
 **intermediateAddresses** | **NSString***| List of intermediate points of the route. | [optional] 
 **returnIntermediatePoints** | **NSString***| return intermediate points | [optional] [default to @&quot;false&quot;]
 **oip** | **NSString***| Specifies whether waypoints need to be optimized. | [optional] [default to @&quot;false&quot;]
 **destinationSrs** | **NSString***| Specifies the desired coordinate system of the returned route. | [optional] 
 **optimizeBy** | **NSString***| Specifies whether the route should be optimized by time or distance. | [optional] [default to @&quot;time&quot;]
 **returnDistance** | **NSString***| Specifies whether distance needs to be part of direction information in response. | [optional] [default to @&quot;true&quot;]
 **distanceUnit** | **NSString***| Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). | [optional] [default to @&quot;m&quot;]
 **returnTime** | **NSString***| Specifies whether time needs to be part of direction information in response. | [optional] [default to @&quot;true&quot;]
 **timeUnit** | **NSString***| Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond) | [optional] [default to @&quot;min&quot;]
 **language** | **NSString***| Specifies the language of travel directions. | [optional] 
 **directionsStyle** | **NSString***| Specifies whether route directions text is to be returned in the response and in what detail (Normal or Terse). | [optional] [default to @&quot;None&quot;]
 **segmentGeometryStyle** | **NSString***| Specifies whether the route geometry is to be returned in the response and in what detail (End or All). | [optional] [default to @&quot;none&quot;]
 **primaryNameOnly** | **NSString***| If true then only the primary street name is returned otherwise all the names for a street. | [optional] [default to @&quot;false&quot;]
 **majorRoads** | **NSString***| Whether to include all roads in route calculation or just major roads. | [optional] [default to @&quot;false&quot;]
 **historicTrafficTimeBucket** | **NSString***| Specifies whether routing calculation uses the historic traffic speeds. | [optional] [default to @&quot;None&quot;]
 **returnDirectionGeometry** | **NSString***| Whether to include geometry associated with each route instruction in response. | [optional] [default to @&quot;false&quot;]
 **useCvr** | **NSString***| This parameter will enable/disable CVR (Commercial Vehicle Restrictions) capability in our APIs. | [optional] [default to @&quot;N&quot;]
 **looseningBarrierRestrictions** | **NSString***| Specifies that barriers will be removed when determining the route. | [optional] [default to @&quot;Y&quot;]
 **vehicleType** | **NSString***| vehicle type. | [optional] [default to @&quot;ALL&quot;]
 **weight** | **NSString***| Specifies the maximum weight of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] [default to @&quot;&quot;]
 **weightUnit** | **NSString***| The unit of weight eg. kg(kilogram), lb(pound), mt(metric ton), t(ton). | [optional] [default to @&quot;kg&quot;]
 **height** | **NSString***| Specifies the maximum height of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] [default to @&quot;&quot;]
 **heightUnit** | **NSString***| The unit of height e.g m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). | [optional] [default to @&quot;ft&quot;]
 **length** | **NSString***| Specifies the maximum length of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] [default to @&quot;&quot;]
 **lengthUnit** | **NSString***| The unit of length eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). | [optional] [default to @&quot;ft&quot;]
 **width** | **NSString***| Specifies the maximum width of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] [default to @&quot;&quot;]
 **widthUnit** | **NSString***| The unit of width eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). | [optional] [default to @&quot;ft&quot;]

### Return type

[**PBRouteResponse***](PBRouteResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRouteByLocation**
```objc
-(NSURLSessionTask*) getRouteByLocationWithStartPoint: (NSString*) startPoint
    endPoint: (NSString*) endPoint
    db: (NSString*) db
    intermediatePoints: (NSString*) intermediatePoints
    returnIntermediatePoints: (NSString*) returnIntermediatePoints
    oip: (NSString*) oip
    destinationSrs: (NSString*) destinationSrs
    optimizeBy: (NSString*) optimizeBy
    returnDistance: (NSString*) returnDistance
    distanceUnit: (NSString*) distanceUnit
    returnTime: (NSString*) returnTime
    timeUnit: (NSString*) timeUnit
    language: (NSString*) language
    directionsStyle: (NSString*) directionsStyle
    segmentGeometryStyle: (NSString*) segmentGeometryStyle
    primaryNameOnly: (NSString*) primaryNameOnly
    majorRoads: (NSString*) majorRoads
    historicTrafficTimeBucket: (NSString*) historicTrafficTimeBucket
    returnDirectionGeometry: (NSString*) returnDirectionGeometry
    useCvr: (NSString*) useCvr
    looseningBarrierRestrictions: (NSString*) looseningBarrierRestrictions
    vehicleType: (NSString*) vehicleType
    weight: (NSString*) weight
    weightUnit: (NSString*) weightUnit
    height: (NSString*) height
    heightUnit: (NSString*) heightUnit
    length: (NSString*) length
    lengthUnit: (NSString*) lengthUnit
    width: (NSString*) width
    widthUnit: (NSString*) widthUnit
        completionHandler: (void (^)(PBRouteResponse* output, NSError* error)) handler;
```

Gets Route By Location.

Accepts latitude & longitude as input and Returns Point-to-Point and Multi-Point travel directions by various travel modes.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* startPoint = @"startPoint_example"; // Start Point in 'Lat,Long,coordsys' format. (optional)
NSString* endPoint = @"endPoint_example"; // End Point in 'Lat,Long,coordsys' format. (optional)
NSString* db = @"driving"; // Mode of commute. (optional) (default to @"driving")
NSString* intermediatePoints = @"intermediatePoints_example"; // List of intermediate points of the route. (optional)
NSString* returnIntermediatePoints = @"false"; // returnIntermediatePoints route. (optional) (default to @"false")
NSString* oip = @"false"; // Specifies whether waypoints need to be optimized. (optional) (default to @"false")
NSString* destinationSrs = @"destinationSrs_example"; // Specifies the desired coordinate system of the returned route. (optional)
NSString* optimizeBy = @"time"; // Specifies whether the route should be optimized by time or distance. (optional) (default to @"time")
NSString* returnDistance = @"true"; // Specifies whether distance needs to be part of direction information in response. (optional) (default to @"true")
NSString* distanceUnit = @"m"; // Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional) (default to @"m")
NSString* returnTime = @"true"; // Specifies whether time needs to be part of direction information in response. (optional) (default to @"true")
NSString* timeUnit = @"min"; // Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond) (optional) (default to @"min")
NSString* language = @"language_example"; // Specifies the language of travel directions. (optional)
NSString* directionsStyle = @"None"; // Specifies whether route directions text is to be returned in the response and in what detail (Normal or Terse). (optional) (default to @"None")
NSString* segmentGeometryStyle = @"none"; // Specifies whether the route geometry is to be returned in the response and in what detail (End or All). (optional) (default to @"none")
NSString* primaryNameOnly = @"false"; // If true then only the primary street name is returned otherwise all the names for a street. (optional) (default to @"false")
NSString* majorRoads = @"false"; // Whether to include all roads in route calculation or just major roads. (optional) (default to @"false")
NSString* historicTrafficTimeBucket = @"None"; // Specifies whether routing calculation uses the historic traffic speeds. (optional) (default to @"None")
NSString* returnDirectionGeometry = @"false"; // Whether to include geometry associated with each route instruction in response. (optional) (default to @"false")
NSString* useCvr = @"N"; // This parameter will enable/disable CVR (Commercial Vehicle Restrictions) capability in our APIs. (optional) (default to @"N")
NSString* looseningBarrierRestrictions = @"Y"; // Specifies that barriers will be removed when determining the route. (optional) (default to @"Y")
NSString* vehicleType = @"ALL"; // vehicle type. (optional) (default to @"ALL")
NSString* weight = @""; // Specifies the maximum weight of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
NSString* weightUnit = @"kg"; // The unit of weight eg. kg(kilogram), lb(pound), mt(metric ton), t(ton). (optional) (default to @"kg")
NSString* height = @""; // Specifies the maximum height of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
NSString* heightUnit = @"ft"; // The unit of height e.g m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional) (default to @"ft")
NSString* length = @""; // Specifies the maximum length of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
NSString* lengthUnit = @"ft"; // The unit of length eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional) (default to @"ft")
NSString* width = @""; // Specifies the maximum width of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
NSString* widthUnit = @"ft"; // The unit of width eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional) (default to @"ft")

PBRoutingServiceApi*apiInstance = [[PBRoutingServiceApi alloc] init];

// Gets Route By Location.
[apiInstance getRouteByLocationWithStartPoint:startPoint
              endPoint:endPoint
              db:db
              intermediatePoints:intermediatePoints
              returnIntermediatePoints:returnIntermediatePoints
              oip:oip
              destinationSrs:destinationSrs
              optimizeBy:optimizeBy
              returnDistance:returnDistance
              distanceUnit:distanceUnit
              returnTime:returnTime
              timeUnit:timeUnit
              language:language
              directionsStyle:directionsStyle
              segmentGeometryStyle:segmentGeometryStyle
              primaryNameOnly:primaryNameOnly
              majorRoads:majorRoads
              historicTrafficTimeBucket:historicTrafficTimeBucket
              returnDirectionGeometry:returnDirectionGeometry
              useCvr:useCvr
              looseningBarrierRestrictions:looseningBarrierRestrictions
              vehicleType:vehicleType
              weight:weight
              weightUnit:weightUnit
              height:height
              heightUnit:heightUnit
              length:length
              lengthUnit:lengthUnit
              width:width
              widthUnit:widthUnit
          completionHandler: ^(PBRouteResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRoutingServiceApi->getRouteByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startPoint** | **NSString***| Start Point in &#39;Lat,Long,coordsys&#39; format. | [optional] 
 **endPoint** | **NSString***| End Point in &#39;Lat,Long,coordsys&#39; format. | [optional] 
 **db** | **NSString***| Mode of commute. | [optional] [default to @&quot;driving&quot;]
 **intermediatePoints** | **NSString***| List of intermediate points of the route. | [optional] 
 **returnIntermediatePoints** | **NSString***| returnIntermediatePoints route. | [optional] [default to @&quot;false&quot;]
 **oip** | **NSString***| Specifies whether waypoints need to be optimized. | [optional] [default to @&quot;false&quot;]
 **destinationSrs** | **NSString***| Specifies the desired coordinate system of the returned route. | [optional] 
 **optimizeBy** | **NSString***| Specifies whether the route should be optimized by time or distance. | [optional] [default to @&quot;time&quot;]
 **returnDistance** | **NSString***| Specifies whether distance needs to be part of direction information in response. | [optional] [default to @&quot;true&quot;]
 **distanceUnit** | **NSString***| Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). | [optional] [default to @&quot;m&quot;]
 **returnTime** | **NSString***| Specifies whether time needs to be part of direction information in response. | [optional] [default to @&quot;true&quot;]
 **timeUnit** | **NSString***| Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond) | [optional] [default to @&quot;min&quot;]
 **language** | **NSString***| Specifies the language of travel directions. | [optional] 
 **directionsStyle** | **NSString***| Specifies whether route directions text is to be returned in the response and in what detail (Normal or Terse). | [optional] [default to @&quot;None&quot;]
 **segmentGeometryStyle** | **NSString***| Specifies whether the route geometry is to be returned in the response and in what detail (End or All). | [optional] [default to @&quot;none&quot;]
 **primaryNameOnly** | **NSString***| If true then only the primary street name is returned otherwise all the names for a street. | [optional] [default to @&quot;false&quot;]
 **majorRoads** | **NSString***| Whether to include all roads in route calculation or just major roads. | [optional] [default to @&quot;false&quot;]
 **historicTrafficTimeBucket** | **NSString***| Specifies whether routing calculation uses the historic traffic speeds. | [optional] [default to @&quot;None&quot;]
 **returnDirectionGeometry** | **NSString***| Whether to include geometry associated with each route instruction in response. | [optional] [default to @&quot;false&quot;]
 **useCvr** | **NSString***| This parameter will enable/disable CVR (Commercial Vehicle Restrictions) capability in our APIs. | [optional] [default to @&quot;N&quot;]
 **looseningBarrierRestrictions** | **NSString***| Specifies that barriers will be removed when determining the route. | [optional] [default to @&quot;Y&quot;]
 **vehicleType** | **NSString***| vehicle type. | [optional] [default to @&quot;ALL&quot;]
 **weight** | **NSString***| Specifies the maximum weight of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] [default to @&quot;&quot;]
 **weightUnit** | **NSString***| The unit of weight eg. kg(kilogram), lb(pound), mt(metric ton), t(ton). | [optional] [default to @&quot;kg&quot;]
 **height** | **NSString***| Specifies the maximum height of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] [default to @&quot;&quot;]
 **heightUnit** | **NSString***| The unit of height e.g m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). | [optional] [default to @&quot;ft&quot;]
 **length** | **NSString***| Specifies the maximum length of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] [default to @&quot;&quot;]
 **lengthUnit** | **NSString***| The unit of length eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). | [optional] [default to @&quot;ft&quot;]
 **width** | **NSString***| Specifies the maximum width of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] [default to @&quot;&quot;]
 **widthUnit** | **NSString***| The unit of width eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). | [optional] [default to @&quot;ft&quot;]

### Return type

[**PBRouteResponse***](PBRouteResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTravelCostMatrixByAddress**
```objc
-(NSURLSessionTask*) getTravelCostMatrixByAddressWithStartAddresses: (NSString*) startAddresses
    endAddresses: (NSString*) endAddresses
    country: (NSString*) country
    db: (NSString*) db
    optimizeBy: (NSString*) optimizeBy
    returnDistance: (NSString*) returnDistance
    destinationSrs: (NSString*) destinationSrs
    distanceUnit: (NSString*) distanceUnit
    returnTime: (NSString*) returnTime
    timeUnit: (NSString*) timeUnit
    majorRoads: (NSString*) majorRoads
    returnOptimalRoutesOnly: (NSString*) returnOptimalRoutesOnly
    historicTrafficTimeBucket: (NSString*) historicTrafficTimeBucket
    useCvr: (NSString*) useCvr
    looseningBarrierRestrictions: (NSString*) looseningBarrierRestrictions
    vehicleType: (NSString*) vehicleType
    weight: (NSString*) weight
    weightUnit: (NSString*) weightUnit
    height: (NSString*) height
    heightUnit: (NSString*) heightUnit
    length: (NSString*) length
    lengthUnit: (NSString*) lengthUnit
    width: (NSString*) width
    widthUnit: (NSString*) widthUnit
        completionHandler: (void (^)(PBTravelCostMatrixResponse* output, NSError* error)) handler;
```

Get Cost Matrix By Address.

Accepts addresses as input and Returns travel distances and times for multiple origins to multiple destinations by various travel modes.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* startAddresses = @"startAddresses_example"; // Start locations in text based addresses. (optional)
NSString* endAddresses = @"endAddresses_example"; // End locations in text based addresses. (optional)
NSString* country = @"USA"; // 3 Digit ISO country code. (optional) (default to @"USA")
NSString* db = @"driving"; // Mode of commute. (optional) (default to @"driving")
NSString* optimizeBy = @"time"; // Specifies whether routes should be optimized by time or distance. (optional) (default to @"time")
NSString* returnDistance = @"true"; // Specifies whether distance needs to be returned in response. (optional) (default to @"true")
NSString* destinationSrs = @"destinationSrs_example"; // Specifies the desired coordinate system of returned routes. (optional)
NSString* distanceUnit = @"m"; // Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional) (default to @"m")
NSString* returnTime = @"true"; // Specifies whether time needs to be returned in response. (optional) (default to @"true")
NSString* timeUnit = @"min"; // Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). (optional) (default to @"min")
NSString* majorRoads = @"false"; // Whether to include all roads in routes calculation or just major roads. (optional) (default to @"false")
NSString* returnOptimalRoutesOnly = @"true"; // Specifies whether to return only the optimized route for each start and end point combination. (optional) (default to @"true")
NSString* historicTrafficTimeBucket = @"None"; // Specifies whether routing calculation uses the historic traffic speeds. (optional) (default to @"None")
NSString* useCvr = @"N"; // This parameter will enable/disable CVR (Commercial Vehicle Restrictions) capability in our APIs. (optional) (default to @"N")
NSString* looseningBarrierRestrictions = @"Y"; // Specifies that barriers will be removed when determining the route. (optional) (default to @"Y")
NSString* vehicleType = @"ALL"; // vehicle type. (optional) (default to @"ALL")
NSString* weight = @""; // Specifies the maximum weight of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
NSString* weightUnit = @"kg"; // The unit of weight eg. kg(kilogram), lb(pound), mt(metric ton), t(ton). (optional) (default to @"kg")
NSString* height = @""; // Specifies the maximum height of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
NSString* heightUnit = @"ft"; // The unit of height e.g m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional) (default to @"ft")
NSString* length = @""; // Specifies the maximum length of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
NSString* lengthUnit = @"ft"; // The unit of length eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional) (default to @"ft")
NSString* width = @""; // Specifies the maximum width of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
NSString* widthUnit = @"ft"; // The unit of width eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional) (default to @"ft")

PBRoutingServiceApi*apiInstance = [[PBRoutingServiceApi alloc] init];

// Get Cost Matrix By Address.
[apiInstance getTravelCostMatrixByAddressWithStartAddresses:startAddresses
              endAddresses:endAddresses
              country:country
              db:db
              optimizeBy:optimizeBy
              returnDistance:returnDistance
              destinationSrs:destinationSrs
              distanceUnit:distanceUnit
              returnTime:returnTime
              timeUnit:timeUnit
              majorRoads:majorRoads
              returnOptimalRoutesOnly:returnOptimalRoutesOnly
              historicTrafficTimeBucket:historicTrafficTimeBucket
              useCvr:useCvr
              looseningBarrierRestrictions:looseningBarrierRestrictions
              vehicleType:vehicleType
              weight:weight
              weightUnit:weightUnit
              height:height
              heightUnit:heightUnit
              length:length
              lengthUnit:lengthUnit
              width:width
              widthUnit:widthUnit
          completionHandler: ^(PBTravelCostMatrixResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRoutingServiceApi->getTravelCostMatrixByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startAddresses** | **NSString***| Start locations in text based addresses. | [optional] 
 **endAddresses** | **NSString***| End locations in text based addresses. | [optional] 
 **country** | **NSString***| 3 Digit ISO country code. | [optional] [default to @&quot;USA&quot;]
 **db** | **NSString***| Mode of commute. | [optional] [default to @&quot;driving&quot;]
 **optimizeBy** | **NSString***| Specifies whether routes should be optimized by time or distance. | [optional] [default to @&quot;time&quot;]
 **returnDistance** | **NSString***| Specifies whether distance needs to be returned in response. | [optional] [default to @&quot;true&quot;]
 **destinationSrs** | **NSString***| Specifies the desired coordinate system of returned routes. | [optional] 
 **distanceUnit** | **NSString***| Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). | [optional] [default to @&quot;m&quot;]
 **returnTime** | **NSString***| Specifies whether time needs to be returned in response. | [optional] [default to @&quot;true&quot;]
 **timeUnit** | **NSString***| Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). | [optional] [default to @&quot;min&quot;]
 **majorRoads** | **NSString***| Whether to include all roads in routes calculation or just major roads. | [optional] [default to @&quot;false&quot;]
 **returnOptimalRoutesOnly** | **NSString***| Specifies whether to return only the optimized route for each start and end point combination. | [optional] [default to @&quot;true&quot;]
 **historicTrafficTimeBucket** | **NSString***| Specifies whether routing calculation uses the historic traffic speeds. | [optional] [default to @&quot;None&quot;]
 **useCvr** | **NSString***| This parameter will enable/disable CVR (Commercial Vehicle Restrictions) capability in our APIs. | [optional] [default to @&quot;N&quot;]
 **looseningBarrierRestrictions** | **NSString***| Specifies that barriers will be removed when determining the route. | [optional] [default to @&quot;Y&quot;]
 **vehicleType** | **NSString***| vehicle type. | [optional] [default to @&quot;ALL&quot;]
 **weight** | **NSString***| Specifies the maximum weight of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] [default to @&quot;&quot;]
 **weightUnit** | **NSString***| The unit of weight eg. kg(kilogram), lb(pound), mt(metric ton), t(ton). | [optional] [default to @&quot;kg&quot;]
 **height** | **NSString***| Specifies the maximum height of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] [default to @&quot;&quot;]
 **heightUnit** | **NSString***| The unit of height e.g m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). | [optional] [default to @&quot;ft&quot;]
 **length** | **NSString***| Specifies the maximum length of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] [default to @&quot;&quot;]
 **lengthUnit** | **NSString***| The unit of length eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). | [optional] [default to @&quot;ft&quot;]
 **width** | **NSString***| Specifies the maximum width of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] [default to @&quot;&quot;]
 **widthUnit** | **NSString***| The unit of width eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). | [optional] [default to @&quot;ft&quot;]

### Return type

[**PBTravelCostMatrixResponse***](PBTravelCostMatrixResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTravelCostMatrixByLocation**
```objc
-(NSURLSessionTask*) getTravelCostMatrixByLocationWithStartPoints: (NSString*) startPoints
    endPoints: (NSString*) endPoints
    db: (NSString*) db
    optimizeBy: (NSString*) optimizeBy
    returnDistance: (NSString*) returnDistance
    destinationSrs: (NSString*) destinationSrs
    distanceUnit: (NSString*) distanceUnit
    returnTime: (NSString*) returnTime
    timeUnit: (NSString*) timeUnit
    majorRoads: (NSString*) majorRoads
    returnOptimalRoutesOnly: (NSString*) returnOptimalRoutesOnly
    historicTrafficTimeBucket: (NSString*) historicTrafficTimeBucket
    useCvr: (NSString*) useCvr
    looseningBarrierRestrictions: (NSString*) looseningBarrierRestrictions
    vehicleType: (NSString*) vehicleType
    weight: (NSString*) weight
    weightUnit: (NSString*) weightUnit
    height: (NSString*) height
    heightUnit: (NSString*) heightUnit
    length: (NSString*) length
    lengthUnit: (NSString*) lengthUnit
    width: (NSString*) width
    widthUnit: (NSString*) widthUnit
        completionHandler: (void (^)(PBTravelCostMatrixResponse* output, NSError* error)) handler;
```

Get Cost Matrix By Location.

Accepts latitude & longitude as input and Returns travel distances and times for multiple origins to multiple destinations by various travel modes.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* startPoints = @"startPoints_example"; // The address to be searched. (optional)
NSString* endPoints = @"endPoints_example"; // The address to be searched. (optional)
NSString* db = @"driving"; // Mode of commute. (optional) (default to @"driving")
NSString* optimizeBy = @"time"; // Specifies whether routes should be optimized by time or distance. (optional) (default to @"time")
NSString* returnDistance = @"true"; // Specifies whether distance needs to be returned in response. (optional) (default to @"true")
NSString* destinationSrs = @"epsg:4326"; // Specifies the desired coordinate system of returned routes. (optional) (default to @"epsg:4326")
NSString* distanceUnit = @"m"; // Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional) (default to @"m")
NSString* returnTime = @"true"; // Specifies whether time needs to be returned in response. (optional) (default to @"true")
NSString* timeUnit = @"min"; // Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). (optional) (default to @"min")
NSString* majorRoads = @"false"; // Whether to include all roads in routes calculation or just major roads. (optional) (default to @"false")
NSString* returnOptimalRoutesOnly = @"true"; // Specifies whether to return only the optimized route for each start and end point combination. (optional) (default to @"true")
NSString* historicTrafficTimeBucket = @"None"; // Specifies whether routing calculation uses the historic traffic speeds. (optional) (default to @"None")
NSString* useCvr = @"N"; // This parameter will enable/disable CVR (Commercial Vehicle Restrictions) capability in our APIs. (optional) (default to @"N")
NSString* looseningBarrierRestrictions = @"Y"; // Specifies that barriers will be removed when determining the route. (optional) (default to @"Y")
NSString* vehicleType = @"ALL"; // vehicle type. (optional) (default to @"ALL")
NSString* weight = @""; // Specifies the maximum weight of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
NSString* weightUnit = @"kg"; // The unit of weight eg. kg(kilogram), lb(pound), mt(metric ton), t(ton). (optional) (default to @"kg")
NSString* height = @""; // Specifies the maximum height of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
NSString* heightUnit = @"ft"; // The unit of height e.g m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional) (default to @"ft")
NSString* length = @""; // Specifies the maximum length of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
NSString* lengthUnit = @"ft"; // The unit of length eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional) (default to @"ft")
NSString* width = @""; // Specifies the maximum width of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
NSString* widthUnit = @"ft"; // The unit of width eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional) (default to @"ft")

PBRoutingServiceApi*apiInstance = [[PBRoutingServiceApi alloc] init];

// Get Cost Matrix By Location.
[apiInstance getTravelCostMatrixByLocationWithStartPoints:startPoints
              endPoints:endPoints
              db:db
              optimizeBy:optimizeBy
              returnDistance:returnDistance
              destinationSrs:destinationSrs
              distanceUnit:distanceUnit
              returnTime:returnTime
              timeUnit:timeUnit
              majorRoads:majorRoads
              returnOptimalRoutesOnly:returnOptimalRoutesOnly
              historicTrafficTimeBucket:historicTrafficTimeBucket
              useCvr:useCvr
              looseningBarrierRestrictions:looseningBarrierRestrictions
              vehicleType:vehicleType
              weight:weight
              weightUnit:weightUnit
              height:height
              heightUnit:heightUnit
              length:length
              lengthUnit:lengthUnit
              width:width
              widthUnit:widthUnit
          completionHandler: ^(PBTravelCostMatrixResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBRoutingServiceApi->getTravelCostMatrixByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startPoints** | **NSString***| The address to be searched. | [optional] 
 **endPoints** | **NSString***| The address to be searched. | [optional] 
 **db** | **NSString***| Mode of commute. | [optional] [default to @&quot;driving&quot;]
 **optimizeBy** | **NSString***| Specifies whether routes should be optimized by time or distance. | [optional] [default to @&quot;time&quot;]
 **returnDistance** | **NSString***| Specifies whether distance needs to be returned in response. | [optional] [default to @&quot;true&quot;]
 **destinationSrs** | **NSString***| Specifies the desired coordinate system of returned routes. | [optional] [default to @&quot;epsg:4326&quot;]
 **distanceUnit** | **NSString***| Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). | [optional] [default to @&quot;m&quot;]
 **returnTime** | **NSString***| Specifies whether time needs to be returned in response. | [optional] [default to @&quot;true&quot;]
 **timeUnit** | **NSString***| Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). | [optional] [default to @&quot;min&quot;]
 **majorRoads** | **NSString***| Whether to include all roads in routes calculation or just major roads. | [optional] [default to @&quot;false&quot;]
 **returnOptimalRoutesOnly** | **NSString***| Specifies whether to return only the optimized route for each start and end point combination. | [optional] [default to @&quot;true&quot;]
 **historicTrafficTimeBucket** | **NSString***| Specifies whether routing calculation uses the historic traffic speeds. | [optional] [default to @&quot;None&quot;]
 **useCvr** | **NSString***| This parameter will enable/disable CVR (Commercial Vehicle Restrictions) capability in our APIs. | [optional] [default to @&quot;N&quot;]
 **looseningBarrierRestrictions** | **NSString***| Specifies that barriers will be removed when determining the route. | [optional] [default to @&quot;Y&quot;]
 **vehicleType** | **NSString***| vehicle type. | [optional] [default to @&quot;ALL&quot;]
 **weight** | **NSString***| Specifies the maximum weight of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] [default to @&quot;&quot;]
 **weightUnit** | **NSString***| The unit of weight eg. kg(kilogram), lb(pound), mt(metric ton), t(ton). | [optional] [default to @&quot;kg&quot;]
 **height** | **NSString***| Specifies the maximum height of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] [default to @&quot;&quot;]
 **heightUnit** | **NSString***| The unit of height e.g m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). | [optional] [default to @&quot;ft&quot;]
 **length** | **NSString***| Specifies the maximum length of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] [default to @&quot;&quot;]
 **lengthUnit** | **NSString***| The unit of length eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). | [optional] [default to @&quot;ft&quot;]
 **width** | **NSString***| Specifies the maximum width of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] [default to @&quot;&quot;]
 **widthUnit** | **NSString***| The unit of width eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). | [optional] [default to @&quot;ft&quot;]

### Return type

[**PBTravelCostMatrixResponse***](PBTravelCostMatrixResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

