#import "PBGeocodeServiceApi.h"
#import "PBQueryParamCollection.h"
#import "PBGeocodeServiceResponse.h"
#import "PBGeocodeRequest.h"
#import "PBGeocodeServiceResponseList.h"
#import "PBGeocodeCapabilitiesResponse.h"
#import "PBConfiguredDictionaryResponse.h"
#import "PBPBKeyResponse.h"
#import "PBPBKeyAddressRequest.h"
#import "PBPBKeyResponseList.h"
#import "PBKeyLookupRequest.h"
#import "PBReverseGeocodeRequest.h"


@interface PBGeocodeServiceApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation PBGeocodeServiceApi

NSString* kPBGeocodeServiceApiErrorDomain = @"PBGeocodeServiceApiErrorDomain";
NSInteger kPBGeocodeServiceApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    self = [super init];
    if (self) {
        PBConfiguration *config = [PBConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[PBApiClient alloc] init];
        }
        _apiClient = config.apiClient;
        _defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(PBApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+ (instancetype)sharedAPI {
    static PBGeocodeServiceApi *sharedAPI;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        sharedAPI = [[self alloc] init];
    });
    return sharedAPI;
}

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.defaultHeaders[key];
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [self setDefaultHeaderValue:value forKey:key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(NSUInteger) requestQueueSize {
    return [PBApiClient requestQueueSize];
}

#pragma mark - Api Methods

///
/// Get Forward Geocode
/// This service accepts an address and returns the location coordinates corresponding to that address. Premium offers the best accuracy and is a high precision geocoder leveraging Master Location Data - geocodes to Street or building level.
///  @param datapackBundle value of datapackBundle 
///
///  @param country Country name or ISO code. (optional, default to USA)
///
///  @param placeName Building name, place name, Point of Interest (POI), company or firm name associated with the input address. (optional)
///
///  @param mainAddress Single line input, treated as collection of field elements. (optional, default to 4750 Walnut St., Boulder CO, 80301)
///
///  @param lastLine The last line of the address. (optional)
///
///  @param areaName1 Specifies the largest geographical area, typically a state or province. (optional)
///
///  @param areaName2 Specifies the secondary geographic area, typically a county or district. (optional)
///
///  @param areaName3 Specifies a city or town name. (optional)
///
///  @param areaName4 Specifies a city subdivision or locality. (optional)
///
///  @param postalCode The postal code in the appropriate format for the country. (optional)
///
///  @param matchMode Match modes determine the leniency used to make a match between the input address and the reference data. (optional, default to Standard)
///
///  @param fallbackGeo Specifies whether to attempt to determine a geographic region centroid when an address-level geocode cannot be determined. (optional, default to true)
///
///  @param fallbackPostal Specifies whether to attempt to determine a post code centroid when an address-level geocode cannot be determined. (optional, default to true)
///
///  @param maxCands The maximum number of candidates to return. (optional, default to 1)
///
///  @param streetOffset Indicates the offset distance from the street segments to use in street-level geocoding. (optional, default to 7)
///
///  @param streetOffsetUnits Specifies the unit of measurement for the street offset. (optional, default to METERS)
///
///  @param cornerOffset Specifies the distance to offset the street end points in street-level matching. (optional, default to 7)
///
///  @param cornerOffsetUnits Specifies the unit of measurement for the corner offset. (optional, default to METERS)
///
///  @param removeAccentMarks Specifies whether to Suppress accents and other diacritical marks. (optional, default to false)
///
///  @returns PBGeocodeServiceResponse*
///
-(NSNumber*) geocodeWithDatapackBundle: (NSString*) datapackBundle
    country: (NSString*) country
    placeName: (NSString*) placeName
    mainAddress: (NSString*) mainAddress
    lastLine: (NSString*) lastLine
    areaName1: (NSString*) areaName1
    areaName2: (NSString*) areaName2
    areaName3: (NSString*) areaName3
    areaName4: (NSString*) areaName4
    postalCode: (NSNumber*) postalCode
    matchMode: (NSString*) matchMode
    fallbackGeo: (NSNumber*) fallbackGeo
    fallbackPostal: (NSNumber*) fallbackPostal
    maxCands: (NSNumber*) maxCands
    streetOffset: (NSNumber*) streetOffset
    streetOffsetUnits: (NSString*) streetOffsetUnits
    cornerOffset: (NSNumber*) cornerOffset
    cornerOffsetUnits: (NSString*) cornerOffsetUnits
    removeAccentMarks: (NSNumber*) removeAccentMarks
    completionHandler: (void (^)(PBGeocodeServiceResponse* output, NSError* error)) handler {
    // verify the required parameter 'datapackBundle' is set
    if (datapackBundle == nil) {
        NSParameterAssert(datapackBundle);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"datapackBundle"] };
            NSError* error = [NSError errorWithDomain:kPBGeocodeServiceApiErrorDomain code:kPBGeocodeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geocode/v1/{datapackBundle}/geocode"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (datapackBundle != nil) {
        pathParams[@"datapackBundle"] = datapackBundle;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (placeName != nil) {
        queryParams[@"placeName"] = placeName;
    }
    if (mainAddress != nil) {
        queryParams[@"mainAddress"] = mainAddress;
    }
    if (lastLine != nil) {
        queryParams[@"lastLine"] = lastLine;
    }
    if (areaName1 != nil) {
        queryParams[@"areaName1"] = areaName1;
    }
    if (areaName2 != nil) {
        queryParams[@"areaName2"] = areaName2;
    }
    if (areaName3 != nil) {
        queryParams[@"areaName3"] = areaName3;
    }
    if (areaName4 != nil) {
        queryParams[@"areaName4"] = areaName4;
    }
    if (postalCode != nil) {
        queryParams[@"postalCode"] = postalCode;
    }
    if (matchMode != nil) {
        queryParams[@"matchMode"] = matchMode;
    }
    if (fallbackGeo != nil) {
        queryParams[@"fallbackGeo"] = fallbackGeo;
    }
    if (fallbackPostal != nil) {
        queryParams[@"fallbackPostal"] = fallbackPostal;
    }
    if (maxCands != nil) {
        queryParams[@"maxCands"] = maxCands;
    }
    if (streetOffset != nil) {
        queryParams[@"streetOffset"] = streetOffset;
    }
    if (streetOffsetUnits != nil) {
        queryParams[@"streetOffsetUnits"] = streetOffsetUnits;
    }
    if (cornerOffset != nil) {
        queryParams[@"cornerOffset"] = cornerOffset;
    }
    if (cornerOffsetUnits != nil) {
        queryParams[@"cornerOffsetUnits"] = cornerOffsetUnits;
    }
    if (removeAccentMarks != nil) {
        queryParams[@"removeAccentMarks"] = removeAccentMarks;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/xml", @"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"application/xml"]];

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
                              responseType: @"PBGeocodeServiceResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeocodeServiceResponse*)data, error);
                                }
                           }
          ];
}

