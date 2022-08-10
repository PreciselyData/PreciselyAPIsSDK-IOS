#import "PBLocalTaxServiceApi.h"
#import "PBQueryParamCollection.h"
#import "PBApiClient.h"
#import "PBErrorInfo.h"
#import "PBIPDTaxByAddressBatchRequest.h"
#import "PBTaxAddressRequest.h"
#import "PBTaxDistrictResponse.h"
#import "PBTaxDistrictResponseList.h"
#import "PBTaxLocationRequest.h"
#import "PBTaxRateAddressRequest.h"
#import "PBTaxRateLocationRequest.h"
#import "PBTaxRateResponse.h"
#import "PBTaxResponses.h"


@interface PBLocalTaxServiceApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation PBLocalTaxServiceApi

NSString* kPBLocalTaxServiceApiErrorDomain = @"PBLocalTaxServiceApiErrorDomain";
NSInteger kPBLocalTaxServiceApiMissingParamErrorCode = 234513;

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
/// Post Tax By Address
/// This is a Batch offering for 'Tax By Address' service. It accepts a single address, purchase amount or a list of addresses, purchase amounts and retrieve applicable taxes.
///  @param taxRateTypeId  
///
///  @param taxAddressRequest  
///
///  @returns PBTaxResponses*
///
-(NSURLSessionTask*) getBatchTaxByAddressWithTaxRateTypeId: (NSString*) taxRateTypeId
    taxAddressRequest: (PBTaxAddressRequest*) taxAddressRequest
    completionHandler: (void (^)(PBTaxResponses* output, NSError* error)) handler {
    // verify the required parameter 'taxRateTypeId' is set
    if (taxRateTypeId == nil) {
        NSParameterAssert(taxRateTypeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"taxRateTypeId"] };
            NSError* error = [NSError errorWithDomain:kPBLocalTaxServiceApiErrorDomain code:kPBLocalTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'taxAddressRequest' is set
    if (taxAddressRequest == nil) {
        NSParameterAssert(taxAddressRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"taxAddressRequest"] };
            NSError* error = [NSError errorWithDomain:kPBLocalTaxServiceApiErrorDomain code:kPBLocalTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/localtax/v1/tax/{taxRateTypeId}/byaddress"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (taxRateTypeId != nil) {
        pathParams[@"taxRateTypeId"] = taxRateTypeId;
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
    bodyParam = taxAddressRequest;

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
                              responseType: @"PBTaxResponses*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTaxResponses*)data, error);
                                }
                            }];
}

///
/// Post Tax By Location
/// This is a Batch offering for 'Tax By Location' service. It accepts a single location coordinate, purchase amount or a list of location coordinates, purchase amounts and retrieve applicable tax.
///  @param taxRateTypeId  
///
///  @param taxLocationRequest  
///
///  @returns PBTaxResponses*
///
-(NSURLSessionTask*) getBatchTaxByLocationWithTaxRateTypeId: (NSString*) taxRateTypeId
    taxLocationRequest: (PBTaxLocationRequest*) taxLocationRequest
    completionHandler: (void (^)(PBTaxResponses* output, NSError* error)) handler {
    // verify the required parameter 'taxRateTypeId' is set
    if (taxRateTypeId == nil) {
        NSParameterAssert(taxRateTypeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"taxRateTypeId"] };
            NSError* error = [NSError errorWithDomain:kPBLocalTaxServiceApiErrorDomain code:kPBLocalTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'taxLocationRequest' is set
    if (taxLocationRequest == nil) {
        NSParameterAssert(taxLocationRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"taxLocationRequest"] };
            NSError* error = [NSError errorWithDomain:kPBLocalTaxServiceApiErrorDomain code:kPBLocalTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/localtax/v1/tax/{taxRateTypeId}/bylocation"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (taxRateTypeId != nil) {
        pathParams[@"taxRateTypeId"] = taxRateTypeId;
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
    bodyParam = taxLocationRequest;

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
                              responseType: @"PBTaxResponses*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTaxResponses*)data, error);
                                }
                            }];
}

