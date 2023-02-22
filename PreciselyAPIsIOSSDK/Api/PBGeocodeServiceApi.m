#import "PBGeocodeServiceApi.h"
#import "PBQueryParamCollection.h"
#import "PBApiClient.h"
#import "PBErrorInfo.h"
#import "PBGeocodeRequest.h"
#import "PBGeocodeServiceResponse.h"
#import "PBGeocodeServiceResponseList.h"
#import "PBKeyLookupRequest.h"
#import "PBPBKeyAddressRequest.h"
#import "PBPBKeyResponse.h"
#import "PBPBKeyResponseList.h"
#import "PBReverseGeocodeRequest.h"


@interface PBGeocodeServiceApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation PBGeocodeServiceApi

NSString* kPBGeocodeServiceApiErrorDomain = @"PBGeocodeServiceApiErrorDomain";
NSInteger kPBGeocodeServiceApiMissingParamErrorCode = 234513;

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
/// Get Forward Geocode(Basic/Premium/Advanced)
/// This service accepts an address and returns the location coordinates corresponding to that address. Premium offers the best accuracy and is a high precision geocoder leveraging Master Location Data - geocodes to Street or building level. Advanced offers advanced accuracy and geocodes to Street level.Basic offering will geocode to a Place or Postal level. Good accuracy.
///  @param datapackBundle datapackBundle 
///
///  @param country Country name or ISO code. (optional, default to @"USA")
///
///  @param mainAddress Single line input, treated as collection of field elements. (optional, default to @"4750 Walnut St., Boulder CO, 80301")
///
///  @param matchMode Match modes determine the leniency used to make a match between the input address and the reference data. (optional, default to @"Standard")
///
///  @param fallbackGeo Specifies whether to attempt to determine a geographic region centroid when an address-level geocode cannot be determined. (optional, default to @"true")
///
///  @param fallbackPostal Specifies whether to attempt to determine a post code centroid when an address-level geocode cannot be determined. (optional, default to @"true")
///
///  @param maxCands The maximum number of candidates to return. (optional, default to @"1")
///
///  @param streetOffset Indicates the offset distance from the street segments to use in street-level geocoding. (optional, default to @"7")
///
///  @param streetOffsetUnits Specifies the unit of measurement for the street offset. (optional, default to @"METERS")
///
///  @param cornerOffset Specifies the distance to offset the street end points in street-level matching. (optional, default to @"7")
///
///  @param cornerOffsetUnits Specifies the unit of measurement for the corner offset. (optional, default to @"METERS")
///
///  @param removeAccentMarks Specifies whether to Suppress accents and other diacritical marks. (optional, default to @"false")
///
///  @param findDPV Specifies if Delivery Point Validation is required. Note: This parameter is only applicable for USA addresses. (optional, default to @"false")
///
///  @returns PBGeocodeServiceResponse*
///
-(NSURLSessionTask*) geocodeWithDatapackBundle: (NSString*) datapackBundle
    country: (NSString*) country
    mainAddress: (NSString*) mainAddress
    matchMode: (NSString*) matchMode
    fallbackGeo: (NSString*) fallbackGeo
    fallbackPostal: (NSString*) fallbackPostal
    maxCands: (NSString*) maxCands
    streetOffset: (NSString*) streetOffset
    streetOffsetUnits: (NSString*) streetOffsetUnits
    cornerOffset: (NSString*) cornerOffset
    cornerOffsetUnits: (NSString*) cornerOffsetUnits
    removeAccentMarks: (NSString*) removeAccentMarks
    findDPV: (NSString*) findDPV
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

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (datapackBundle != nil) {
        pathParams[@"datapackBundle"] = datapackBundle;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (mainAddress != nil) {
        queryParams[@"mainAddress"] = mainAddress;
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
    if (findDPV != nil) {
        queryParams[@"findDPV"] = findDPV;
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
                              responseType: @"PBGeocodeServiceResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeocodeServiceResponse*)data, error);
                                }
                            }];
}

///
/// Post Forward Geocode
/// This is a Batch offering for geocode service. It accepts a single address or a list of addresses and returns location coordinates
///  @param datapackBundle  
///
///  @param geocodeRequest  
///
///  @returns PBGeocodeServiceResponseList*
///
-(NSURLSessionTask*) geocodeBatchWithDatapackBundle: (NSString*) datapackBundle
    geocodeRequest: (PBGeocodeRequest*) geocodeRequest
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

    // verify the required parameter 'geocodeRequest' is set
    if (geocodeRequest == nil) {
        NSParameterAssert(geocodeRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"geocodeRequest"] };
            NSError* error = [NSError errorWithDomain:kPBGeocodeServiceApiErrorDomain code:kPBGeocodeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geocode/v1/{datapackBundle}/geocode"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (datapackBundle != nil) {
        pathParams[@"datapackBundle"] = datapackBundle;
    }

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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"oAuth2Password"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = geocodeRequest;

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
                            }];
}