///
/// Post Forward Geocode
/// This is a Batch offering for geocode service. It accepts a single address or a list of addresses and returns location coordinates.
///  @param body Geocode Request Object 
///
///  @param datapackBundle value of datapackBundle 
///
///  @returns PBGeocodeServiceResponseList*
///
-(NSNumber*) geocodeBatchWithBody: (PBGeocodeRequest*) body
    datapackBundle: (NSString*) datapackBundle
    completionHandler: (void (^)(PBGeocodeServiceResponseList* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kPBGeocodeServiceApiErrorDomain code:kPBGeocodeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'datapackBundle' is set
    if (datapackBundle == nil) {
        NSParameterAssert(datapackBundle);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"datapackBundle"] };
            NSError* error = [NSError errorWithDomain:kPBGeocodeServiceApiErrorDomain code:kPBGeocodeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geocode/v1/{datapackBundle}/geocode"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (datapackBundle != nil) {
        pathParams[@"datapackBundle"] = datapackBundle;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/xml", @"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"application/xml"]];

    // Authentication setting
    NSArray *authSettings = @[@"oAuth2Password"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

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
                              responseType: @"PBGeocodeServiceResponseList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeocodeServiceResponseList*)data, error);
                                }
                           }
          ];
}

///
/// Get Capabilities
/// Get Capabilities  of Geocode API
///  @param datapackBundle value of datapackBundle 
///
///  @param operation Geocode or ReverseGeocode Operation. (optional, default to geocode)
///
///  @param country Country name or ISO code. (optional, default to USA)
///
///  @returns PBGeocodeCapabilitiesResponse*
///
-(NSNumber*) getCapabilitiesWithDatapackBundle: (NSString*) datapackBundle
    operation: (NSString*) operation
    country: (NSString*) country
    completionHandler: (void (^)(PBGeocodeCapabilitiesResponse* output, NSError* error)) handler {
    // verify the required parameter 'datapackBundle' is set
    if (datapackBundle == nil) {
        NSParameterAssert(datapackBundle);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"datapackBundle"] };
            NSError* error = [NSError errorWithDomain:kPBGeocodeServiceApiErrorDomain code:kPBGeocodeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geocode/v1/{datapackBundle}/capabilities"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (datapackBundle != nil) {
        pathParams[@"datapackBundle"] = datapackBundle;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (operation != nil) {
        queryParams[@"operation"] = operation;
    }
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/xml", @"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"application/xml"]];

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
                              responseType: @"PBGeocodeCapabilitiesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeocodeCapabilitiesResponse*)data, error);
                                }
                           }
          ];
}

