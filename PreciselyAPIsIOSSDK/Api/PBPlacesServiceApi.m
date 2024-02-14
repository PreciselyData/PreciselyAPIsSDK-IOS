#import "PBPlacesServiceApi.h"
#import "PBQueryParamCollection.h"
#import "PBApiClient.h"
#import "PBErrorInfo1.h"
#import "PBMetadataResponse.h"
#import "PBPOIByGeometryRequest.h"
#import "PBPlacesResponse.h"
#import "PBPoi.h"
#import "PBPoiCount.h"
#import "PBPoiCountRequest.h"


@interface PBPlacesServiceApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation PBPlacesServiceApi

NSString* kPBPlacesServiceApiErrorDomain = @"PBPlacesServiceApiErrorDomain";
NSInteger kPBPlacesServiceApiMissingParamErrorCode = 234513;

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
/// Category Code Metadata.
/// This service returns a list of Category codes & associated metadata which can then be used as inputs for querying the Points of Interest By Address or Location methods listed above.
///  @param categoryCode 4, 6, or 11 digits category code to filter the response. (optional)
///
///  @param level 1, 2, or 3. (optional)
///
///  @returns PBMetadataResponse*
///
-(NSURLSessionTask*) getCategoryCodeMetadataWithCategoryCode: (NSString*) categoryCode
    level: (NSString*) level
    completionHandler: (void (^)(PBMetadataResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/places/v1/metadata/category"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (categoryCode != nil) {
        queryParams[@"categoryCode"] = categoryCode;
    }
    if (level != nil) {
        queryParams[@"level"] = level;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/csv"]];
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
                              responseType: @"PBMetadataResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBMetadataResponse*)data, error);
                                }
                            }];
}

///
/// Points Of Interest Details By Id
/// This service returns complete details of a chosen point of interest by an identifier. The identifier could be selected from Autocomplete API response.
///  @param _id POI unique Identifier. 
///
///  @returns PBPoi*
///
-(NSURLSessionTask*) getPOIByIdWithId: (NSString*) _id
    completionHandler: (void (^)(PBPoi* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kPBPlacesServiceApiErrorDomain code:kPBPlacesServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/places/v1/poi/{id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
                              responseType: @"PBPoi*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBPoi*)data, error);
                                }
                            }];
}

