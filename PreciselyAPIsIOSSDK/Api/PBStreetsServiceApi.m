#import "PBStreetsServiceApi.h"
#import "PBQueryParamCollection.h"
#import "PBApiClient.h"
#import "PBErrorInfo.h"
#import "PBIntersectionResponse.h"
#import "PBSpeedLimit.h"


@interface PBStreetsServiceApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation PBStreetsServiceApi

NSString* kPBStreetsServiceApiErrorDomain = @"PBStreetsServiceApiErrorDomain";
NSInteger kPBStreetsServiceApiMissingParamErrorCode = 234513;

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
/// Nearest Intesection By Address.
/// This service accepts an address as input and returns the Nearest Intersection.
///  @param address Address (optional)
///
///  @param roadClass Filters roads with specified class, allowed values are (Major, Secondary, Other and All), default is All (optional)
///
///  @param driveTime Returns Intersection in specified drive time (optional)
///
///  @param driveTimeUnit Drive time unit, allowed values are (hours, minutes, seconds and milliseconds), default is minutes (optional)
///
///  @param searchRadius Search radius within which user wants to search, default is 50 miles (optional)
///
///  @param searchRadiusUnit Search radius unit, allowed values are (feet, meter, kilometers and miles) (optional)
///
///  @param historicSpeed Traffic flow in peak time, allowed values are (AMPEAK,PMPEAK,OFFPEAK,NIGHT) (optional)
///
///  @param maxCandidates max candidates to be returned default is 1 (optional)
///
///  @returns PBIntersectionResponse*
///
-(NSURLSessionTask*) getIntersectionByAddressWithAddress: (NSString*) address
    roadClass: (NSString*) roadClass
    driveTime: (NSString*) driveTime
    driveTimeUnit: (NSString*) driveTimeUnit
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    historicSpeed: (NSString*) historicSpeed
    maxCandidates: (NSString*) maxCandidates
    completionHandler: (void (^)(PBIntersectionResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/streets/v1/intersection/byaddress"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (address != nil) {
        queryParams[@"address"] = address;
    }
    if (roadClass != nil) {
        queryParams[@"roadClass"] = roadClass;
    }
    if (driveTime != nil) {
        queryParams[@"driveTime"] = driveTime;
    }
    if (driveTimeUnit != nil) {
        queryParams[@"driveTimeUnit"] = driveTimeUnit;
    }
    if (searchRadius != nil) {
        queryParams[@"searchRadius"] = searchRadius;
    }
    if (searchRadiusUnit != nil) {
        queryParams[@"searchRadiusUnit"] = searchRadiusUnit;
    }
    if (historicSpeed != nil) {
        queryParams[@"historicSpeed"] = historicSpeed;
    }
    if (maxCandidates != nil) {
        queryParams[@"maxCandidates"] = maxCandidates;
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
                              responseType: @"PBIntersectionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBIntersectionResponse*)data, error);
                                }
                            }];
}

///
/// Nearest Intesection By Location.
/// This service accepts latitude/longitude as input and returns the Nearest Intersection.
///  @param longitude Longitude of the location. (optional)
///
///  @param latitude Latitude of the location. (optional)
///
///  @param roadClass Filters roads with specified class, allowed values are (Major, Secondary, Other and All), default is All (optional)
///
///  @param driveTime Returns Intersection in specified drive time (optional)
///
///  @param driveTimeUnit Drive time unit, allowed values are (hours, minutes, seconds and milliseconds), default is minutes (optional)
///
///  @param searchRadius Search radius within which user wants to search, default is 50 miles (optional)
///
///  @param searchRadiusUnit Search radius unit, allowed values are (feet, meter, kilometers and miles) (optional)
///
///  @param historicSpeed Traffic flow in peak time, allowed values are (AMPEAK,PMPEAK,OFFPEAK,NIGHT) (optional)
///
///  @param maxCandidates max candidates to be returned default is 1 (optional)
///
///  @returns PBIntersectionResponse*
///
-(NSURLSessionTask*) getIntersectionByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    roadClass: (NSString*) roadClass
    driveTime: (NSString*) driveTime
    driveTimeUnit: (NSString*) driveTimeUnit
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    historicSpeed: (NSString*) historicSpeed
    maxCandidates: (NSString*) maxCandidates
    completionHandler: (void (^)(PBIntersectionResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/streets/v1/intersection/bylocation"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (roadClass != nil) {
        queryParams[@"roadClass"] = roadClass;
    }
    if (driveTime != nil) {
        queryParams[@"driveTime"] = driveTime;
    }
    if (driveTimeUnit != nil) {
        queryParams[@"driveTimeUnit"] = driveTimeUnit;
    }
    if (searchRadius != nil) {
        queryParams[@"searchRadius"] = searchRadius;
    }
    if (searchRadiusUnit != nil) {
        queryParams[@"searchRadiusUnit"] = searchRadiusUnit;
    }
    if (historicSpeed != nil) {
        queryParams[@"historicSpeed"] = historicSpeed;
    }
    if (maxCandidates != nil) {
        queryParams[@"maxCandidates"] = maxCandidates;
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
                              responseType: @"PBIntersectionResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBIntersectionResponse*)data, error);
                                }
                            }];
}

///
/// Nearest Speedlimit.
/// This service accepts point coordinates of a path as input and returns the posted speed limit of the road segment on which this path will snap.
///  @param path Accepts multiple points which will be snapped to the nearest road segment. Longitude and Latitude will be comma separated (longitude,latitude) and Point Coordinates will be separated by semi-colon(;) (optional)
///
///  @returns PBSpeedLimit*
///
-(NSURLSessionTask*) getNearestSpeedLimitWithPath: (NSString*) path
    completionHandler: (void (^)(PBSpeedLimit* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/streets/v1/speedlimit"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (path != nil) {
        queryParams[@"path"] = path;
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
                              responseType: @"PBSpeedLimit*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBSpeedLimit*)data, error);
                                }
                            }];
}



@end
