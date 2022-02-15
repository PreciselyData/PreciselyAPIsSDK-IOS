#import <Foundation/Foundation.h>
#import "PBErrorInfo.h"
#import "PBRouteResponse.h"
#import "PBTravelCostMatrixResponse.h"
#import "PBApi.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* The version of the OpenAPI document: 11.9.2
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface PBRoutingServiceApi: NSObject <PBApi>

extern NSString* kPBRoutingServiceApiErrorDomain;
extern NSInteger kPBRoutingServiceApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(PBApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Gets Route By Address.
/// Accepts addresses as input and Returns Point-to-Point and Multi-Point travel directions by various travel modes.
///
/// @param startAddress Starting address of the route. (optional)
/// @param endAddress Ending address of the route. (optional)
/// @param db Mode of commute. (optional) (default to @"driving")
/// @param country Three digit ISO country code. (optional) (default to @"USA")
/// @param intermediateAddresses List of intermediate points of the route. (optional)
/// @param returnIntermediatePoints return intermediate points (optional) (default to @"false")
/// @param oip Specifies whether waypoints need to be optimized. (optional) (default to @"false")
/// @param destinationSrs Specifies the desired coordinate system of the returned route. (optional)
/// @param optimizeBy Specifies whether the route should be optimized by time or distance. (optional) (default to @"time")
/// @param returnDistance Specifies whether distance needs to be part of direction information in response. (optional) (default to @"true")
/// @param distanceUnit Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional) (default to @"m")
/// @param returnTime Specifies whether time needs to be part of direction information in response. (optional) (default to @"true")
/// @param timeUnit Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond) (optional) (default to @"min")
/// @param language Specifies the language of travel directions. (optional)
/// @param directionsStyle Specifies whether route directions text is to be returned in the response and in what detail (Normal or Terse). (optional) (default to @"None")
/// @param segmentGeometryStyle Specifies whether the route geometry is to be returned in the response and in what detail (End or All). (optional) (default to @"none")
/// @param primaryNameOnly If true then only the primary street name is returned otherwise all the names for a street. (optional) (default to @"false")
/// @param majorRoads Whether to include all roads in route calculation or just major roads. (optional) (default to @"false")
/// @param historicTrafficTimeBucket Specifies whether routing calculation uses the historic traffic speeds. (optional) (default to @"None")
/// @param returnDirectionGeometry Whether to include geometry associated with each route instruction in response. (optional) (default to @"false")
/// @param useCvr This parameter will enable/disable CVR (Commercial Vehicle Restrictions) capability in our APIs. (optional) (default to @"N")
/// @param looseningBarrierRestrictions Specifies that barriers will be removed when determining the route. (optional) (default to @"Y")
/// @param vehicleType vehicle type. (optional) (default to @"ALL")
/// @param weight Specifies the maximum weight of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
/// @param weightUnit The unit of weight eg. kg(kilogram), lb(pound), mt(metric ton), t(ton). (optional) (default to @"kg")
/// @param height Specifies the maximum height of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
/// @param heightUnit The unit of height e.g m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional) (default to @"ft")
/// @param length Specifies the maximum length of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
/// @param lengthUnit The unit of length eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional) (default to @"ft")
/// @param width Specifies the maximum width of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
/// @param widthUnit The unit of width eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional) (default to @"ft")
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBRouteResponse*
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


/// Gets Route By Location.
/// Accepts latitude & longitude as input and Returns Point-to-Point and Multi-Point travel directions by various travel modes.
///
/// @param startPoint Start Point in &#39;Lat,Long,coordsys&#39; format. (optional)
/// @param endPoint End Point in &#39;Lat,Long,coordsys&#39; format. (optional)
/// @param db Mode of commute. (optional) (default to @"driving")
/// @param intermediatePoints List of intermediate points of the route. (optional)
/// @param returnIntermediatePoints returnIntermediatePoints route. (optional) (default to @"false")
/// @param oip Specifies whether waypoints need to be optimized. (optional) (default to @"false")
/// @param destinationSrs Specifies the desired coordinate system of the returned route. (optional)
/// @param optimizeBy Specifies whether the route should be optimized by time or distance. (optional) (default to @"time")
/// @param returnDistance Specifies whether distance needs to be part of direction information in response. (optional) (default to @"true")
/// @param distanceUnit Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional) (default to @"m")
/// @param returnTime Specifies whether time needs to be part of direction information in response. (optional) (default to @"true")
/// @param timeUnit Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond) (optional) (default to @"min")
/// @param language Specifies the language of travel directions. (optional)
/// @param directionsStyle Specifies whether route directions text is to be returned in the response and in what detail (Normal or Terse). (optional) (default to @"None")
/// @param segmentGeometryStyle Specifies whether the route geometry is to be returned in the response and in what detail (End or All). (optional) (default to @"none")
/// @param primaryNameOnly If true then only the primary street name is returned otherwise all the names for a street. (optional) (default to @"false")
/// @param majorRoads Whether to include all roads in route calculation or just major roads. (optional) (default to @"false")
/// @param historicTrafficTimeBucket Specifies whether routing calculation uses the historic traffic speeds. (optional) (default to @"None")
/// @param returnDirectionGeometry Whether to include geometry associated with each route instruction in response. (optional) (default to @"false")
/// @param useCvr This parameter will enable/disable CVR (Commercial Vehicle Restrictions) capability in our APIs. (optional) (default to @"N")
/// @param looseningBarrierRestrictions Specifies that barriers will be removed when determining the route. (optional) (default to @"Y")
/// @param vehicleType vehicle type. (optional) (default to @"ALL")
/// @param weight Specifies the maximum weight of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
/// @param weightUnit The unit of weight eg. kg(kilogram), lb(pound), mt(metric ton), t(ton). (optional) (default to @"kg")
/// @param height Specifies the maximum height of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
/// @param heightUnit The unit of height e.g m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional) (default to @"ft")
/// @param length Specifies the maximum length of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
/// @param lengthUnit The unit of length eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional) (default to @"ft")
/// @param width Specifies the maximum width of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
/// @param widthUnit The unit of width eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional) (default to @"ft")
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBRouteResponse*
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


/// Get Cost Matrix By Address.
/// Accepts addresses as input and Returns travel distances and times for multiple origins to multiple destinations by various travel modes.
///
/// @param startAddresses Start locations in text based addresses. (optional)
/// @param endAddresses End locations in text based addresses. (optional)
/// @param country 3 Digit ISO country code. (optional) (default to @"USA")
/// @param db Mode of commute. (optional) (default to @"driving")
/// @param optimizeBy Specifies whether routes should be optimized by time or distance. (optional) (default to @"time")
/// @param returnDistance Specifies whether distance needs to be returned in response. (optional) (default to @"true")
/// @param destinationSrs Specifies the desired coordinate system of returned routes. (optional)
/// @param distanceUnit Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional) (default to @"m")
/// @param returnTime Specifies whether time needs to be returned in response. (optional) (default to @"true")
/// @param timeUnit Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). (optional) (default to @"min")
/// @param majorRoads Whether to include all roads in routes calculation or just major roads. (optional) (default to @"false")
/// @param returnOptimalRoutesOnly Specifies whether to return only the optimized route for each start and end point combination. (optional) (default to @"true")
/// @param historicTrafficTimeBucket Specifies whether routing calculation uses the historic traffic speeds. (optional) (default to @"None")
/// @param useCvr This parameter will enable/disable CVR (Commercial Vehicle Restrictions) capability in our APIs. (optional) (default to @"N")
/// @param looseningBarrierRestrictions Specifies that barriers will be removed when determining the route. (optional) (default to @"Y")
/// @param vehicleType vehicle type. (optional) (default to @"ALL")
/// @param weight Specifies the maximum weight of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
/// @param weightUnit The unit of weight eg. kg(kilogram), lb(pound), mt(metric ton), t(ton). (optional) (default to @"kg")
/// @param height Specifies the maximum height of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
/// @param heightUnit The unit of height e.g m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional) (default to @"ft")
/// @param length Specifies the maximum length of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
/// @param lengthUnit The unit of length eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional) (default to @"ft")
/// @param width Specifies the maximum width of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
/// @param widthUnit The unit of width eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional) (default to @"ft")
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBTravelCostMatrixResponse*
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


/// Get Cost Matrix By Location.
/// Accepts latitude & longitude as input and Returns travel distances and times for multiple origins to multiple destinations by various travel modes.
///
/// @param startPoints The address to be searched. (optional)
/// @param endPoints The address to be searched. (optional)
/// @param db Mode of commute. (optional) (default to @"driving")
/// @param optimizeBy Specifies whether routes should be optimized by time or distance. (optional) (default to @"time")
/// @param returnDistance Specifies whether distance needs to be returned in response. (optional) (default to @"true")
/// @param destinationSrs Specifies the desired coordinate system of returned routes. (optional) (default to @"epsg:4326")
/// @param distanceUnit Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional) (default to @"m")
/// @param returnTime Specifies whether time needs to be returned in response. (optional) (default to @"true")
/// @param timeUnit Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). (optional) (default to @"min")
/// @param majorRoads Whether to include all roads in routes calculation or just major roads. (optional) (default to @"false")
/// @param returnOptimalRoutesOnly Specifies whether to return only the optimized route for each start and end point combination. (optional) (default to @"true")
/// @param historicTrafficTimeBucket Specifies whether routing calculation uses the historic traffic speeds. (optional) (default to @"None")
/// @param useCvr This parameter will enable/disable CVR (Commercial Vehicle Restrictions) capability in our APIs. (optional) (default to @"N")
/// @param looseningBarrierRestrictions Specifies that barriers will be removed when determining the route. (optional) (default to @"Y")
/// @param vehicleType vehicle type. (optional) (default to @"ALL")
/// @param weight Specifies the maximum weight of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
/// @param weightUnit The unit of weight eg. kg(kilogram), lb(pound), mt(metric ton), t(ton). (optional) (default to @"kg")
/// @param height Specifies the maximum height of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
/// @param heightUnit The unit of height e.g m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional) (default to @"ft")
/// @param length Specifies the maximum length of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
/// @param lengthUnit The unit of length eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional) (default to @"ft")
/// @param width Specifies the maximum width of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional) (default to @"")
/// @param widthUnit The unit of width eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional) (default to @"ft")
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBTravelCostMatrixResponse*
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



@end
