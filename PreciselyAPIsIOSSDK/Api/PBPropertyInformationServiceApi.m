#import "PBPropertyInformationServiceApi.h"
#import "PBQueryParamCollection.h"
#import "PBApiClient.h"
#import "PBErrorInfo.h"
#import "PBPropertyInfoAddressRequest.h"
#import "PBPropertyInfoResponse.h"
#import "PBPropertyInfoResponses.h"


@interface PBPropertyInformationServiceApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation PBPropertyInformationServiceApi

NSString* kPBPropertyInformationServiceApiErrorDomain = @"PBPropertyInformationServiceApiErrorDomain";
NSInteger kPBPropertyInformationServiceApiMissingParamErrorCode = 234513;

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
/// PropertyV2 Attributes By Address.
/// GetPropertyAttributesbyAddress Endpoint will take address as an input and will return key property attributes in response. Optionally user will have the option to filter the attributes and will pay for only returned attributes.
///  @param address free form address text (optional)
///
///  @param attributes Case-insensitive comma separated values of property attributes. Response will contain only the input attributes. (optional)
///
///  @returns PBPropertyInfoResponse*
///
-(NSURLSessionTask*) getPropertyAttributesByAddressWithAddress: (NSString*) address
    attributes: (NSString*) attributes
    completionHandler: (void (^)(PBPropertyInfoResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/property/v2/attributes/byaddress"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (address != nil) {
        queryParams[@"address"] = address;
    }
    if (attributes != nil) {
        queryParams[@"attributes"] = attributes;
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
                              responseType: @"PBPropertyInfoResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBPropertyInfoResponse*)data, error);
                                }
                            }];
}

///
/// PropertyV2 Attributes By Address Batch.
/// GetPropertyAttributesbyAddressBatch Endpoint will take the list of addresses as an input and will return key property attributes for the given addresses in response. Optionally user will have the option to filter the attributes and will pay for only returned attributes.
///  @param propertyInfoAddressRequest  
///
///  @returns PBPropertyInfoResponses*
///
-(NSURLSessionTask*) getPropertyAttributesByAddressBatchWithPropertyInfoAddressRequest: (PBPropertyInfoAddressRequest*) propertyInfoAddressRequest
    completionHandler: (void (^)(PBPropertyInfoResponses* output, NSError* error)) handler {
    // verify the required parameter 'propertyInfoAddressRequest' is set
    if (propertyInfoAddressRequest == nil) {
        NSParameterAssert(propertyInfoAddressRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"propertyInfoAddressRequest"] };
            NSError* error = [NSError errorWithDomain:kPBPropertyInformationServiceApiErrorDomain code:kPBPropertyInformationServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/property/v2/attributes/byaddress"];

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
    bodyParam = propertyInfoAddressRequest;

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
                            }];
}



@end