///
/// Get PreciselyID By Address
/// This service accepts an address and returns the corresponding PreciselyID
///  @param address The address to be searched. 
///
///  @param country 3 letter ISO code of the country to be searched. (optional)
///
///  @returns PBPBKeyResponse*
///
-(NSURLSessionTask*) getPBKeyWithAddress: (NSString*) address
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
                              responseType: @"PBPBKeyResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBPBKeyResponse*)data, error);
                                }
                            }];
}

///
/// Post PreciselyID By Address
/// This is a Batch offering for 'PreciselyID By Address' service. It accepts a single address or a list of addresses and returns the corresponding PreciselyID.
///  @param pBKeyAddressRequest  
///
///  @returns PBPBKeyResponseList*
///
-(NSURLSessionTask*) getPBKeysWithPBKeyAddressRequest: (PBPBKeyAddressRequest*) pBKeyAddressRequest
    completionHandler: (void (^)(PBPBKeyResponseList* output, NSError* error)) handler {
    // verify the required parameter 'pBKeyAddressRequest' is set
    if (pBKeyAddressRequest == nil) {
        NSParameterAssert(pBKeyAddressRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pBKeyAddressRequest"] };
            NSError* error = [NSError errorWithDomain:kPBGeocodeServiceApiErrorDomain code:kPBGeocodeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geocode/v1/key/byaddress"];

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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"oAuth2Password"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = pBKeyAddressRequest;

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
                            }];
}

///
/// Get Key Lookup
/// This service accepts a PreciselyID and returns the corresponding address associated with that PreciselyID.
///  @param key PreciselyID which maps to a unique address. 
///
///  @param type Specifies the key type - PreciselyID and GNAF_PID for Aus. 
///
///  @param country 3 letter ISO code of the country to be searched. (optional)
///
///  @returns PBGeocodeServiceResponse*
///
-(NSURLSessionTask*) keyLookupWithKey: (NSString*) key
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

    // verify the required parameter 'type' is set
    if (type == nil) {
        NSParameterAssert(type);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"type"] };
            NSError* error = [NSError errorWithDomain:kPBGeocodeServiceApiErrorDomain code:kPBGeocodeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geocode/v1/keylookup"];

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
                              responseType: @"PBGeocodeServiceResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeocodeServiceResponse*)data, error);
                                }
                            }];
}

///
/// Post Key Lookup
/// This service accepts batches of PreciselyID's and returns the corresponding address associated with those PreciselyID's.
///  @param keyLookupRequest  
///
///  @returns PBGeocodeServiceResponseList*
///
-(NSURLSessionTask*) keyLookupBatchWithKeyLookupRequest: (PBKeyLookupRequest*) keyLookupRequest
    completionHandler: (void (^)(PBGeocodeServiceResponseList* output, NSError* error)) handler {
    // verify the required parameter 'keyLookupRequest' is set
    if (keyLookupRequest == nil) {
        NSParameterAssert(keyLookupRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"keyLookupRequest"] };
            NSError* error = [NSError errorWithDomain:kPBGeocodeServiceApiErrorDomain code:kPBGeocodeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geocode/v1/keylookup"];

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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"oAuth2Password"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = keyLookupRequest;

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
                            }];
}

///
/// Post Reverse Geocode
/// This is a Batch offering for geocode service. It accepts a single address or a list of addresses and returns location coordinates
///  @param datapackBundle  
///
///  @param reverseGeocodeRequest  
///
///  @returns PBGeocodeServiceResponseList*
///
-(NSURLSessionTask*) reverseGeocodBatchWithDatapackBundle: (NSString*) datapackBundle
    reverseGeocodeRequest: (PBReverseGeocodeRequest*) reverseGeocodeRequest
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

    // verify the required parameter 'reverseGeocodeRequest' is set
    if (reverseGeocodeRequest == nil) {
        NSParameterAssert(reverseGeocodeRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"reverseGeocodeRequest"] };
            NSError* error = [NSError errorWithDomain:kPBGeocodeServiceApiErrorDomain code:kPBGeocodeServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/geocode/v1/{datapackBundle}/reverseGeocode"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (datapackBundle != nil) {
        pathParams[@"datapackBundle"] = datapackBundle;
    }

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
    bodyParam = reverseGeocodeRequest;

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
                            }];
}

///
/// Get Reverse Geocode(Basic/Premium/Advanced)
/// This service accepts location coordinate and returns an address.
///  @param datapackBundle datapackBundle 
///
///  @param x Longitude of the location. 
///
///  @param y Latitude of the location. 
///
///  @param country Country name or ISO code. (optional)
///
///  @param coordSysName Coordinate system to convert geometry to in format codespace:code. (optional, default to @"EPSG:4326")
///
///  @param distance Radius in which search is performed. (optional, default to @"Radius in which search is performed.")
///
///  @param distanceUnits Unit of measurement. (optional, default to @"METERS")
///
///  @returns PBGeocodeServiceResponse*
///
-(NSURLSessionTask*) reverseGeocodeWithDatapackBundle: (NSString*) datapackBundle
    x: (NSString*) x
    y: (NSString*) y
    country: (NSString*) country
    coordSysName: (NSString*) coordSysName
    distance: (NSString*) distance
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
                              responseType: @"PBGeocodeServiceResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGeocodeServiceResponse*)data, error);
                                }
                            }];
}



@end
