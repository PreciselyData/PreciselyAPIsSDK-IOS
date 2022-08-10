#import "PBEmailVerificationServiceApi.h"
#import "PBQueryParamCollection.h"
#import "PBApiClient.h"
#import "PBErrorInfo.h"
#import "PBValidateEmailAddressAPIRequest.h"
#import "PBValidateEmailAddressAPIResponse.h"


@interface PBEmailVerificationServiceApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation PBEmailVerificationServiceApi

NSString* kPBEmailVerificationServiceApiErrorDomain = @"PBEmailVerificationServiceApiErrorDomain";
NSInteger kPBEmailVerificationServiceApiMissingParamErrorCode = 234513;

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
/// ValidateEmailAddress
/// Confirm that your customer’s mailing address exists and that mail and packages can be delivered to it.
///  @param inputEmailAddress  
///
///  @returns PBValidateEmailAddressAPIResponse*
///
-(NSURLSessionTask*) validateEmailAddressWithInputEmailAddress: (PBValidateEmailAddressAPIRequest*) inputEmailAddress
    completionHandler: (void (^)(PBValidateEmailAddressAPIResponse* output, NSError* error)) handler {
    // verify the required parameter 'inputEmailAddress' is set
    if (inputEmailAddress == nil) {
        NSParameterAssert(inputEmailAddress);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inputEmailAddress"] };
            NSError* error = [NSError errorWithDomain:kPBEmailVerificationServiceApiErrorDomain code:kPBEmailVerificationServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/emailverification/v1/validateemailaddress/results.json"];

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
    bodyParam = inputEmailAddress;

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
                              responseType: @"PBValidateEmailAddressAPIResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBValidateEmailAddressAPIResponse*)data, error);
                                }
                            }];
}



@end