///
/// Get POIs By Address.
/// This service accepts an address as input and returns nearby points-of-interest places around that address. Additional input features include retrieving data by name, type, standard industrial classifications and category codes, as well as geographic filtering by radius, travel times and travel distances. Response features include JSON as well as CSV download.
///  @param address The address to be searched. (optional)
///
///  @param country Country ISO code. (optional)
///
///  @param name Specifies the name of the place (POI) to be searched. Also performs search on partially specified names. It requires minimum 3 characters to search. (optional)
///
///  @param type Filters the points of interest (POIs) by place types. (optional)
///
///  @param categoryCode Acts as a filter to narrow down and refine POI search results. The category codes are unique 4, 6, or 11 digit numeric values. (optional)
///
///  @param sicCode Acts as a filter to narrow down and refine POI search results. The SIC codes are unique 4 or 8 digit numerical values (optional)
///
///  @param maxCandidates Maximum number of POIs that can be retrieved (optional)
///
///  @param searchRadius Radius range within which search is performed. (optional)
///
///  @param searchRadiusUnit Radius unit such as Feet, Kilometers, Miles or Meters (default). (optional)
///
///  @param travelTime Travel time within which search is performed (POIs which can be reached within travel time). (optional)
///
///  @param travelTimeUnit Travel time unit such as minutes (default), hours, seconds or milliseconds. (optional)
///
///  @param travelDistance Travel distance within which search is performed (POIs which can be reached within travel distance). (optional)
///
///  @param travelDistanceUnit Travel distance unit such as Feet (default), Kilometers, Miles or Meters. (optional)
///
///  @param travelMode Mode of commute. (optional, default to @"driving")
///
///  @param sortBy Whether to sort the results based on relevance (best match) or by nearest distance from input location. (optional)
///
///  @param fuzzyOnName Whether to allow fuzzy seacrh on name input. (optional)
///
///  @param page Specifies the page number of results where page size is the value of maxCandidates input in request. (optional)
///
///  @param matchMode Determine the leniency used to make a match between the input name and the reference data. (optional)
///
///  @param specificMatchOn Specifies the field for the Specific Match Mode. (optional)
///
///  @returns PBPlacesResponse*
///
-(NSURLSessionTask*) getPOIsByAddressWithAddress: (NSString*) address
    country: (NSString*) country
    name: (NSString*) name
    type: (NSString*) type
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    maxCandidates: (NSString*) maxCandidates
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    travelMode: (NSString*) travelMode
    sortBy: (NSString*) sortBy
    fuzzyOnName: (NSString*) fuzzyOnName
    page: (NSString*) page
    matchMode: (NSString*) matchMode
    specificMatchOn: (NSString*) specificMatchOn
    completionHandler: (void (^)(PBPlacesResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/places/v1/poi/byaddress"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (address != nil) {
        queryParams[@"address"] = address;
    }
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    if (categoryCode != nil) {
        queryParams[@"categoryCode"] = categoryCode;
    }
    if (sicCode != nil) {
        queryParams[@"sicCode"] = sicCode;
    }
    if (maxCandidates != nil) {
        queryParams[@"maxCandidates"] = maxCandidates;
    }
    if (searchRadius != nil) {
        queryParams[@"searchRadius"] = searchRadius;
    }
    if (searchRadiusUnit != nil) {
        queryParams[@"searchRadiusUnit"] = searchRadiusUnit;
    }
    if (travelTime != nil) {
        queryParams[@"travelTime"] = travelTime;
    }
    if (travelTimeUnit != nil) {
        queryParams[@"travelTimeUnit"] = travelTimeUnit;
    }
    if (travelDistance != nil) {
        queryParams[@"travelDistance"] = travelDistance;
    }
    if (travelDistanceUnit != nil) {
        queryParams[@"travelDistanceUnit"] = travelDistanceUnit;
    }
    if (travelMode != nil) {
        queryParams[@"travelMode"] = travelMode;
    }
    if (sortBy != nil) {
        queryParams[@"sortBy"] = sortBy;
    }
    if (fuzzyOnName != nil) {
        queryParams[@"fuzzyOnName"] = fuzzyOnName;
    }
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (matchMode != nil) {
        queryParams[@"matchMode"] = matchMode;
    }
    if (specificMatchOn != nil) {
        queryParams[@"specificMatchOn"] = specificMatchOn;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/csv"]];
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
                              responseType: @"PBPlacesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBPlacesResponse*)data, error);
                                }
                            }];
}