///
/// Post Taxrate By Address
/// This is a Batch offering for 'Taxrate By Address' service. It accepts a single address or a list of addresses and retrieve applicable tax rates.
///  @param taxRateTypeId  
///
///  @param taxRateAddressRequest  
///
///  @returns PBTaxResponses*
///
-(NSURLSessionTask*) getBatchTaxRateByAddressWithTaxRateTypeId: (NSString*) taxRateTypeId
    taxRateAddressRequest: (PBTaxRateAddressRequest*) taxRateAddressRequest
    completionHandler: (void (^)(PBTaxResponses* output, NSError* error)) handler {
    // verify the required parameter 'taxRateTypeId' is set
    if (taxRateTypeId == nil) {
        NSParameterAssert(taxRateTypeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"taxRateTypeId"] };
            NSError* error = [NSError errorWithDomain:kPBLocalTaxServiceApiErrorDomain code:kPBLocalTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'taxRateAddressRequest' is set
    if (taxRateAddressRequest == nil) {
        NSParameterAssert(taxRateAddressRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"taxRateAddressRequest"] };
            NSError* error = [NSError errorWithDomain:kPBLocalTaxServiceApiErrorDomain code:kPBLocalTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/localtax/v1/taxrate/{taxRateTypeId}/byaddress"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (taxRateTypeId != nil) {
        pathParams[@"taxRateTypeId"] = taxRateTypeId;
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
    bodyParam = taxRateAddressRequest;

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
                              responseType: @"PBTaxResponses*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTaxResponses*)data, error);
                                }
                            }];
}

///
/// Post Taxrate By Location
/// This is a Batch offering for 'Taxrate By Location' service. It accepts a single location coordinate or a list of location coordinates and retrieve applicable tax rates.
///  @param taxRateTypeId  
///
///  @param taxRateLocationRequest  
///
///  @returns PBTaxResponses*
///
-(NSURLSessionTask*) getBatchTaxRateByLocationWithTaxRateTypeId: (NSString*) taxRateTypeId
    taxRateLocationRequest: (PBTaxRateLocationRequest*) taxRateLocationRequest
    completionHandler: (void (^)(PBTaxResponses* output, NSError* error)) handler {
    // verify the required parameter 'taxRateTypeId' is set
    if (taxRateTypeId == nil) {
        NSParameterAssert(taxRateTypeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"taxRateTypeId"] };
            NSError* error = [NSError errorWithDomain:kPBLocalTaxServiceApiErrorDomain code:kPBLocalTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'taxRateLocationRequest' is set
    if (taxRateLocationRequest == nil) {
        NSParameterAssert(taxRateLocationRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"taxRateLocationRequest"] };
            NSError* error = [NSError errorWithDomain:kPBLocalTaxServiceApiErrorDomain code:kPBLocalTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/localtax/v1/taxrate/{taxRateTypeId}/bylocation"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (taxRateTypeId != nil) {
        pathParams[@"taxRateTypeId"] = taxRateTypeId;
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
    bodyParam = taxRateLocationRequest;

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
                              responseType: @"PBTaxResponses*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTaxResponses*)data, error);
                                }
                            }];
}

///
/// Get IPD Tax by Address
/// Retrieves IPD (Insurance Premium District) tax rates applicable to a specific address. This service accepts address as input and returns one or many IPD tax rate details for that region in which address falls.
///  @param address The address to be searched. 
///
///  @param returnLatLongFields Y or N (default is N) - Returns Latitude Longitude Fields. (optional)
///
///  @param latLongFormat (default is Decimal) - Returns Desired Latitude Longitude Format. (optional)
///
///  @returns PBTaxDistrictResponse*
///
-(NSURLSessionTask*) getIPDTaxByAddressWithAddress: (NSString*) address
    returnLatLongFields: (NSString*) returnLatLongFields
    latLongFormat: (NSString*) latLongFormat
    completionHandler: (void (^)(PBTaxDistrictResponse* output, NSError* error)) handler {
    // verify the required parameter 'address' is set
    if (address == nil) {
        NSParameterAssert(address);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"address"] };
            NSError* error = [NSError errorWithDomain:kPBLocalTaxServiceApiErrorDomain code:kPBLocalTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/localtax/v1/taxdistrict/ipd/byaddress"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (address != nil) {
        queryParams[@"address"] = address;
    }
    if (returnLatLongFields != nil) {
        queryParams[@"returnLatLongFields"] = returnLatLongFields;
    }
    if (latLongFormat != nil) {
        queryParams[@"latLongFormat"] = latLongFormat;
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
                              responseType: @"PBTaxDistrictResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTaxDistrictResponse*)data, error);
                                }
                            }];
}

