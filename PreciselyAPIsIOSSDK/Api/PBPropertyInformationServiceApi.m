#import "PBPropertyInformationServiceApi.h"
#import "PBQueryParamCollection.h"
#import "PBParcelBoundary.h"
#import "PBErrorInfo.h"
#import "PBPropertyInfoResponse.h"
#import "PBPropertyInfoResponses.h"
#import "PBPropertyInfoAddressRequest.h"


@interface PBPropertyInformationServiceApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation PBPropertyInformationServiceApi

NSString* kPBPropertyInformationServiceApiErrorDomain = @"PBPropertyInformationServiceApiErrorDomain";
NSInteger kPBPropertyInformationServiceApiMissingParamErrorCode = 234513;

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
    static PBPropertyInformationServiceApi *sharedAPI;
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
/// Get Parcel Boundary By Address
/// Accepts address as input and returns property parcel boundary around that address.
///  @param address free form address text 
///
///  @param accept  (optional)
///
///  @returns PBParcelBoundary*
///
-(NSNumber*) getParcelBoundaryByAddressWithAddress: (NSString*) address
    accept: (NSString*) accept
    completionHandler: (void (^)(PBParcelBoundary* output, NSError* error)) handler {
    // verify the required parameter 'address' is set
    if (address == nil) {
        NSParameterAssert(address);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"address"] };
            NSError* error = [NSError errorWithDomain:kPBPropertyInformationServiceApiErrorDomain code:kPBPropertyInformationServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/property/v1/parcelboundary/byaddress"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (address != nil) {
        queryParams[@"address"] = address;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (accept != nil) {
        headerParams[@"Accept"] = accept;
    }
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
    NSArray *authSettings = @[];

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
                              responseType: @"PBParcelBoundary*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBParcelBoundary*)data, error);
                                }
                           }
          ];
}

///
/// Get Parcel Boundary By Location
/// Accepts latitude/longitude as input and returns property parcel boundary around that location.
///  @param longitude Longitude of Location 
///
///  @param latitude Latitude of Location 
///
///  @param accept  (optional)
///
///  @returns PBParcelBoundary*
///
-(NSNumber*) getParcelBoundaryByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    accept: (NSString*) accept
    completionHandler: (void (^)(PBParcelBoundary* output, NSError* error)) handler {
    // verify the required parameter 'longitude' is set
    if (longitude == nil) {
        NSParameterAssert(longitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"longitude"] };
            NSError* error = [NSError errorWithDomain:kPBPropertyInformationServiceApiErrorDomain code:kPBPropertyInformationServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'latitude' is set
    if (latitude == nil) {
        NSParameterAssert(latitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"latitude"] };
            NSError* error = [NSError errorWithDomain:kPBPropertyInformationServiceApiErrorDomain code:kPBPropertyInformationServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/property/v1/parcelboundary/bylocation"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (accept != nil) {
        headerParams[@"Accept"] = accept;
    }
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
    NSArray *authSettings = @[];

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
                              responseType: @"PBParcelBoundary*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBParcelBoundary*)data, error);
                                }
                           }
          ];
}

///
/// PropertyV2 Attributes By Address.
/// GetPropertyAttributesbyAddress Endpoint will take address as an input and will return key property attributes in response. Optionally user will have the option to filter the attributes and will pay for only returned attributes.
///  @param address free form address text (optional)
///
///  @param attributeFilter Case-insensitive comma separated values of property attributes. Response will contain only the input attributes. (optional)
///
///  @returns PBPropertyInfoResponse*
///
-(NSNumber*) getPropertyAttributesByAddressWithAddress: (NSString*) address
    attributeFilter: (NSString*) attributeFilter
    completionHandler: (void (^)(PBPropertyInfoResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/property/v2/attributes/byaddress"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (address != nil) {
        queryParams[@"address"] = address;
    }
    if (attributeFilter != nil) {
        queryParams[@"attributeFilter"] = attributeFilter;
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
                              responseType: @"PBPropertyInfoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBPropertyInfoResponse*)data, error);
                                }
                           }
          ];
}

///
/// PropertyV2 Attributes By Address Batch.
/// GetPropertyAttributesbyAddressBatch Endpoint will take the list of addresses as an input and will return key property attributes for the given addresses in response. Optionally user will have the option to filter the attributes and will pay for only returned attributes.
///  @param body  (optional)
///
///  @returns PBPropertyInfoResponses*
///
-(NSNumber*) getPropertyAttributesByAddressBatchWithBody: (PBPropertyInfoAddressRequest*) body
    completionHandler: (void (^)(PBPropertyInfoResponses* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/property/v2/attributes/byaddress"];

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
                              responseType: @"PBPropertyInfoResponses*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBPropertyInfoResponses*)data, error);
                                }
                           }
          ];
}



@end