///
/// Get installed Dictionaries
/// Get installed Dictionaries
///  @param datapackBundle value of datapackBundle 
///
///  @param country Three Letter ISO Country code (optional, default to USA)
///
///  @returns PBConfiguredDictionaryResponse*
///
-(NSNumber*) getDictionariesWithDatapackBundle: (NSString*) datapackBundle
    country: (NSString*) country
    completionHandler: (void (^)(PBConfiguredDictionaryResponse* output, NSError* error)) handler {
    // verify the required parameter 'datapackBundle' is set
    if (datapackBundle == nil) {
        NSParameterAssert(datapackBundle);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"datapackBundle"] };
            NSError* error = [NSError errorWithDomain:kPBGeocodeServiceApiErrorDomain code:kPBGeocodeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geocode/v1/{datapackBundle}/dictionaries"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (datapackBundle != nil) {
        pathParams[@"datapackBundle"] = datapackBundle;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/xml", @"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"application/xml"]];

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
                              responseType: @"PBConfiguredDictionaryResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBConfiguredDictionaryResponse*)data, error);
                                }
                           }
          ];
}

///
/// Get PreciselyID By Address
/// This service accepts an address and returns the corresponding PreciselyID.
///  @param address free form address text 
///
///  @param country Country ISO code. (optional)
///
///  @returns PBPBKeyResponse*
///
-(NSNumber*) getPreciselyIDWithAddress: (NSString*) address
    country: (NSString*) country
    completionHandler: (void (^)(PBPBKeyResponse* output, NSError* error)) handler {
    // verify the required parameter 'address' is set
    if (address == nil) {
        NSParameterAssert(address);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"address"] };
            NSError* error = [NSError errorWithDomain:kPBGeocodeServiceApiErrorDomain code:kPBGeocodeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geocode/v1/key/byaddress"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (address != nil) {
        queryParams[@"address"] = address;
    }
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/xml", @"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"application/xml"]];

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
                              responseType: @"PBPBKeyResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBPBKeyResponse*)data, error);
                                }
                           }
          ];
}

///
/// Post PreciselyID By Address
/// This is a Batch offering for 'PreciselyID By Address' service. It accepts a single address or a list of addresses and returns the corresponding PreciselyID.
///  @param body  
///
///  @returns PBPBKeyResponseList*
///
-(NSNumber*) getPreciselyIDsWithBody: (PBPBKeyAddressRequest*) body
    completionHandler: (void (^)(PBPBKeyResponseList* output, NSError* error)) handler {
    // verify the required parameter 'body' is set
    if (body == nil) {
        NSParameterAssert(body);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"body"] };
            NSError* error = [NSError errorWithDomain:kPBGeocodeServiceApiErrorDomain code:kPBGeocodeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geocode/v1/key/byaddress"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/xml", @"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"application/xml"]];

    // Authentication setting
    NSArray *authSettings = @[@"oAuth2Password"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

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
                              responseType: @"PBPBKeyResponseList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBPBKeyResponseList*)data, error);
                                }
                           }
          ];
}

///
/// Get Key Lookup
/// This service accepts a PreciselyID and returns the corresponding address associated with that PreciselyID.
///  @param key free form text 
///
///  @param type  (optional)
///
///  @param country  (optional)
///
///  @returns PBGeocodeServiceResponse*
///
-(NSNumber*) keyLookupWithKey: (NSString*) key
    type: (NSString*) type
    country: (NSString*) country
    completionHandler: (void (^)(PBGeocodeServiceResponse* output, NSError* error)) handler {
    // verify the required parameter 'key' is set
    if (key == nil) {
        NSParameterAssert(key);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"key"] };
            NSError* error = [NSError errorWithDomain:kPBGeocodeServiceApiErrorDomain code:kPBGeocodeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geocode/v1/keylookup"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (key != nil) {
        queryParams[@"key"] = key;
    }
    if (type != nil) {
        queryParams[@"type"] = type;
    }
    if (country != nil) {
        queryParams[@"country"] = country;
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"application/xml"]];

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
                              responseType: @"PBGeocodeServiceResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeocodeServiceResponse*)data, error);
                                }
                           }
          ];
}