///
/// GET Points Of Interest By Area.
/// This service accepts city or postcode (alongwith country) and returns points-of-interest places within a city or postcode. Additional input features include retrieving data by name, type, standard industrial classifications and category codes, as well as geographic filtering by radius, travel times and travel distances. Response features include JSON as well as CSV download.
///  @param areaName1 Specifies the largest geographical area, typically a state or province (optional)
///
///  @param areaName3 Specifies a city or town name (optional)
///
///  @param postcode1 Specifies the postcode(ZIP code) in the appropriate format for the country (optional)
///
///  @param postcode2 Specifies the postcode(ZIP code) extension (optional)
///
///  @param country Country ISO code (optional)
///
///  @param name Specifies the name of the place (POI) to be searched. Also performs search on partially specified names. It requires minimum 3 characters to search (optional)
///
///  @param type Filters the points of interest (POIs) by place types (optional)
///
///  @param categoryCode Acts as a filter to narrow down and refine POI search results. The category codes are unique 4, 6, or 11 digit numeric values (optional)
///
///  @param sicCode Acts as a filter to narrow down and refine POI search results. The SIC codes are unique 4 or 8 digit numerical values (optional)
///
///  @param maxCandidates Maximum number of POIs that can be retrieved (optional)
///
///  @param fuzzyOnName Whether to allow fuzzy seacrh on name input (optional)
///
///  @param page Specifies the page number of results where page size is the value of maxCandidates input in request (optional)
///
///  @param matchMode Determine the leniency used to make a match between the input name and the reference data (optional)
///
///  @param specificMatchOn Specifies the field for the Specific Match Mode (optional)
///
///  @returns PBPlacesResponse*
///
-(NSURLSessionTask*) getPOIsByAreaWithAreaName1: (NSString*) areaName1
    areaName3: (NSString*) areaName3
    postcode1: (NSString*) postcode1
    postcode2: (NSString*) postcode2
    country: (NSString*) country
    name: (NSString*) name
    type: (NSString*) type
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    maxCandidates: (NSString*) maxCandidates
    fuzzyOnName: (NSString*) fuzzyOnName
    page: (NSString*) page
    matchMode: (NSString*) matchMode
    specificMatchOn: (NSString*) specificMatchOn
    completionHandler: (void (^)(PBPlacesResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/places/v1/poi/byarea"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (areaName1 != nil) {
        queryParams[@"areaName1"] = areaName1;
    }
    if (areaName3 != nil) {
        queryParams[@"areaName3"] = areaName3;
    }
    if (postcode1 != nil) {
        queryParams[@"postcode1"] = postcode1;
    }
    if (postcode2 != nil) {
        queryParams[@"postcode2"] = postcode2;
    }
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    if (categoryCode != nil) {
        queryParams[@"categoryCode"] = categoryCode;
    }
    if (sicCode != nil) {
        queryParams[@"sicCode"] = sicCode;
    }
    if (maxCandidates != nil) {
        queryParams[@"maxCandidates"] = maxCandidates;
    }
    if (fuzzyOnName != nil) {
        queryParams[@"fuzzyOnName"] = fuzzyOnName;
    }
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (matchMode != nil) {
        queryParams[@"matchMode"] = matchMode;
    }
    if (specificMatchOn != nil) {
        queryParams[@"specificMatchOn"] = specificMatchOn;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/csv"]];
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
                              responseType: @"PBPlacesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBPlacesResponse*)data, error);
                                }
                            }];
}

///
/// Points Of Interest By Boundary
/// Accepts a user-defined boundary as input and returns all Points of Interest within the boundary. Additionally, user can filter the response by name, type, standard industrial classifications and category codes.
///  @param pOIByGeometryRequest  
///
///  @returns PBPlacesResponse*
///
-(NSURLSessionTask*) getPOIsByGeometryWithPOIByGeometryRequest: (PBPOIByGeometryRequest*) pOIByGeometryRequest
    completionHandler: (void (^)(PBPlacesResponse* output, NSError* error)) handler {
    // verify the required parameter 'pOIByGeometryRequest' is set
    if (pOIByGeometryRequest == nil) {
        NSParameterAssert(pOIByGeometryRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pOIByGeometryRequest"] };
            NSError* error = [NSError errorWithDomain:kPBPlacesServiceApiErrorDomain code:kPBPlacesServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/places/v1/poi/byboundary"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/csv"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"oAuth2Password"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = pOIByGeometryRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PBPlacesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBPlacesResponse*)data, error);
                                }
                            }];
}

