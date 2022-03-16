# PBRoutingServiceApi

All URIs are relative to *https://api.precisely.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRouteByAddress**](PBRoutingServiceApi.md#getroutebyaddress) | **GET** /routing/v1/route/byaddress | Gets Route by Address
[**getRouteByLocation**](PBRoutingServiceApi.md#getroutebylocation) | **GET** /routing/v1/route/bylocation | Gets Route by Location
[**getTravelCostMatrixByAddress**](PBRoutingServiceApi.md#gettravelcostmatrixbyaddress) | **GET** /routing/v1/travelcostmatrix/byaddress | Gets Cost Matrix by Address
[**getTravelCostMatrixByLocation**](PBRoutingServiceApi.md#gettravelcostmatrixbylocation) | **GET** /routing/v1/travelcostmatrix/bylocation | Gets Cost Matrix by Location


# **getRouteByAddress**
```objc
-(NSNumber*) getRouteByAddressWithStartAddress: (NSString*) startAddress
    endAddress: (NSString*) endAddress
    db: (NSString*) db
    country: (NSString*) country
    intermediateAddresses: (NSString*) intermediateAddresses
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
    returnIntermediatePoints: (NSString*) returnIntermediatePoints
        completionHandler: (void (^)(PBGeoRouteResponse* output, NSError* error)) handler;
```

Gets Route by Address

Routing Directions for Single and Multiple Origin & Destination Inputs. Accepts addresses as input and Returns Point-to-Point and Multi-Point travel directions by various travel modes.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* startAddress = @"startAddress_example"; // Starting address of the route.
NSString* endAddress = @"endAddress_example"; // Ending address of the route.
NSString* db = @"driving"; // Mode of commute. (optional) (default to driving)
NSString* country = @"USA"; // Three digit ISO country code (optional) (default to USA)
NSString* intermediateAddresses = @"intermediateAddresses_example"; // List of intermediate addresses of the route. (optional)
NSString* oip = @"false"; // Specifies whether waypoints need to be optimized. (optional) (default to false)
NSString* destinationSrs = @"destinationSrs_example"; // Specifies the desired coordinate system of the returned route. (optional)
NSString* optimizeBy = @"time"; // Specifies whether the route should be optimized by time or distance. (optional) (default to time)
NSString* returnDistance = @"true"; // Specifies whether distance needs to be part of direction information in response. (optional) (default to true)
NSString* distanceUnit = @"m"; // Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional) (default to m)
NSString* returnTime = @"true"; // Specifies whether time needs to be part of direction information in response. (optional) (default to true)
NSString* timeUnit = @"min"; // Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). (optional) (default to min)
NSString* language = @"en"; // Language of travel directions. (optional) (default to en)
NSString* directionsStyle = @"None"; // Specifies whether route directions text is to be returned in the response and in what detail (Normal or Terse). (optional) (default to None)
NSString* segmentGeometryStyle = @"none"; // Specifies whether the route geometry is to be returned in the response and in what detail (End or All). (optional) (default to none)
NSString* primaryNameOnly = @"false"; // If true then only the primary street name is returned otherwise all the names for a street. (optional) (default to false)
NSString* majorRoads = @"false"; // Whether to include all roads in route calculation or just major roads. (optional) (default to false)
NSString* historicTrafficTimeBucket = @"None"; // Specifies whether routing calculation uses the historic traffic speeds. (optional) (default to None)
NSString* returnDirectionGeometry = @"false"; // Whether to include geometry associated with each route instruction in response. (optional) (default to false)
NSString* useCvr = @"N"; // This parameter will enable/disable CVR (Commercial Vehicle Restrictions) capability in our APIs (optional) (default to N)
NSString* looseningBarrierRestrictions = @"Y"; // Specifies that barriers will be removed when determining the route (optional) (default to Y)
NSString* vehicleType = @"ALL"; // vehicle type (optional) (default to ALL)
NSString* weight = @"weight_example"; // Specifies the maximum weight of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
NSString* weightUnit = @"kg"; // The unit of weight eg. kg(kilogram), lb(pound), mt(metric ton), t(ton) (optional) (default to kg)
NSString* height = @"height_example"; // Specifies the maximum height of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
NSString* heightUnit = @"ft"; // The unit of height e.g m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) (optional) (default to ft)
NSString* length = @"length_example"; // Specifies the maximum length of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
NSString* lengthUnit = @"ft"; // The unit of length eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) (optional) (default to ft)
NSString* width = @"width_example"; // Specifies the maximum width of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
NSString* widthUnit = @"ft"; // The unit of width eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) (optional) (default to ft)
NSString* returnIntermediatePoints = @"false"; // Specifies whether Intermediate points needs to be part of response. (optional) (default to false)

PBRoutingServiceApi*apiInstance = [[PBRoutingServiceApi alloc] init];

// Gets Route by Address
[apiInstance getRouteByAddressWithStartAddress:startAddress
              endAddress:endAddress
              db:db
              country:country
              intermediateAddresses:intermediateAddresses
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
              returnIntermediatePoints:returnIntermediatePoints
          completionHandler: ^(PBGeoRouteResponse* output, NSError* error) {
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
 **startAddress** | **NSString***| Starting address of the route. | 
 **endAddress** | **NSString***| Ending address of the route. | 
 **db** | **NSString***| Mode of commute. | [optional] [default to driving]
 **country** | **NSString***| Three digit ISO country code | [optional] [default to USA]
 **intermediateAddresses** | **NSString***| List of intermediate addresses of the route. | [optional] 
 **oip** | **NSString***| Specifies whether waypoints need to be optimized. | [optional] [default to false]
 **destinationSrs** | **NSString***| Specifies the desired coordinate system of the returned route. | [optional] 
 **optimizeBy** | **NSString***| Specifies whether the route should be optimized by time or distance. | [optional] [default to time]
 **returnDistance** | **NSString***| Specifies whether distance needs to be part of direction information in response. | [optional] [default to true]
 **distanceUnit** | **NSString***| Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). | [optional] [default to m]
 **returnTime** | **NSString***| Specifies whether time needs to be part of direction information in response. | [optional] [default to true]
 **timeUnit** | **NSString***| Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). | [optional] [default to min]
 **language** | **NSString***| Language of travel directions. | [optional] [default to en]
 **directionsStyle** | **NSString***| Specifies whether route directions text is to be returned in the response and in what detail (Normal or Terse). | [optional] [default to None]
 **segmentGeometryStyle** | **NSString***| Specifies whether the route geometry is to be returned in the response and in what detail (End or All). | [optional] [default to none]
 **primaryNameOnly** | **NSString***| If true then only the primary street name is returned otherwise all the names for a street. | [optional] [default to false]
 **majorRoads** | **NSString***| Whether to include all roads in route calculation or just major roads. | [optional] [default to false]
 **historicTrafficTimeBucket** | **NSString***| Specifies whether routing calculation uses the historic traffic speeds. | [optional] [default to None]
 **returnDirectionGeometry** | **NSString***| Whether to include geometry associated with each route instruction in response. | [optional] [default to false]
 **useCvr** | **NSString***| This parameter will enable/disable CVR (Commercial Vehicle Restrictions) capability in our APIs | [optional] [default to N]
 **looseningBarrierRestrictions** | **NSString***| Specifies that barriers will be removed when determining the route | [optional] [default to Y]
 **vehicleType** | **NSString***| vehicle type | [optional] [default to ALL]
 **weight** | **NSString***| Specifies the maximum weight of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] 
 **weightUnit** | **NSString***| The unit of weight eg. kg(kilogram), lb(pound), mt(metric ton), t(ton) | [optional] [default to kg]
 **height** | **NSString***| Specifies the maximum height of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] 
 **heightUnit** | **NSString***| The unit of height e.g m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) | [optional] [default to ft]
 **length** | **NSString***| Specifies the maximum length of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] 
 **lengthUnit** | **NSString***| The unit of length eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) | [optional] [default to ft]
 **width** | **NSString***| Specifies the maximum width of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] 
 **widthUnit** | **NSString***| The unit of width eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) | [optional] [default to ft]
 **returnIntermediatePoints** | **NSString***| Specifies whether Intermediate points needs to be part of response. | [optional] [default to false]

