#import "PBRoutingServiceApi.h"
#import "PBQueryParamCollection.h"
#import "PBApiClient.h"
#import "PBErrorInfo.h"
#import "PBRouteResponse.h"
#import "PBTravelCostMatrixResponse.h"


@interface PBRoutingServiceApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation PBRoutingServiceApi

NSString* kPBRoutingServiceApiErrorDomain = @"PBRoutingServiceApiErrorDomain";
NSInteger kPBRoutingServiceApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[PBApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(PBApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Gets Route By Address.
/// Accepts addresses as input and Returns Point-to-Point and Multi-Point travel directions by various travel modes.
///  @param startAddress Starting address of the route. (optional)
///
///  @param endAddress Ending address of the route. (optional)
///
///  @param db Mode of commute. (optional, default to @"driving")
///
///  @param country Three digit ISO country code. (optional, default to @"USA")
///
///  @param intermediateAddresses List of intermediate points of the route. (optional)
///
///  @param returnIntermediatePoints return intermediate points (optional, default to @"false")
///
///  @param oip Specifies whether waypoints need to be optimized. (optional, default to @"false")
///
///  @param destinationSrs Specifies the desired coordinate system of the returned route. (optional)
///
///  @param optimizeBy Specifies whether the route should be optimized by time or distance. (optional, default to @"time")
///
///  @param returnDistance Specifies whether distance needs to be part of direction information in response. (optional, default to @"true")
///
///  @param distanceUnit Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional, default to @"m")
///
///  @param returnTime Specifies whether time needs to be part of direction information in response. (optional, default to @"true")
///
///  @param timeUnit Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond) (optional, default to @"min")
///
///  @param language Specifies the language of travel directions. (optional)
///
///  @param directionsStyle Specifies whether route directions text is to be returned in the response and in what detail (Normal or Terse). (optional, default to @"None")
///
///  @param segmentGeometryStyle Specifies whether the route geometry is to be returned in the response and in what detail (End or All). (optional, default to @"none")
///
///  @param primaryNameOnly If true then only the primary street name is returned otherwise all the names for a street. (optional, default to @"false")
///
///  @param majorRoads Whether to include all roads in route calculation or just major roads. (optional, default to @"false")
///
///  @param historicTrafficTimeBucket Specifies whether routing calculation uses the historic traffic speeds. (optional, default to @"None")
///
///  @param returnDirectionGeometry Whether to include geometry associated with each route instruction in response. (optional, default to @"false")
///
///  @param useCvr This parameter will enable/disable CVR (Commercial Vehicle Restrictions) capability in our APIs. (optional, default to @"N")
///
///  @param looseningBarrierRestrictions Specifies that barriers will be removed when determining the route. (optional, default to @"Y")
///
///  @param vehicleType vehicle type. (optional, default to @"ALL")
///
///  @param weight Specifies the maximum weight of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional, default to @"")
///
///  @param weightUnit The unit of weight eg. kg(kilogram), lb(pound), mt(metric ton), t(ton). (optional, default to @"kg")
///
///  @param height Specifies the maximum height of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional, default to @"")
///
///  @param heightUnit The unit of height e.g m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional, default to @"ft")
///
///  @param length Specifies the maximum length of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional, default to @"")
///
///  @param lengthUnit The unit of length eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional, default to @"ft")
///
///  @param width Specifies the maximum width of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional, default to @"")
///
///  @param widthUnit The unit of width eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional, default to @"ft")
///
///  @returns PBRouteResponse*
///
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
    completionHandler: (void (^)(PBRouteResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/routing/v1/route/byaddress"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (startAddress != nil) {
        queryParams[@"startAddress"] = startAddress;
    }
    if (endAddress != nil) {
        queryParams[@"endAddress"] = endAddress;
    }
    if (db != nil) {
        queryParams[@"db"] = db;
    }
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (intermediateAddresses != nil) {
        queryParams[@"intermediateAddresses"] = intermediateAddresses;
    }
    if (returnIntermediatePoints != nil) {
        queryParams[@"returnIntermediatePoints"] = returnIntermediatePoints;
    }
    if (oip != nil) {
        queryParams[@"oip"] = oip;
    }
    if (destinationSrs != nil) {
        queryParams[@"destinationSrs"] = destinationSrs;
    }
    if (optimizeBy != nil) {
        queryParams[@"optimizeBy"] = optimizeBy;
    }
    if (returnDistance != nil) {
        queryParams[@"returnDistance"] = returnDistance;
    }
    if (distanceUnit != nil) {
        queryParams[@"distanceUnit"] = distanceUnit;
    }
    if (returnTime != nil) {
        queryParams[@"returnTime"] = returnTime;
    }
    if (timeUnit != nil) {
        queryParams[@"timeUnit"] = timeUnit;
    }
    if (language != nil) {
        queryParams[@"language"] = language;
    }
    if (directionsStyle != nil) {
        queryParams[@"directionsStyle"] = directionsStyle;
    }
    if (segmentGeometryStyle != nil) {
        queryParams[@"segmentGeometryStyle"] = segmentGeometryStyle;
    }
    if (primaryNameOnly != nil) {
        queryParams[@"primaryNameOnly"] = primaryNameOnly;
    }
    if (majorRoads != nil) {
        queryParams[@"majorRoads"] = majorRoads;
    }
    if (historicTrafficTimeBucket != nil) {
        queryParams[@"historicTrafficTimeBucket"] = historicTrafficTimeBucket;
    }
    if (returnDirectionGeometry != nil) {
        queryParams[@"returnDirectionGeometry"] = returnDirectionGeometry;
    }
    if (useCvr != nil) {
        queryParams[@"useCvr"] = useCvr;
    }
    if (looseningBarrierRestrictions != nil) {
        queryParams[@"looseningBarrierRestrictions"] = looseningBarrierRestrictions;
    }
    if (vehicleType != nil) {
        queryParams[@"vehicleType"] = vehicleType;
    }
    if (weight != nil) {
        queryParams[@"weight"] = weight;
    }
    if (weightUnit != nil) {
        queryParams[@"weightUnit"] = weightUnit;
    }
    if (height != nil) {
        queryParams[@"height"] = height;
    }
    if (heightUnit != nil) {
        queryParams[@"heightUnit"] = heightUnit;
    }
    if (length != nil) {
        queryParams[@"length"] = length;
    }
    if (lengthUnit != nil) {
        queryParams[@"lengthUnit"] = lengthUnit;
    }
    if (width != nil) {
        queryParams[@"width"] = width;
    }
    if (widthUnit != nil) {
        queryParams[@"widthUnit"] = widthUnit;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"oAuth2Password"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PBRouteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBRouteResponse*)data, error);
                                }
                            }];
}