///
/// Get POIs By Location.
/// This service accepts latitude/longitude as input and returns nearby points-of-interest places around that location. Additional input features include retrieving data by name, type, standard industrial classifications and category codes, as well as geographic filtering by radius, travel times and travel distances. Response features include JSON as well as CSV download
///  @param longitude Longitude of the location. 
///
///  @param latitude Latitude of the location. 
///
///  @param name Specifies the name of the place (POI) to be searched. Also performs search on partially specified names. It requires minimum 3 characters to search. (optional)
///
///  @param type Filters the points of interest (POIs) by place types. (optional)
///
///  @param categoryCode Acts as a filter to narrow down and refine POI search results. The category codes are unique 4, 6, or 11 digit numeric values. (optional)
///
///  @param sicCode Acts as a filter to narrow down and refine POI search results. The SIC codes are unique 4 or 8 digit numerical values (optional)
///
///  @param maxCandidates Maximum number of POIs that can be retrieved (optional)
///
///  @param searchRadius Radius range within which search is performed. (optional)
///
///  @param searchRadiusUnit Radius unit such as Feet, Kilometers, Miles or Meters (default). (optional)
///
///  @param travelTime Travel time within which search is performed (POIs which can be reached within travel time). (optional)
///
///  @param travelTimeUnit Travel time unit such as minutes (default), hours, seconds or milliseconds. (optional)
///
///  @param travelDistance Travel distance within which search is performed (POIs which can be reached within travel distance). (optional)
///
///  @param travelDistanceUnit Travel distance unit such as Feet (default), Kilometers, Miles or Meters. (optional)
///
///  @param travelMode Mode of commute. (optional)
///
///  @param sortBy Whether to sort the results based on relevance (best match) or by nearest distance from input location. (optional)
///
///  @param fuzzyOnName Whether to allow fuzzy seacrh on name input. (optional)
///
///  @param page Specifies the page number of results where page size is the value of maxCandidates input in request. (optional)
///
///  @param matchMode Determine the leniency used to make a match between the input name and the reference data. (optional)
///
///  @param specificMatchOn Specifies the field for the Specific Match Mode. (optional)
///
///  @returns PBPlacesResponse*
///
-(NSURLSessionTask*) getPOIsByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    name: (NSString*) name
    type: (NSString*) type
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    maxCandidates: (NSString*) maxCandidates
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    travelMode: (NSString*) travelMode
    sortBy: (NSString*) sortBy
    fuzzyOnName: (NSString*) fuzzyOnName
    page: (NSString*) page
    matchMode: (NSString*) matchMode
    specificMatchOn: (NSString*) specificMatchOn
    completionHandler: (void (^)(PBPlacesResponse* output, NSError* error)) handler {
    // verify the required parameter 'longitude' is set
    if (longitude == nil) {
        NSParameterAssert(longitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"longitude"] };
            NSError* error = [NSError errorWithDomain:kPBPlacesServiceApiErrorDomain code:kPBPlacesServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'latitude' is set
    if (latitude == nil) {
        NSParameterAssert(latitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"latitude"] };
            NSError* error = [NSError errorWithDomain:kPBPlacesServiceApiErrorDomain code:kPBPlacesServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/places/v1/poi/bylocation"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    if (categoryCode != nil) {
        queryParams[@"categoryCode"] = categoryCode;
    }
    if (sicCode != nil) {
        queryParams[@"sicCode"] = sicCode;
    }
    if (maxCandidates != nil) {
        queryParams[@"maxCandidates"] = maxCandidates;
    }
    if (searchRadius != nil) {
        queryParams[@"searchRadius"] = searchRadius;
    }
    if (searchRadiusUnit != nil) {
        queryParams[@"searchRadiusUnit"] = searchRadiusUnit;
    }
    if (travelTime != nil) {
        queryParams[@"travelTime"] = travelTime;
    }
    if (travelTimeUnit != nil) {
        queryParams[@"travelTimeUnit"] = travelTimeUnit;
    }
    if (travelDistance != nil) {
        queryParams[@"travelDistance"] = travelDistance;
    }
    if (travelDistanceUnit != nil) {
        queryParams[@"travelDistanceUnit"] = travelDistanceUnit;
    }
    if (travelMode != nil) {
        queryParams[@"travelMode"] = travelMode;
    }
    if (sortBy != nil) {
        queryParams[@"sortBy"] = sortBy;
    }
    if (fuzzyOnName != nil) {
        queryParams[@"fuzzyOnName"] = fuzzyOnName;
    }
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    if (matchMode != nil) {
        queryParams[@"matchMode"] = matchMode;
    }
    if (specificMatchOn != nil) {
        queryParams[@"specificMatchOn"] = specificMatchOn;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/csv"]];
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
                              responseType: @"PBPlacesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBPlacesResponse*)data, error);
                                }
                            }];
}