///
/// Get IPD Tax for batch requests.
/// This is a Batch offering for 'IPD Tax rates By Address'. It accepts multiple addresses as parameters along with geocoding and matching preferences and returns one or many IPD tax rate details for each address.
///  @param iPDTaxByAddressBatchRequest  
///
///  @returns PBTaxDistrictResponseList*
///
-(NSURLSessionTask*) getIPDTaxByAddressBatchWithIPDTaxByAddressBatchRequest: (PBIPDTaxByAddressBatchRequest*) iPDTaxByAddressBatchRequest
    completionHandler: (void (^)(PBTaxDistrictResponseList* output, NSError* error)) handler {
    // verify the required parameter 'iPDTaxByAddressBatchRequest' is set
    if (iPDTaxByAddressBatchRequest == nil) {
        NSParameterAssert(iPDTaxByAddressBatchRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"iPDTaxByAddressBatchRequest"] };
            NSError* error = [NSError errorWithDomain:kPBLocalTaxServiceApiErrorDomain code:kPBLocalTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/localtax/v1/taxdistrict/ipd/byaddress"];

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
    bodyParam = iPDTaxByAddressBatchRequest;

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
                              responseType: @"PBTaxDistrictResponseList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTaxDistrictResponseList*)data, error);
                                }
                            }];
}

///
/// Get Tax By Address
/// This service calculates and returns taxes applicable at a specific address. Address, purchase amount and supported tax rate type are inputs to the service.
///  @param taxRateTypeId The tax rate id 
///
///  @param address The address to be searched. 
///
///  @param purchaseAmount The amount on which tax to be calculated 
///
///  @returns PBTaxRateResponse*
///
-(NSURLSessionTask*) getSpecificTaxByAddressWithTaxRateTypeId: (NSString*) taxRateTypeId
    address: (NSString*) address
    purchaseAmount: (NSString*) purchaseAmount
    completionHandler: (void (^)(PBTaxRateResponse* output, NSError* error)) handler {
    // verify the required parameter 'taxRateTypeId' is set
    if (taxRateTypeId == nil) {
        NSParameterAssert(taxRateTypeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"taxRateTypeId"] };
            NSError* error = [NSError errorWithDomain:kPBLocalTaxServiceApiErrorDomain code:kPBLocalTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'address' is set
    if (address == nil) {
        NSParameterAssert(address);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"address"] };
            NSError* error = [NSError errorWithDomain:kPBLocalTaxServiceApiErrorDomain code:kPBLocalTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'purchaseAmount' is set
    if (purchaseAmount == nil) {
        NSParameterAssert(purchaseAmount);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"purchaseAmount"] };
            NSError* error = [NSError errorWithDomain:kPBLocalTaxServiceApiErrorDomain code:kPBLocalTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/localtax/v1/tax/{taxRateTypeId}/byaddress"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (taxRateTypeId != nil) {
        pathParams[@"taxRateTypeId"] = taxRateTypeId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (address != nil) {
        queryParams[@"address"] = address;
    }
    if (purchaseAmount != nil) {
        queryParams[@"purchaseAmount"] = purchaseAmount;
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
                              responseType: @"PBTaxRateResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTaxRateResponse*)data, error);
                                }
                            }];
}