### Return type

[**PBGeoRouteResponse***](PBGeoRouteResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRouteByLocation**
```objc
-(NSNumber*) getRouteByLocationWithStartPoint: (NSString*) startPoint
    endPoint: (NSString*) endPoint
    db: (NSString*) db
    intermediatePoints: (NSString*) intermediatePoints
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
    returnIntermediatePoints: (NSString*) returnIntermediatePoints
        completionHandler: (void (^)(PBGeoRouteResponse* output, NSError* error)) handler;
```

Gets Route by Location

Returns the fastest or shortest route based on a starting and ending location with optional intermediate points as input.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* startPoint = @"startPoint_example"; // Start Point in 'Lat,Long,coordsys' format
NSString* endPoint = @"endPoint_example"; // End Point in 'Lat,Long,coordsys' format
NSString* db = @"driving"; // Mode of commute. (optional) (default to driving)
NSString* intermediatePoints = @"intermediatePoints_example"; // List of intermediate points of the route. (optional)
NSString* oip = @"false"; // Specifies whether waypoints need to be optimized. (optional) (default to false)
NSString* destinationSrs = @"destinationSrs_example"; // Specifies the desired coordinate system of the returned route. (optional)
NSString* optimizeBy = @"time"; // Specifies whether the route should be optimized by time or distance. (optional) (default to time)
NSString* returnDistance = @"true"; // Specifies whether distance needs to be part of direction information in response. (optional) (default to true)
NSString* distanceUnit = @"m"; // Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional) (default to m)
NSString* returnTime = @"true"; // Specifies whether time needs to be part of direction information in response. (optional) (default to true)
NSString* timeUnit = @"min"; // Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). (optional) (default to min)
NSString* language = @"en"; // Specifies the language of travel directions. (optional) (default to en)
NSString* directionsStyle = @"None"; // Specifies whether route directions text is to be returned in the response and in what detail (Normal or Terse). (optional) (default to None)
NSString* segmentGeometryStyle = @"none"; // Specifies whether the route geometry is to be returned in the response and in what detail (End or All). (optional) (default to none)
NSString* primaryNameOnly = @"false"; // If true then only the primary street name is returned otherwise all the names for a street. (optional) (default to false)
NSString* majorRoads = @"false"; // Whether to include all roads in route calculation or just major roads. (optional) (default to false)
NSString* historicTrafficTimeBucket = @"None"; // Specifies whether routing calculation uses the historic traffic speeds. (optional) (default to None)
NSString* returnDirectionGeometry = @"false"; // Whether to include geometry associated with each route instruction in response. (optional) (default to false)
NSString* useCvr = @"N"; // This parameter will enable/disable CVR (Commercial Vehicle Restrictions) capability in our APIs (optional) (default to N)
NSString* looseningBarrierRestrictions = @"Y"; // Specifies that barriers will be removed when determining the route (optional) (default to Y)
NSString* vehicleType = @"ALL"; // vehicle type (optional) (default to ALL)
NSString* weight = @"weight_example"; // Specifies the maximum weight of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
NSString* weightUnit = @"kg"; // The unit of weight eg. kg(kilogram), lb(pound), mt(metric ton), t(ton) (optional) (default to kg)
NSString* height = @"height_example"; // Specifies the maximum height of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
NSString* heightUnit = @"ft"; // The unit of height e.g m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) (optional) (default to ft)
NSString* length = @"length_example"; // Specifies the maximum length of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
NSString* lengthUnit = @"ft"; // The unit of length eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) (optional) (default to ft)
NSString* width = @"width_example"; // Specifies the maximum width of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
NSString* widthUnit = @"ft"; // The unit of width eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) (optional) (default to ft)
NSString* returnIntermediatePoints = @"false"; // Specifies whether Intermediate points needs to be part of response. (optional) (default to false)

PBRoutingServiceApi*apiInstance = [[PBRoutingServiceApi alloc] init];

// Gets Route by Location
[apiInstance getRouteByLocationWithStartPoint:startPoint
              endPoint:endPoint
              db:db
              intermediatePoints:intermediatePoints
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
              returnIntermediatePoints:returnIntermediatePoints
          completionHandler: ^(PBGeoRouteResponse* output, NSError* error) {
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
 **startPoint** | **NSString***| Start Point in &#39;Lat,Long,coordsys&#39; format | 
 **endPoint** | **NSString***| End Point in &#39;Lat,Long,coordsys&#39; format | 
 **db** | **NSString***| Mode of commute. | [optional] [default to driving]
 **intermediatePoints** | **NSString***| List of intermediate points of the route. | [optional] 
 **oip** | **NSString***| Specifies whether waypoints need to be optimized. | [optional] [default to false]
 **destinationSrs** | **NSString***| Specifies the desired coordinate system of the returned route. | [optional] 
 **optimizeBy** | **NSString***| Specifies whether the route should be optimized by time or distance. | [optional] [default to time]
 **returnDistance** | **NSString***| Specifies whether distance needs to be part of direction information in response. | [optional] [default to true]
 **distanceUnit** | **NSString***| Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). | [optional] [default to m]
 **returnTime** | **NSString***| Specifies whether time needs to be part of direction information in response. | [optional] [default to true]
 **timeUnit** | **NSString***| Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). | [optional] [default to min]
 **language** | **NSString***| Specifies the language of travel directions. | [optional] [default to en]
 **directionsStyle** | **NSString***| Specifies whether route directions text is to be returned in the response and in what detail (Normal or Terse). | [optional] [default to None]
 **segmentGeometryStyle** | **NSString***| Specifies whether the route geometry is to be returned in the response and in what detail (End or All). | [optional] [default to none]
 **primaryNameOnly** | **NSString***| If true then only the primary street name is returned otherwise all the names for a street. | [optional] [default to false]
 **majorRoads** | **NSString***| Whether to include all roads in route calculation or just major roads. | [optional] [default to false]
 **historicTrafficTimeBucket** | **NSString***| Specifies whether routing calculation uses the historic traffic speeds. | [optional] [default to None]
 **returnDirectionGeometry** | **NSString***| Whether to include geometry associated with each route instruction in response. | [optional] [default to false]
 **useCvr** | **NSString***| This parameter will enable/disable CVR (Commercial Vehicle Restrictions) capability in our APIs | [optional] [default to N]
 **looseningBarrierRestrictions** | **NSString***| Specifies that barriers will be removed when determining the route | [optional] [default to Y]
 **vehicleType** | **NSString***| vehicle type | [optional] [default to ALL]
 **weight** | **NSString***| Specifies the maximum weight of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] 
 **weightUnit** | **NSString***| The unit of weight eg. kg(kilogram), lb(pound), mt(metric ton), t(ton) | [optional] [default to kg]
 **height** | **NSString***| Specifies the maximum height of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] 
 **heightUnit** | **NSString***| The unit of height e.g m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) | [optional] [default to ft]
 **length** | **NSString***| Specifies the maximum length of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] 
 **lengthUnit** | **NSString***| The unit of length eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) | [optional] [default to ft]
 **width** | **NSString***| Specifies the maximum width of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] 
 **widthUnit** | **NSString***| The unit of width eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) | [optional] [default to ft]
 **returnIntermediatePoints** | **NSString***| Specifies whether Intermediate points needs to be part of response. | [optional] [default to false]