///
/// Points Of Interest Count
/// Accepts a user-defined boundary as input and returns the Count number of POIs within the boundary. Additionally, user can request the count of filtered POIs by name, type, standard industrial classifications and category codes within the given polygon.
///  @param contentType  
///
///  @param poiCountRequest  
///
///  @returns PBPoiCount*
///
-(NSURLSessionTask*) getPOIsCountWithContentType: (NSString*) contentType
    poiCountRequest: (PBPoiCountRequest*) poiCountRequest
    completionHandler: (void (^)(PBPoiCount* output, NSError* error)) handler {
    // verify the required parameter 'contentType' is set
    if (contentType == nil) {
        NSParameterAssert(contentType);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"contentType"] };
            NSError* error = [NSError errorWithDomain:kPBPlacesServiceApiErrorDomain code:kPBPlacesServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'poiCountRequest' is set
    if (poiCountRequest == nil) {
        NSParameterAssert(poiCountRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"poiCountRequest"] };
            NSError* error = [NSError errorWithDomain:kPBPlacesServiceApiErrorDomain code:kPBPlacesServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/places/v1/poicount"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (contentType != nil) {
        headerParams[@"Content-Type"] = contentType;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"oAuth2Password"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = poiCountRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"PBPoiCount*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBPoiCount*)data, error);
                                }
                            }];
}

///
/// Get SIC Metadata
/// This service returns a list of standard industrial classification codes & associated metadata which can then be used as inputs for querying the Points of Interest By Address or Location methods listed above.
///  @param sicCode 4 or 8 digits SIC code to filter the response. (optional)
///
///  @param level 1 or 2. (optional)
///
///  @returns PBMetadataResponse*
///
-(NSURLSessionTask*) getSICMetadataWithSicCode: (NSString*) sicCode
    level: (NSString*) level
    completionHandler: (void (^)(PBMetadataResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/places/v1/metadata/sic"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (sicCode != nil) {
        queryParams[@"sicCode"] = sicCode;
    }
    if (level != nil) {
        queryParams[@"level"] = level;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/csv"]];
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
                              responseType: @"PBMetadataResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBMetadataResponse*)data, error);
                                }
                            }];
}