///
/// Get Tax By Location
/// This service calculates and returns tax applicable at a specific location. Longitude, latitude, purchase amount and supported tax rate type are inputs to the service.
///  @param taxRateTypeId The tax rate id 
///
///  @param latitude Latitude of the location 
///
///  @param longitude Longitude of the location 
///
///  @param purchaseAmount The amount on which tax to be calculated 
///
///  @returns PBTaxRateResponse*
///
-(NSURLSessionTask*) getSpecificTaxByLocationWithTaxRateTypeId: (NSString*) taxRateTypeId
    latitude: (NSString*) latitude
    longitude: (NSString*) longitude
    purchaseAmount: (NSString*) purchaseAmount
    completionHandler: (void (^)(PBTaxRateResponse* output, NSError* error)) handler {
    // verify the required parameter 'taxRateTypeId' is set
    if (taxRateTypeId == nil) {
        NSParameterAssert(taxRateTypeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"taxRateTypeId"] };
            NSError* error = [NSError errorWithDomain:kPBLocalTaxServiceApiErrorDomain code:kPBLocalTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'latitude' is set
    if (latitude == nil) {
        NSParameterAssert(latitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"latitude"] };
            NSError* error = [NSError errorWithDomain:kPBLocalTaxServiceApiErrorDomain code:kPBLocalTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'longitude' is set
    if (longitude == nil) {
        NSParameterAssert(longitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"longitude"] };
            NSError* error = [NSError errorWithDomain:kPBLocalTaxServiceApiErrorDomain code:kPBLocalTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'purchaseAmount' is set
    if (purchaseAmount == nil) {
        NSParameterAssert(purchaseAmount);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"purchaseAmount"] };
            NSError* error = [NSError errorWithDomain:kPBLocalTaxServiceApiErrorDomain code:kPBLocalTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/localtax/v1/tax/{taxRateTypeId}/bylocation"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (taxRateTypeId != nil) {
        pathParams[@"taxRateTypeId"] = taxRateTypeId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (purchaseAmount != nil) {
        queryParams[@"purchaseAmount"] = purchaseAmount;
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
                              responseType: @"PBTaxRateResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTaxRateResponse*)data, error);
                                }
                            }];
}

///
/// Get Taxrate By Address
/// Retrieves tax rates applicable to a specific address. This service accepts address and supported tax rate type as inputs to retrieve applicable tax rates.
///  @param taxRateTypeId The tax rate id 
///
///  @param address The address to be searched. 
///
///  @returns PBTaxRateResponse*
///
-(NSURLSessionTask*) getSpecificTaxRateByAddressWithTaxRateTypeId: (NSString*) taxRateTypeId
    address: (NSString*) address
    completionHandler: (void (^)(PBTaxRateResponse* output, NSError* error)) handler {
    // verify the required parameter 'taxRateTypeId' is set
    if (taxRateTypeId == nil) {
        NSParameterAssert(taxRateTypeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"taxRateTypeId"] };
            NSError* error = [NSError errorWithDomain:kPBLocalTaxServiceApiErrorDomain code:kPBLocalTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'address' is set
    if (address == nil) {
        NSParameterAssert(address);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"address"] };
            NSError* error = [NSError errorWithDomain:kPBLocalTaxServiceApiErrorDomain code:kPBLocalTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/localtax/v1/taxrate/{taxRateTypeId}/byaddress"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (taxRateTypeId != nil) {
        pathParams[@"taxRateTypeId"] = taxRateTypeId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (address != nil) {
        queryParams[@"address"] = address;
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
                              responseType: @"PBTaxRateResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTaxRateResponse*)data, error);
                                }
                            }];
}

///
/// Get Taxrate By Location
/// Retrieves tax rates applicable to a specific location. This service accepts longitude, latitude and supported tax rate type as inputs to retrieve applicable tax rates.
///  @param taxRateTypeId The tax rate id 
///
///  @param latitude Latitude of the location 
///
///  @param longitude Longitude of the location 
///
///  @returns PBTaxRateResponse*
///
-(NSURLSessionTask*) getSpecificTaxRateByLocationWithTaxRateTypeId: (NSString*) taxRateTypeId
    latitude: (NSString*) latitude
    longitude: (NSString*) longitude
    completionHandler: (void (^)(PBTaxRateResponse* output, NSError* error)) handler {
    // verify the required parameter 'taxRateTypeId' is set
    if (taxRateTypeId == nil) {
        NSParameterAssert(taxRateTypeId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"taxRateTypeId"] };
            NSError* error = [NSError errorWithDomain:kPBLocalTaxServiceApiErrorDomain code:kPBLocalTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'latitude' is set
    if (latitude == nil) {
        NSParameterAssert(latitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"latitude"] };
            NSError* error = [NSError errorWithDomain:kPBLocalTaxServiceApiErrorDomain code:kPBLocalTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'longitude' is set
    if (longitude == nil) {
        NSParameterAssert(longitude);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"longitude"] };
            NSError* error = [NSError errorWithDomain:kPBLocalTaxServiceApiErrorDomain code:kPBLocalTaxServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/localtax/v1/taxrate/{taxRateTypeId}/bylocation"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (taxRateTypeId != nil) {
        pathParams[@"taxRateTypeId"] = taxRateTypeId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
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
                              responseType: @"PBTaxRateResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTaxRateResponse*)data, error);
                                }
                            }];
}



@end