///
/// Gets Route By Location.
/// Accepts latitude & longitude as input and Returns Point-to-Point and Multi-Point travel directions by various travel modes.
///  @param startPoint Start Point in 'Lat,Long,coordsys' format. (optional)
///
///  @param endPoint End Point in 'Lat,Long,coordsys' format. (optional)
///
///  @param db Mode of commute. (optional, default to @"driving")
///
///  @param intermediatePoints List of intermediate points of the route. (optional)
///
///  @param returnIntermediatePoints returnIntermediatePoints route. (optional, default to @"false")
///
///  @param oip Specifies whether waypoints need to be optimized. (optional, default to @"false")
///
///  @param destinationSrs Specifies the desired coordinate system of the returned route. (optional)
///
///  @param optimizeBy Specifies whether the route should be optimized by time or distance. (optional, default to @"time")
///
///  @param returnDistance Specifies whether distance needs to be part of direction information in response. (optional, default to @"true")
///
///  @param distanceUnit Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional, default to @"m")
///
///  @param returnTime Specifies whether time needs to be part of direction information in response. (optional, default to @"true")
///
///  @param timeUnit Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond) (optional, default to @"min")
///
///  @param language Specifies the language of travel directions. (optional)
///
///  @param directionsStyle Specifies whether route directions text is to be returned in the response and in what detail (Normal or Terse). (optional, default to @"None")
///
///  @param segmentGeometryStyle Specifies whether the route geometry is to be returned in the response and in what detail (End or All). (optional, default to @"none")
///
///  @param primaryNameOnly If true then only the primary street name is returned otherwise all the names for a street. (optional, default to @"false")
///
///  @param majorRoads Whether to include all roads in route calculation or just major roads. (optional, default to @"false")
///
///  @param historicTrafficTimeBucket Specifies whether routing calculation uses the historic traffic speeds. (optional, default to @"None")
///
///  @param returnDirectionGeometry Whether to include geometry associated with each route instruction in response. (optional, default to @"false")
///
///  @param useCvr This parameter will enable/disable CVR (Commercial Vehicle Restrictions) capability in our APIs. (optional, default to @"N")
///
///  @param looseningBarrierRestrictions Specifies that barriers will be removed when determining the route. (optional, default to @"Y")
///
///  @param vehicleType vehicle type. (optional, default to @"ALL")
///
///  @param weight Specifies the maximum weight of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional, default to @"")
///
///  @param weightUnit The unit of weight eg. kg(kilogram), lb(pound), mt(metric ton), t(ton). (optional, default to @"kg")
///
///  @param height Specifies the maximum height of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional, default to @"")
///
///  @param heightUnit The unit of height e.g m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional, default to @"ft")
///
///  @param length Specifies the maximum length of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional, default to @"")
///
///  @param lengthUnit The unit of length eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional, default to @"ft")
///
///  @param width Specifies the maximum width of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional, default to @"")
///
///  @param widthUnit The unit of width eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional, default to @"ft")
///
///  @returns PBRouteResponse*
///
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
    completionHandler: (void (^)(PBRouteResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/routing/v1/route/bylocation"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (startPoint != nil) {
        queryParams[@"startPoint"] = startPoint;
    }
    if (endPoint != nil) {
        queryParams[@"endPoint"] = endPoint;
    }
    if (db != nil) {
        queryParams[@"db"] = db;
    }
    if (intermediatePoints != nil) {
        queryParams[@"intermediatePoints"] = intermediatePoints;
    }
    if (returnIntermediatePoints != nil) {
        queryParams[@"returnIntermediatePoints"] = returnIntermediatePoints;
    }
    if (oip != nil) {
        queryParams[@"oip"] = oip;
    }
    if (destinationSrs != nil) {
        queryParams[@"destinationSrs"] = destinationSrs;
    }
    if (optimizeBy != nil) {
        queryParams[@"optimizeBy"] = optimizeBy;
    }
    if (returnDistance != nil) {
        queryParams[@"returnDistance"] = returnDistance;
    }
    if (distanceUnit != nil) {
        queryParams[@"distanceUnit"] = distanceUnit;
    }
    if (returnTime != nil) {
        queryParams[@"returnTime"] = returnTime;
    }
    if (timeUnit != nil) {
        queryParams[@"timeUnit"] = timeUnit;
    }
    if (language != nil) {
        queryParams[@"language"] = language;
    }
    if (directionsStyle != nil) {
        queryParams[@"directionsStyle"] = directionsStyle;
    }
    if (segmentGeometryStyle != nil) {
        queryParams[@"segmentGeometryStyle"] = segmentGeometryStyle;
    }
    if (primaryNameOnly != nil) {
        queryParams[@"primaryNameOnly"] = primaryNameOnly;
    }
    if (majorRoads != nil) {
        queryParams[@"majorRoads"] = majorRoads;
    }
    if (historicTrafficTimeBucket != nil) {
        queryParams[@"historicTrafficTimeBucket"] = historicTrafficTimeBucket;
    }
    if (returnDirectionGeometry != nil) {
        queryParams[@"returnDirectionGeometry"] = returnDirectionGeometry;
    }
    if (useCvr != nil) {
        queryParams[@"useCvr"] = useCvr;
    }
    if (looseningBarrierRestrictions != nil) {
        queryParams[@"looseningBarrierRestrictions"] = looseningBarrierRestrictions;
    }
    if (vehicleType != nil) {
        queryParams[@"vehicleType"] = vehicleType;
    }
    if (weight != nil) {
        queryParams[@"weight"] = weight;
    }
    if (weightUnit != nil) {
        queryParams[@"weightUnit"] = weightUnit;
    }
    if (height != nil) {
        queryParams[@"height"] = height;
    }
    if (heightUnit != nil) {
        queryParams[@"heightUnit"] = heightUnit;
    }
    if (length != nil) {
        queryParams[@"length"] = length;
    }
    if (lengthUnit != nil) {
        queryParams[@"lengthUnit"] = lengthUnit;
    }
    if (width != nil) {
        queryParams[@"width"] = width;
    }
    if (widthUnit != nil) {
        queryParams[@"widthUnit"] = widthUnit;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"oAuth2Password"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PBRouteResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBRouteResponse*)data, error);
                                }
                            }];
}

