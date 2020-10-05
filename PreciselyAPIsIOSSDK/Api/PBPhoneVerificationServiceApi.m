#import "PBPhoneVerificationServiceApi.h"
#import "PBQueryParamCollection.h"
#import "PBPhoneVerification.h"


@interface PBPhoneVerificationServiceApi ()

@property (nonatomic, strong) NSMutableDictionary *defaultHeaders;

@end

@implementation PBPhoneVerificationServiceApi

NSString* kPBPhoneVerificationServiceApiErrorDomain = @"PBPhoneVerificationServiceApiErrorDomain";
NSInteger kPBPhoneVerificationServiceApiMissingParamErrorCode = 234513;

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
    static PBPhoneVerificationServiceApi *sharedAPI;
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
/// Phone verification.
/// This service accepts a phone number as input and returns details distinguishing landline and wireless numbers and also checks if a wireless number can be located.
///  @param phoneNumber E.164 formatted phone number. Accepts digits only. Country Code (1) optional for USA & CAN. 
///
///  @param includeNetworkInfo Y or N (default is Y) – if it is N, then network/carrier details will not be added in the response. (optional)
///
///  @returns PBPhoneVerification*
///
-(NSNumber*) phoneVerificationWithPhoneNumber: (NSString*) phoneNumber
    includeNetworkInfo: (NSString*) includeNetworkInfo
    completionHandler: (void (^)(PBPhoneVerification* output, NSError* error)) handler {
    // verify the required parameter 'phoneNumber' is set
    if (phoneNumber == nil) {
        NSParameterAssert(phoneNumber);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"phoneNumber"] };
            NSError* error = [NSError errorWithDomain:kPBPhoneVerificationServiceApiErrorDomain code:kPBPhoneVerificationServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/phoneverification/v1/phoneverification"];

    // remove format in URL if needed
    [resourcePath replaceOccurrencesOfString:@".{format}" withString:@".json" options:0 range:NSMakeRange(0,resourcePath.length)];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (phoneNumber != nil) {
        queryParams[@"phoneNumber"] = phoneNumber;
    }
    if (includeNetworkInfo != nil) {
        queryParams[@"includeNetworkInfo"] = includeNetworkInfo;
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
                              responseType: @"PBPhoneVerification*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBPhoneVerification*)data, error);
                                }
                           }
          ];
}



@end