///
/// Post Key Lookup
/// This service accepts batches of PreciselyID's and returns the corresponding address associated with those PreciselyID's.
///  @param body  (optional)
///
///  @returns PBGeocodeServiceResponseList*
///
-(NSNumber*) keyLookupBatchWithBody: (PBKeyLookupRequest*) body
    completionHandler: (void (^)(PBGeocodeServiceResponseList* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geocode/v1/keylookup"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"application/xml"]];

    // Authentication setting
    NSArray *authSettings = @[@"oAuth2Password"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

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
                              responseType: @"PBGeocodeServiceResponseList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeocodeServiceResponseList*)data, error);
                                }
                           }
          ];
}

///
/// Post Reverse Geocode
/// It accepts a single location coordinate or a list of location coordinates and returns addresses.
///  @param datapackBundle value of datapackBundle 
///
///  @param body Request for Reverse Geocode (optional)
///
///  @returns PBGeocodeServiceResponseList*
///
-(NSNumber*) reverseGeocodBatchWithDatapackBundle: (NSString*) datapackBundle
    body: (PBReverseGeocodeRequest*) body
    completionHandler: (void (^)(PBGeocodeServiceResponseList* output, NSError* error)) handler {
    // verify the required parameter 'datapackBundle' is set
    if (datapackBundle == nil) {
        NSParameterAssert(datapackBundle);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"datapackBundle"] };
            NSError* error = [NSError errorWithDomain:kPBGeocodeServiceApiErrorDomain code:kPBGeocodeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geocode/v1/{datapackBundle}/reverseGeocode"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (datapackBundle != nil) {
        pathParams[@"datapackBundle"] = datapackBundle;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/xml", @"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"application/xml"]];

    // Authentication setting
    NSArray *authSettings = @[@"oAuth2Password"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = body;

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
                              responseType: @"PBGeocodeServiceResponseList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeocodeServiceResponseList*)data, error);
                                }
                           }
          ];
}

///
/// Get Reverse Geocode
/// This service accepts location coordinate and returns an address.
///  @param datapackBundle value of datapackBundle 
///
///  @param x Longitude of the location. 
///
///  @param y Latitude of the location. 
///
///  @param country Country name or ISO code. (optional)
///
///  @param coordSysName Coordinate system to convert geometry to in format codespace:code. (optional, default to EPSG:4326)
///
///  @param distance Radius in which search is performed. (optional, default to 150)
///
///  @param distanceUnits Unit of measurement. (optional, default to METERS)
///
///  @returns PBGeocodeServiceResponse*
///
-(NSNumber*) reverseGeocodeWithDatapackBundle: (NSString*) datapackBundle
    x: (NSNumber*) x
    y: (NSNumber*) y
    country: (NSString*) country
    coordSysName: (NSString*) coordSysName
    distance: (NSNumber*) distance
    distanceUnits: (NSString*) distanceUnits
    completionHandler: (void (^)(PBGeocodeServiceResponse* output, NSError* error)) handler {
    // verify the required parameter 'datapackBundle' is set
    if (datapackBundle == nil) {
        NSParameterAssert(datapackBundle);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"datapackBundle"] };
            NSError* error = [NSError errorWithDomain:kPBGeocodeServiceApiErrorDomain code:kPBGeocodeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'x' is set
    if (x == nil) {
        NSParameterAssert(x);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"x"] };
            NSError* error = [NSError errorWithDomain:kPBGeocodeServiceApiErrorDomain code:kPBGeocodeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'y' is set
    if (y == nil) {
        NSParameterAssert(y);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"y"] };
            NSError* error = [NSError errorWithDomain:kPBGeocodeServiceApiErrorDomain code:kPBGeocodeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geocode/v1/{datapackBundle}/reverseGeocode"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (datapackBundle != nil) {
        pathParams[@"datapackBundle"] = datapackBundle;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (x != nil) {
        queryParams[@"x"] = x;
    }
    if (y != nil) {
        queryParams[@"y"] = y;
    }
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (coordSysName != nil) {
        queryParams[@"coordSysName"] = coordSysName;
    }
    if (distance != nil) {
        queryParams[@"distance"] = distance;
    }
    if (distanceUnits != nil) {
        queryParams[@"distanceUnits"] = distanceUnits;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/xml", @"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"application/xml"]];

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
                              responseType: @"PBGeocodeServiceResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeocodeServiceResponse*)data, error);
                                }
                           }
          ];
}



@end