///
/// Get Cost Matrix By Address.
/// Accepts addresses as input and Returns travel distances and times for multiple origins to multiple destinations by various travel modes.
///  @param startAddresses Start locations in text based addresses. (optional)
///
///  @param endAddresses End locations in text based addresses. (optional)
///
///  @param country 3 Digit ISO country code. (optional, default to @"USA")
///
///  @param db Mode of commute. (optional, default to @"driving")
///
///  @param optimizeBy Specifies whether routes should be optimized by time or distance. (optional, default to @"time")
///
///  @param returnDistance Specifies whether distance needs to be returned in response. (optional, default to @"true")
///
///  @param destinationSrs Specifies the desired coordinate system of returned routes. (optional)
///
///  @param distanceUnit Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional, default to @"m")
///
///  @param returnTime Specifies whether time needs to be returned in response. (optional, default to @"true")
///
///  @param timeUnit Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). (optional, default to @"min")
///
///  @param majorRoads Whether to include all roads in routes calculation or just major roads. (optional, default to @"false")
///
///  @param returnOptimalRoutesOnly Specifies whether to return only the optimized route for each start and end point combination. (optional, default to @"true")
///
///  @param historicTrafficTimeBucket Specifies whether routing calculation uses the historic traffic speeds. (optional, default to @"None")
///
///  @param useCvr This parameter will enable/disable CVR (Commercial Vehicle Restrictions) capability in our APIs. (optional, default to @"N")
///
///  @param looseningBarrierRestrictions Specifies that barriers will be removed when determining the route. (optional, default to @"Y")
///
///  @param vehicleType vehicle type. (optional, default to @"ALL")
///
///  @param weight Specifies the maximum weight of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional, default to @"")
///
///  @param weightUnit The unit of weight eg. kg(kilogram), lb(pound), mt(metric ton), t(ton). (optional, default to @"kg")
///
///  @param height Specifies the maximum height of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional, default to @"")
///
///  @param heightUnit The unit of height e.g m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional, default to @"ft")
///
///  @param length Specifies the maximum length of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional, default to @"")
///
///  @param lengthUnit The unit of length eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional, default to @"ft")
///
///  @param width Specifies the maximum width of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional, default to @"")
///
///  @param widthUnit The unit of width eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional, default to @"ft")
///
///  @returns PBTravelCostMatrixResponse*
///
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
    completionHandler: (void (^)(PBTravelCostMatrixResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/routing/v1/travelcostmatrix/byaddress"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (startAddresses != nil) {
        queryParams[@"startAddresses"] = startAddresses;
    }
    if (endAddresses != nil) {
        queryParams[@"endAddresses"] = endAddresses;
    }
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (db != nil) {
        queryParams[@"db"] = db;
    }
    if (optimizeBy != nil) {
        queryParams[@"optimizeBy"] = optimizeBy;
    }
    if (returnDistance != nil) {
        queryParams[@"returnDistance"] = returnDistance;
    }
    if (destinationSrs != nil) {
        queryParams[@"destinationSrs"] = destinationSrs;
    }
    if (distanceUnit != nil) {
        queryParams[@"distanceUnit"] = distanceUnit;
    }
    if (returnTime != nil) {
        queryParams[@"returnTime"] = returnTime;
    }
    if (timeUnit != nil) {
        queryParams[@"timeUnit"] = timeUnit;
    }
    if (majorRoads != nil) {
        queryParams[@"majorRoads"] = majorRoads;
    }
    if (returnOptimalRoutesOnly != nil) {
        queryParams[@"returnOptimalRoutesOnly"] = returnOptimalRoutesOnly;
    }
    if (historicTrafficTimeBucket != nil) {
        queryParams[@"historicTrafficTimeBucket"] = historicTrafficTimeBucket;
    }
    if (useCvr != nil) {
        queryParams[@"useCvr"] = useCvr;
    }
    if (looseningBarrierRestrictions != nil) {
        queryParams[@"looseningBarrierRestrictions"] = looseningBarrierRestrictions;
    }
    if (vehicleType != nil) {
        queryParams[@"vehicleType"] = vehicleType;
    }
    if (weight != nil) {
        queryParams[@"weight"] = weight;
    }
    if (weightUnit != nil) {
        queryParams[@"weightUnit"] = weightUnit;
    }
    if (height != nil) {
        queryParams[@"height"] = height;
    }
    if (heightUnit != nil) {
        queryParams[@"heightUnit"] = heightUnit;
    }
    if (length != nil) {
        queryParams[@"length"] = length;
    }
    if (lengthUnit != nil) {
        queryParams[@"lengthUnit"] = lengthUnit;
    }
    if (width != nil) {
        queryParams[@"width"] = width;
    }
    if (widthUnit != nil) {
        queryParams[@"widthUnit"] = widthUnit;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"application/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"oAuth2Password"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PBTravelCostMatrixResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTravelCostMatrixResponse*)data, error);
                                }
                            }];
}

