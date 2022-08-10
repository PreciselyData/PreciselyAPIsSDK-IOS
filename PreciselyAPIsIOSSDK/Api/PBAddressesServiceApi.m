#import "PBAddressesServiceApi.h"
#import "PBQueryParamCollection.h"
#import "PBApiClient.h"
#import "PBAddressesByBoundaryRequest.h"
#import "PBAddressesCount.h"
#import "PBAddressesResponse.h"
#import "PBErrorInfo.h"


@interface PBAddressesServiceApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation PBAddressesServiceApi

NSString* kPBAddressesServiceApiErrorDomain = @"PBAddressesServiceApiErrorDomain";
NSInteger kPBAddressesServiceApiMissingParamErrorCode = 234513;

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
/// Addresses Count by Boundary Name.
/// This service accepts zip code, neighborhood, county, or city names, and returns the total number of addresses associated with these names.
///  @param country Name of country. Acceptable values are CAN, USA. 
///
///  @param areaName1 Specifies the largest geographical area, typically a state or province. (optional)
///
///  @param areaName2 Specifies the secondary geographic area, typically a county or district. (optional)
///
///  @param areaName3 Specifies a city or town name. (optional)
///
///  @param areaName4 Specifies a city subdivision or locality/neighborhood. (optional)
///
///  @param postCode Specifies the postcode (ZIP code) in the appropriate format for the country. (optional)
///
///  @returns PBAddressesCount*
///
-(NSURLSessionTask*) getAddressesCountByBoundaryNameWithCountry: (NSString*) country
    areaName1: (NSString*) areaName1
    areaName2: (NSString*) areaName2
    areaName3: (NSString*) areaName3
    areaName4: (NSString*) areaName4
    postCode: (NSString*) postCode
    completionHandler: (void (^)(PBAddressesCount* output, NSError* error)) handler {
    // verify the required parameter 'country' is set
    if (country == nil) {
        NSParameterAssert(country);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"country"] };
            NSError* error = [NSError errorWithDomain:kPBAddressesServiceApiErrorDomain code:kPBAddressesServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/addresses/v1/addresscount/byboundaryname"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
    if (postCode != nil) {
        queryParams[@"postCode"] = postCode;
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
                              responseType: @"PBAddressesCount*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBAddressesCount*)data, error);
                                }
                            }];
}

///
/// Addresses count by Boundary.
/// This service accepts custom geographic boundaries or drive time & drive distance, returns the total number of addresses within these boundaries.
///  @param addressesByBoundaryRequest  
///
///  @returns PBAddressesCount*
///
-(NSURLSessionTask*) getAddressesCountbyBoundaryWithAddressesByBoundaryRequest: (PBAddressesByBoundaryRequest*) addressesByBoundaryRequest
    completionHandler: (void (^)(PBAddressesCount* output, NSError* error)) handler {
    // verify the required parameter 'addressesByBoundaryRequest' is set
    if (addressesByBoundaryRequest == nil) {
        NSParameterAssert(addressesByBoundaryRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"addressesByBoundaryRequest"] };
            NSError* error = [NSError errorWithDomain:kPBAddressesServiceApiErrorDomain code:kPBAddressesServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/addresses/v1/addresscount/byboundary"];

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
    bodyParam = addressesByBoundaryRequest;

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
                              responseType: @"PBAddressesCount*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBAddressesCount*)data, error);
                                }
                            }];
}

///
/// Addresses by Boundary.
/// This service accepts custom geographic boundaries or drive time & drive distance, returns all known & valid addresses within these boundaries.
///  @param addressesByBoundaryRequest  
///
///  @returns PBAddressesResponse*
///
-(NSURLSessionTask*) getAddressesbyBoundaryWithAddressesByBoundaryRequest: (PBAddressesByBoundaryRequest*) addressesByBoundaryRequest
    completionHandler: (void (^)(PBAddressesResponse* output, NSError* error)) handler {
    // verify the required parameter 'addressesByBoundaryRequest' is set
    if (addressesByBoundaryRequest == nil) {
        NSParameterAssert(addressesByBoundaryRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"addressesByBoundaryRequest"] };
            NSError* error = [NSError errorWithDomain:kPBAddressesServiceApiErrorDomain code:kPBAddressesServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/addresses/v1/address/byboundary"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"application/xml", @"text/csv"]];
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
    bodyParam = addressesByBoundaryRequest;

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
                              responseType: @"PBAddressesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBAddressesResponse*)data, error);
                                }
                            }];
}

///
/// Addresses by Boundary Name.
/// This service accepts zip code, neighborhood, county, or city names, and returns all known & valid addresses associated with these names.
///  @param country Name of country. Acceptable values are CAN, USA. 
///
///  @param areaName1 Specifies the largest geographical area, typically a state or province. (optional)
///
///  @param areaName2 Specifies the secondary geographic area, typically a county or district. (optional)
///
///  @param areaName3 Specifies a city or town name. (optional)
///
///  @param areaName4 Specifies a city subdivision or locality/neighborhood. (optional)
///
///  @param postCode Specifies the postcode (ZIP code) in the appropriate format for the country. (optional)
///
///  @param maxCandidates Maximum number of addresses to be returned in response. Max. value is 100 for XML/JSON, and 2000 for CSV. (optional)
///
///  @param page Response will indicate the page number. (optional)
///
///  @returns PBAddressesResponse*
///
-(NSURLSessionTask*) getAddressesbyBoundaryNameWithCountry: (NSString*) country
    areaName1: (NSString*) areaName1
    areaName2: (NSString*) areaName2
    areaName3: (NSString*) areaName3
    areaName4: (NSString*) areaName4
    postCode: (NSString*) postCode
    maxCandidates: (NSString*) maxCandidates
    page: (NSString*) page
    completionHandler: (void (^)(PBAddressesResponse* output, NSError* error)) handler {
    // verify the required parameter 'country' is set
    if (country == nil) {
        NSParameterAssert(country);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"country"] };
            NSError* error = [NSError errorWithDomain:kPBAddressesServiceApiErrorDomain code:kPBAddressesServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/addresses/v1/address/byboundaryname"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
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
    if (postCode != nil) {
        queryParams[@"postCode"] = postCode;
    }
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (maxCandidates != nil) {
        queryParams[@"maxCandidates"] = maxCandidates;
    }
    if (page != nil) {
        queryParams[@"page"] = page;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"application/xml", @"text/csv"]];
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
                              responseType: @"PBAddressesResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBAddressesResponse*)data, error);
                                }
                            }];
}



@end
