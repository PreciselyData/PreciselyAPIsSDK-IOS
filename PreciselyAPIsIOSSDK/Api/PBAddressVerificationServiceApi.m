#import "PBAddressVerificationServiceApi.h"
#import "PBQueryParamCollection.h"
#import "PBApiClient.h"
#import "PBErrorInfo.h"
#import "PBGetCityStateProvinceAPIRequest.h"
#import "PBGetCityStateProvinceAPIResponse.h"
#import "PBGetPostalCodesAPIRequest.h"
#import "PBGetPostalCodesAPIResponse.h"
#import "PBValidateMailingAddressPremiumRequest.h"
#import "PBValidateMailingAddressPremiumResponse.h"
#import "PBValidateMailingAddressProRequest.h"
#import "PBValidateMailingAddressProResponse.h"
#import "PBValidateMailingAddressRequest.h"
#import "PBValidateMailingAddressResponse.h"
#import "PBValidateMailingAddressUSCANAPIRequest.h"
#import "PBValidateMailingAddressUSCANAPIResponse.h"


@interface PBAddressVerificationServiceApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation PBAddressVerificationServiceApi

NSString* kPBAddressVerificationServiceApiErrorDomain = @"PBAddressVerificationServiceApiErrorDomain";
NSInteger kPBAddressVerificationServiceApiMissingParamErrorCode = 234513;

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
/// GetCityStateProvince
/// GetCityStateProvince returns a city and state/province for a given input postal code for U.S. and Canadian addresses.
///  @param inputAddress  
///
///  @returns PBGetCityStateProvinceAPIResponse*
///
-(NSURLSessionTask*) getCityStateProvinceWithInputAddress: (PBGetCityStateProvinceAPIRequest*) inputAddress
    completionHandler: (void (^)(PBGetCityStateProvinceAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'inputAddress' is set
    if (inputAddress == nil) {
        NSParameterAssert(inputAddress);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputAddress"] };
            NSError* error = [NSError errorWithDomain:kPBAddressVerificationServiceApiErrorDomain code:kPBAddressVerificationServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/addressverification/v1/getcitystateprovince/results.json"];

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
    bodyParam = inputAddress;

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
                              responseType: @"PBGetCityStateProvinceAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGetCityStateProvinceAPIResponse*)data, error);
                                }
                            }];
}

///
/// GetPostalCodes
/// GetPostalCodes takes a city and state as input for U.S. addresses and returns the postal codes for that city.
///  @param inputAddress  
///
///  @returns PBGetPostalCodesAPIResponse*
///
-(NSURLSessionTask*) getPostalCodesWithInputAddress: (PBGetPostalCodesAPIRequest*) inputAddress
    completionHandler: (void (^)(PBGetPostalCodesAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'inputAddress' is set
    if (inputAddress == nil) {
        NSParameterAssert(inputAddress);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputAddress"] };
            NSError* error = [NSError errorWithDomain:kPBAddressVerificationServiceApiErrorDomain code:kPBAddressVerificationServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/addressverification/v1/getpostalcodes/results.json"];

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
    bodyParam = inputAddress;

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
                              responseType: @"PBGetPostalCodesAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBGetPostalCodesAPIResponse*)data, error);
                                }
                            }];
}

///
/// ValidateMailingAddress
/// ValidateMailingAddress analyses and compares the input addresses against the known address databases around the world to output a standardized detail.
///  @param inputAddress  
///
///  @returns PBValidateMailingAddressResponse*
///
-(NSURLSessionTask*) validateMailingAddressWithInputAddress: (PBValidateMailingAddressRequest*) inputAddress
    completionHandler: (void (^)(PBValidateMailingAddressResponse* output, NSError* error)) handler {
    // verify the required parameter 'inputAddress' is set
    if (inputAddress == nil) {
        NSParameterAssert(inputAddress);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputAddress"] };
            NSError* error = [NSError errorWithDomain:kPBAddressVerificationServiceApiErrorDomain code:kPBAddressVerificationServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/addressverification/v1/validatemailingaddress/results.json"];

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
    bodyParam = inputAddress;

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
                              responseType: @"PBValidateMailingAddressResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBValidateMailingAddressResponse*)data, error);
                                }
                            }];
}

///
/// ValidateMailingAddressPremium
/// ValidateMailing AddressPremium expands on the ValidateMailingAddressPro service by adding premium address data sources to get the best address validation result possible.
///  @param inputAddress  
///
///  @returns PBValidateMailingAddressPremiumResponse*
///
-(NSURLSessionTask*) validateMailingAddressPremiumWithInputAddress: (PBValidateMailingAddressPremiumRequest*) inputAddress
    completionHandler: (void (^)(PBValidateMailingAddressPremiumResponse* output, NSError* error)) handler {
    // verify the required parameter 'inputAddress' is set
    if (inputAddress == nil) {
        NSParameterAssert(inputAddress);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputAddress"] };
            NSError* error = [NSError errorWithDomain:kPBAddressVerificationServiceApiErrorDomain code:kPBAddressVerificationServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/addressverification/v1/validatemailingaddresspremium/results.json"];

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
    bodyParam = inputAddress;

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
                              responseType: @"PBValidateMailingAddressPremiumResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBValidateMailingAddressPremiumResponse*)data, error);
                                }
                            }];
}

///
/// ValidateMailingAddressPro
/// ValidateMailingAddressPro builds upon the ValidateMailingAddress service by using additional address databases so it can provide enhanced detail.
///  @param inputAddress  
///
///  @returns PBValidateMailingAddressProResponse*
///
-(NSURLSessionTask*) validateMailingAddressProWithInputAddress: (PBValidateMailingAddressProRequest*) inputAddress
    completionHandler: (void (^)(PBValidateMailingAddressProResponse* output, NSError* error)) handler {
    // verify the required parameter 'inputAddress' is set
    if (inputAddress == nil) {
        NSParameterAssert(inputAddress);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputAddress"] };
            NSError* error = [NSError errorWithDomain:kPBAddressVerificationServiceApiErrorDomain code:kPBAddressVerificationServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/addressverification/v1/validatemailingaddresspro/results.json"];

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
    bodyParam = inputAddress;

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
                              responseType: @"PBValidateMailingAddressProResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBValidateMailingAddressProResponse*)data, error);
                                }
                            }];
}

///
/// ValidateMailingAddressUSCAN
/// ValidateMailingAddressUSCAN analyses and compares the input addresses against the known address databases around the world to output a standardized detail for US and CANADAIt gives RDI and DPV also along with other US/CAN specific functionalities.
///  @param inputAddress  
///
///  @returns PBValidateMailingAddressUSCANAPIResponse*
///
-(NSURLSessionTask*) validateMailingAddressUSCANWithInputAddress: (PBValidateMailingAddressUSCANAPIRequest*) inputAddress
    completionHandler: (void (^)(PBValidateMailingAddressUSCANAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'inputAddress' is set
    if (inputAddress == nil) {
        NSParameterAssert(inputAddress);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputAddress"] };
            NSError* error = [NSError errorWithDomain:kPBAddressVerificationServiceApiErrorDomain code:kPBAddressVerificationServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/addressverification/v1/validatemailingaddressuscan/results.json"];

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
    bodyParam = inputAddress;

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
                              responseType: @"PBValidateMailingAddressUSCANAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBValidateMailingAddressUSCANAPIResponse*)data, error);
                                }
                            }];
}



@end