///
/// Get Cost Matrix By Location.
/// Accepts latitude & longitude as input and Returns travel distances and times for multiple origins to multiple destinations by various travel modes.
///  @param startPoints The address to be searched. (optional)
///
///  @param endPoints The address to be searched. (optional)
///
///  @param db Mode of commute. (optional, default to @"driving")
///
///  @param optimizeBy Specifies whether routes should be optimized by time or distance. (optional, default to @"time")
///
///  @param returnDistance Specifies whether distance needs to be returned in response. (optional, default to @"true")
///
///  @param destinationSrs Specifies the desired coordinate system of returned routes. (optional, default to @"epsg:4326")
///
///  @param distanceUnit Return Distance Unit such as ft(Foot), km(Kilometer), mi(Mile), m(Meter) or yd(Yard). (optional, default to @"m")
///
///  @param returnTime Specifies whether time needs to be returned in response. (optional, default to @"true")
///
///  @param timeUnit Return time unit such as min(Minute), h(Hour), s(Second) or msec(Millisecond). (optional, default to @"min")
///
///  @param majorRoads Whether to include all roads in routes calculation or just major roads. (optional, default to @"false")
///
///  @param returnOptimalRoutesOnly Specifies whether to return only the optimized route for each start and end point combination. (optional, default to @"true")
///
///  @param historicTrafficTimeBucket Specifies whether routing calculation uses the historic traffic speeds. (optional, default to @"None")
///
///  @param useCvr This parameter will enable/disable CVR (Commercial Vehicle Restrictions) capability in our APIs. (optional, default to @"N")
///
///  @param looseningBarrierRestrictions Specifies that barriers will be removed when determining the route. (optional, default to @"Y")
///
///  @param vehicleType vehicle type. (optional, default to @"ALL")
///
///  @param weight Specifies the maximum weight of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional, default to @"")
///
///  @param weightUnit The unit of weight eg. kg(kilogram), lb(pound), mt(metric ton), t(ton). (optional, default to @"kg")
///
///  @param height Specifies the maximum height of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional, default to @"")
///
///  @param heightUnit The unit of height e.g m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional, default to @"ft")
///
///  @param length Specifies the maximum length of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional, default to @"")
///
///  @param lengthUnit The unit of length eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional, default to @"ft")
///
///  @param width Specifies the maximum width of a vehicle. Any vehicles over this value will be restricted when determining the route. (optional, default to @"")
///
///  @param widthUnit The unit of width eg. m(meter), km(kilometer), yd(yard), ft(foot), mi(mile). (optional, default to @"ft")
///
///  @returns PBTravelCostMatrixResponse*
///
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
    completionHandler: (void (^)(PBTravelCostMatrixResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/routing/v1/travelcostmatrix/bylocation"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (startPoints != nil) {
        queryParams[@"startPoints"] = startPoints;
    }
    if (endPoints != nil) {
        queryParams[@"endPoints"] = endPoints;
    }
    if (db != nil) {
        queryParams[@"db"] = db;
    }
    if (optimizeBy != nil) {
        queryParams[@"optimizeBy"] = optimizeBy;
    }
    if (returnDistance != nil) {
        queryParams[@"returnDistance"] = returnDistance;
    }
    if (destinationSrs != nil) {
        queryParams[@"destinationSrs"] = destinationSrs;
    }
    if (distanceUnit != nil) {
        queryParams[@"distanceUnit"] = distanceUnit;
    }
    if (returnTime != nil) {
        queryParams[@"returnTime"] = returnTime;
    }
    if (timeUnit != nil) {
        queryParams[@"timeUnit"] = timeUnit;
    }
    if (majorRoads != nil) {
        queryParams[@"majorRoads"] = majorRoads;
    }
    if (returnOptimalRoutesOnly != nil) {
        queryParams[@"returnOptimalRoutesOnly"] = returnOptimalRoutesOnly;
    }
    if (historicTrafficTimeBucket != nil) {
        queryParams[@"historicTrafficTimeBucket"] = historicTrafficTimeBucket;
    }
    if (useCvr != nil) {
        queryParams[@"useCvr"] = useCvr;
    }
    if (looseningBarrierRestrictions != nil) {
        queryParams[@"looseningBarrierRestrictions"] = looseningBarrierRestrictions;
    }
    if (vehicleType != nil) {
        queryParams[@"vehicleType"] = vehicleType;
    }
    if (weight != nil) {
        queryParams[@"weight"] = weight;
    }
    if (weightUnit != nil) {
        queryParams[@"weightUnit"] = weightUnit;
    }
    if (height != nil) {
        queryParams[@"height"] = height;
    }
    if (heightUnit != nil) {
        queryParams[@"heightUnit"] = heightUnit;
    }
    if (length != nil) {
        queryParams[@"length"] = length;
    }
    if (lengthUnit != nil) {
        queryParams[@"lengthUnit"] = lengthUnit;
    }
    if (width != nil) {
        queryParams[@"width"] = width;
    }
    if (widthUnit != nil) {
        queryParams[@"widthUnit"] = widthUnit;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"application/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"oAuth2Password"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PBTravelCostMatrixResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTravelCostMatrixResponse*)data, error);
                                }
                            }];
}



@end
