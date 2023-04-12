#import "PBPhoneVerificationServiceApi.h"
#import "PBQueryParamCollection.h"
#import "PBApiClient.h"
#import "PBErrorInfo.h"
#import "PBPhoneVerification.h"
#import "PBValidatePhoneNumberAPIRequest.h"


@interface PBPhoneVerificationServiceApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation PBPhoneVerificationServiceApi

NSString* kPBPhoneVerificationServiceApiErrorDomain = @"PBPhoneVerificationServiceApiErrorDomain";
NSInteger kPBPhoneVerificationServiceApiMissingParamErrorCode = 234513;

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
/// Phone verification.
/// This service accepts a phone number as input and returns details distinguishing landline and wireless numbers.
///  @param validatePhoneNumberAPIRequest  
///
///  @returns PBPhoneVerification*
///
-(NSURLSessionTask*) validatephonenumberWithValidatePhoneNumberAPIRequest: (PBValidatePhoneNumberAPIRequest*) validatePhoneNumberAPIRequest
    completionHandler: (void (^)(PBPhoneVerification* output, NSError* error)) handler {
    // verify the required parameter 'validatePhoneNumberAPIRequest' is set
    if (validatePhoneNumberAPIRequest == nil) {
        NSParameterAssert(validatePhoneNumberAPIRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"validatePhoneNumberAPIRequest"] };
            NSError* error = [NSError errorWithDomain:kPBPhoneVerificationServiceApiErrorDomain code:kPBPhoneVerificationServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phoneverification/v2/validatephonenumber/results.json"];

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
    bodyParam = validatePhoneNumberAPIRequest;

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
                              responseType: @"PBPhoneVerification*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBPhoneVerification*)data, error);
                                }
                            }];
}



@end