///
/// Points Of Interest Autocomplete
/// This service accepts partial text input and returns matching points of interest, sorted by relevance or distance.
///  @param xForwardedFor  (optional)
///
///  @param longitude Longitude of the location. (optional)
///
///  @param latitude Latitude of the location. (optional)
///
///  @param searchText Free text which will accept a multi-word string. Combination of POI name and address is possible. (optional)
///
///  @param searchOnNameOnly  (optional, default to @"N")
///
///  @param searchRadius Radius range within which search is performed. (optional)
///
///  @param searchRadiusUnit Radius unit such as Feet, Kilometers, Miles or Meters (default). (optional)
///
///  @param travelTime Travel time within which search is performed (POIs which can be reached within travel time). (optional)
///
///  @param travelTimeUnit Travel time unit such as minutes (default), hours, seconds or milliseconds. (optional)
///
///  @param travelDistance Travel distance within which search is performed (POIs which can be reached within travel distance). (optional)
///
///  @param travelDistanceUnit Travel distance unit such as Feet (default), Kilometers, Miles or Meters. (optional)
///
///  @param travelMode Mode of commute. (optional, default to @"driving")
///
///  @param country Country ISO code. (optional)
///
///  @param areaName1 Specifies the largest geographical area, typically a state or province. (optional)
///
///  @param areaName3 Specifies a city or town name. (optional)
///
///  @param postcode1 Specifies the postcode(ZIP code) in the appropriate format for the country. (optional)
///
///  @param postcode2 Specifies the postcode(ZIP code) extension. (optional)
///
///  @param ipAddress IP address which will be used to auto detect the location in order to serve contextually relevant results. (optional)
///
///  @param autoDetectLocation Specifies whether to detect client's location using IP address. If IP address(below) is not provided and autoDetectLocation is set 'True' then IP address will be picked from HTTP request automatically. (optional)
///
///  @param type Filters the points of interest (POIs) by place types. (optional)
///
///  @param categoryCode Acts as a filter to narrow down and refine POI search results. The category codes are unique 4, 6, or 11 digit numeric values. (optional)
///
///  @param sicCode Acts as a filter to narrow down and refine POI search results. The SIC codes are unique 4 or 8 digit numerical values. (optional)
///
///  @param maxCandidates Maximum number of POIs that can be retrieved. (optional)
///
///  @param sortBy sortBy (optional)
///
///  @param matchMode Determine the leniency used to make a match between the input name and the reference data. (optional)
///
///  @param specificMatchOn Specifies the field for the Specific Match Mode. (optional)
///
///  @returns PBPlacesResponse*
///
-(NSURLSessionTask*) poisAutocompleteWithXForwardedFor: (NSString*) xForwardedFor
    longitude: (NSString*) longitude
    latitude: (NSString*) latitude
    searchText: (NSString*) searchText
    searchOnNameOnly: (NSString*) searchOnNameOnly
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    travelMode: (NSString*) travelMode
    country: (NSString*) country
    areaName1: (NSString*) areaName1
    areaName3: (NSString*) areaName3
    postcode1: (NSString*) postcode1
    postcode2: (NSString*) postcode2
    ipAddress: (NSString*) ipAddress
    autoDetectLocation: (NSString*) autoDetectLocation
    type: (NSString*) type
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    maxCandidates: (NSString*) maxCandidates
    sortBy: (NSString*) sortBy
    matchMode: (NSString*) matchMode
    specificMatchOn: (NSString*) specificMatchOn
    completionHandler: (void (^)(PBPlacesResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/places/v1/poi/autocomplete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (searchText != nil) {
        queryParams[@"searchText"] = searchText;
    }
    if (searchOnNameOnly != nil) {
        queryParams[@"searchOnNameOnly"] = searchOnNameOnly;
    }
    if (searchRadius != nil) {
        queryParams[@"searchRadius"] = searchRadius;
    }
    if (searchRadiusUnit != nil) {
        queryParams[@"searchRadiusUnit"] = searchRadiusUnit;
    }
    if (travelTime != nil) {
        queryParams[@"travelTime"] = travelTime;
    }
    if (travelTimeUnit != nil) {
        queryParams[@"travelTimeUnit"] = travelTimeUnit;
    }
    if (travelDistance != nil) {
        queryParams[@"travelDistance"] = travelDistance;
    }
    if (travelDistanceUnit != nil) {
        queryParams[@"travelDistanceUnit"] = travelDistanceUnit;
    }
    if (travelMode != nil) {
        queryParams[@"travelMode"] = travelMode;
    }
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (areaName1 != nil) {
        queryParams[@"areaName1"] = areaName1;
    }
    if (areaName3 != nil) {
        queryParams[@"areaName3"] = areaName3;
    }
    if (postcode1 != nil) {
        queryParams[@"postcode1"] = postcode1;
    }
    if (postcode2 != nil) {
        queryParams[@"postcode2"] = postcode2;
    }
    if (ipAddress != nil) {
        queryParams[@"ipAddress"] = ipAddress;
    }
    if (autoDetectLocation != nil) {
        queryParams[@"autoDetectLocation"] = autoDetectLocation;
    }
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    if (categoryCode != nil) {
        queryParams[@"categoryCode"] = categoryCode;
    }
    if (sicCode != nil) {
        queryParams[@"sicCode"] = sicCode;
    }
    if (maxCandidates != nil) {
        queryParams[@"maxCandidates"] = maxCandidates;
    }
    if (sortBy != nil) {
        queryParams[@"sortBy"] = sortBy;
    }
    if (matchMode != nil) {
        queryParams[@"matchMode"] = matchMode;
    }
    if (specificMatchOn != nil) {
        queryParams[@"specificMatchOn"] = specificMatchOn;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xForwardedFor != nil) {
        headerParams[@"X-Forwarded-For"] = xForwardedFor;
    }
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
                              responseType: @"PBPlacesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBPlacesResponse*)data, error);
                                }
                            }];
}



@end