### Return type

[**PBGeoRouteResponse***](PBGeoRouteResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTravelCostMatrixByAddress**
```objc
-(NSNumber*) getTravelCostMatrixByAddressWithStartAddresses: (NSString*) startAddresses
    endAddresses: (NSString*) endAddresses
    db: (NSString*) db
    country: (NSString*) country
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

Gets Cost Matrix by Address

Calculates the travel time and distances between an array of start and end addresses.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* startAddresses = @"startAddresses_example"; // Start locations in text based addresses.
NSString* endAddresses = @"endAddresses_example"; // End locations in text based addresses.
NSString* db = @"driving"; // Mode of commute. (optional) (default to driving)
NSString* country = @"USA"; // 3 Digit ISO country code. (optional) (default to USA)
NSString* optimizeBy = @"time"; // Specifies the type of optimizing to use for the route (time/distance). (optional) (default to time)
NSString* returnDistance = @"true"; // Specifies whether to return the travel distance in the response or not. (optional) (default to true)
NSString* destinationSrs = @"destinationSrs_example"; // Coordinate system used for the returned routes. (optional)
NSString* distanceUnit = @"m"; // Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional) (default to m)
NSString* returnTime = @"true"; // Specifies whether to return the travel time in the response or not. (optional) (default to true)
NSString* timeUnit = @"min"; // Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). (optional) (default to min)
NSString* majorRoads = @"false"; // Whether to include all roads in routes calculation or just major roads. (optional) (default to false)
NSString* returnOptimalRoutesOnly = @"true"; // Specifies whether to return only the optimized route for each start and end point combination. (optional) (default to true)
NSString* historicTrafficTimeBucket = @"None"; // Specifies whether routing calculation uses the historic traffic speeds. (optional) (default to None)
NSString* useCvr = @"N"; // This parameter will enable/disable CVR (Commercial Vehicle Restrictions) capability in our APIs (optional) (default to N)
NSString* looseningBarrierRestrictions = @"Y"; // Specifies that barriers will be removed when determining the route (optional) (default to Y)
NSString* vehicleType = @"ALL"; // vehicle type (optional) (default to ALL)
NSString* weight = @"weight_example"; // Specifies the maximum weight of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
NSString* weightUnit = @"kg"; // The unit of weight eg. kg(kilogram), lb(pound), mt(metric ton), t(ton) (optional) (default to kg)
NSString* height = @"height_example"; // Specifies the maximum height of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
NSString* heightUnit = @"ft"; // The unit of height e.g m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) (optional) (default to ft)
NSString* length = @"length_example"; // Specifies the maximum length of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
NSString* lengthUnit = @"ft"; // The unit of length eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) (optional) (default to ft)
NSString* width = @"width_example"; // Specifies the maximum width of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
NSString* widthUnit = @"ft"; // The unit of width eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) (optional) (default to ft)

PBRoutingServiceApi*apiInstance = [[PBRoutingServiceApi alloc] init];

// Gets Cost Matrix by Address
[apiInstance getTravelCostMatrixByAddressWithStartAddresses:startAddresses
              endAddresses:endAddresses
              db:db
              country:country
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
 **startAddresses** | **NSString***| Start locations in text based addresses. | 
 **endAddresses** | **NSString***| End locations in text based addresses. | 
 **db** | **NSString***| Mode of commute. | [optional] [default to driving]
 **country** | **NSString***| 3 Digit ISO country code. | [optional] [default to USA]
 **optimizeBy** | **NSString***| Specifies the type of optimizing to use for the route (time/distance). | [optional] [default to time]
 **returnDistance** | **NSString***| Specifies whether to return the travel distance in the response or not. | [optional] [default to true]
 **destinationSrs** | **NSString***| Coordinate system used for the returned routes. | [optional] 
 **distanceUnit** | **NSString***| Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). | [optional] [default to m]
 **returnTime** | **NSString***| Specifies whether to return the travel time in the response or not. | [optional] [default to true]
 **timeUnit** | **NSString***| Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). | [optional] [default to min]
 **majorRoads** | **NSString***| Whether to include all roads in routes calculation or just major roads. | [optional] [default to false]
 **returnOptimalRoutesOnly** | **NSString***| Specifies whether to return only the optimized route for each start and end point combination. | [optional] [default to true]
 **historicTrafficTimeBucket** | **NSString***| Specifies whether routing calculation uses the historic traffic speeds. | [optional] [default to None]
 **useCvr** | **NSString***| This parameter will enable/disable CVR (Commercial Vehicle Restrictions) capability in our APIs | [optional] [default to N]
 **looseningBarrierRestrictions** | **NSString***| Specifies that barriers will be removed when determining the route | [optional] [default to Y]
 **vehicleType** | **NSString***| vehicle type | [optional] [default to ALL]
 **weight** | **NSString***| Specifies the maximum weight of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] 
 **weightUnit** | **NSString***| The unit of weight eg. kg(kilogram), lb(pound), mt(metric ton), t(ton) | [optional] [default to kg]
 **height** | **NSString***| Specifies the maximum height of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] 
 **heightUnit** | **NSString***| The unit of height e.g m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) | [optional] [default to ft]
 **length** | **NSString***| Specifies the maximum length of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] 
 **lengthUnit** | **NSString***| The unit of length eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) | [optional] [default to ft]
 **width** | **NSString***| Specifies the maximum width of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] 
 **widthUnit** | **NSString***| The unit of width eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) | [optional] [default to ft]

### Return type

[**PBTravelCostMatrixResponse***](PBTravelCostMatrixResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTravelCostMatrixByLocation**
```objc
-(NSNumber*) getTravelCostMatrixByLocationWithStartPoints: (NSString*) startPoints
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

Gets Cost Matrix by Location

GeoRoute's 'Travel Cost Matrix By Location' service calculates the travel time and distances between an array of start and end points based on location coordinates.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* startPoints = @"startPoints_example"; // The address to be searched.
NSString* endPoints = @"endPoints_example"; // The address to be searched.
NSString* db = @"driving"; // Mode of commute. (optional) (default to driving)
NSString* optimizeBy = @"time"; // Specifies whether routes should be optimized by time or distance. (optional) (default to time)
NSString* returnDistance = @"true"; // Specifies whether distance needs to be returned in response. (optional) (default to true)
NSString* destinationSrs = @"destinationSrs_example"; // Specifies the desired coordinate system of returned routes. (optional)
NSString* distanceUnit = @"m"; // Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional) (default to m)
NSString* returnTime = @"true"; // Specifies whether time needs to be returned in response. (optional) (default to true)
NSString* timeUnit = @"min"; // Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). (optional) (default to min)
NSString* majorRoads = @"false"; // Whether to include all roads in routes calculation or just major roads. (optional) (default to false)
NSString* returnOptimalRoutesOnly = @"true"; // Specifies whether to return only the optimized route for each start and end point combination. (optional) (default to true)
NSString* historicTrafficTimeBucket = @"None"; // Specifies whether routing calculation uses the historic traffic speeds. (optional) (default to None)
NSString* useCvr = @"N"; // This parameter will enable/disable CVR (Commercial Vehicle Restrictions) capability in our APIs (optional) (default to N)
NSString* looseningBarrierRestrictions = @"Y"; // Specifies that barriers will be removed when determining the route (optional) (default to Y)
NSString* vehicleType = @"ALL"; // vehicle type (optional) (default to ALL)
NSString* weight = @"weight_example"; // Specifies the maximum weight of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
NSString* weightUnit = @"kg"; // The unit of weight eg. kg(kilogram), lb(pound), mt(metric ton), t(ton) (optional) (default to kg)
NSString* height = @"height_example"; // Specifies the maximum height of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
NSString* heightUnit = @"ft"; // The unit of height e.g m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) (optional) (default to ft)
NSString* length = @"length_example"; // Specifies the maximum length of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
NSString* lengthUnit = @"ft"; // The unit of length eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) (optional) (default to ft)
NSString* width = @"width_example"; // Specifies the maximum width of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional)
NSString* widthUnit = @"ft"; // The unit of width eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) (optional) (default to ft)

PBRoutingServiceApi*apiInstance = [[PBRoutingServiceApi alloc] init];

// Gets Cost Matrix by Location
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
 **startPoints** | **NSString***| The address to be searched. | 
 **endPoints** | **NSString***| The address to be searched. | 
 **db** | **NSString***| Mode of commute. | [optional] [default to driving]
 **optimizeBy** | **NSString***| Specifies whether routes should be optimized by time or distance. | [optional] [default to time]
 **returnDistance** | **NSString***| Specifies whether distance needs to be returned in response. | [optional] [default to true]
 **destinationSrs** | **NSString***| Specifies the desired coordinate system of returned routes. | [optional] 
 **distanceUnit** | **NSString***| Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). | [optional] [default to m]
 **returnTime** | **NSString***| Specifies whether time needs to be returned in response. | [optional] [default to true]
 **timeUnit** | **NSString***| Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). | [optional] [default to min]
 **majorRoads** | **NSString***| Whether to include all roads in routes calculation or just major roads. | [optional] [default to false]
 **returnOptimalRoutesOnly** | **NSString***| Specifies whether to return only the optimized route for each start and end point combination. | [optional] [default to true]
 **historicTrafficTimeBucket** | **NSString***| Specifies whether routing calculation uses the historic traffic speeds. | [optional] [default to None]
 **useCvr** | **NSString***| This parameter will enable/disable CVR (Commercial Vehicle Restrictions) capability in our APIs | [optional] [default to N]
 **looseningBarrierRestrictions** | **NSString***| Specifies that barriers will be removed when determining the route | [optional] [default to Y]
 **vehicleType** | **NSString***| vehicle type | [optional] [default to ALL]
 **weight** | **NSString***| Specifies the maximum weight of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] 
 **weightUnit** | **NSString***| The unit of weight eg. kg(kilogram), lb(pound), mt(metric ton), t(ton) | [optional] [default to kg]
 **height** | **NSString***| Specifies the maximum height of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] 
 **heightUnit** | **NSString***| The unit of height e.g m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) | [optional] [default to ft]
 **length** | **NSString***| Specifies the maximum length of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] 
 **lengthUnit** | **NSString***| The unit of length eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) | [optional] [default to ft]
 **width** | **NSString***| Specifies the maximum width of a vehicle. Any vehicles over this value will be restricted when determining the route. | [optional] 
 **widthUnit** | **NSString***| The unit of width eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile) | [optional] [default to ft]

### Return type

[**PBTravelCostMatrixResponse***](PBTravelCostMatrixResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

