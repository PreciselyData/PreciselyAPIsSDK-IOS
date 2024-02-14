#import "PBTelecommInfoServiceApi.h"
#import "PBQueryParamCollection.h"
#import "PBApiClient.h"
#import "PBErrorInfo1.h"
#import "PBRateCenterResponse.h"


@interface PBTelecommInfoServiceApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation PBTelecommInfoServiceApi

NSString* kPBTelecommInfoServiceApiErrorDomain = @"PBTelecommInfoServiceApiErrorDomain";
NSInteger kPBTelecommInfoServiceApiMissingParamErrorCode = 234513;

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
/// Rate Center By Address.
/// Accepts addresses as input and returns Incumbent Local Exchange Carrier (ILEC) doing-business-as names.
///  @param address The address to be searched (optional)
///
///  @param country 3 letter ISO code of the country to be searched. Allowed values USA,CAN (optional)
///
///  @param areaCodeInfo Specifies whether area code information will be part of response.Allowed values True,False. (optional)
///
///  @param level Level (basic/detail).Allowed values detail,basic. (optional)
///
///  @returns PBRateCenterResponse*
///
-(NSURLSessionTask*) getRateCenterByAddressWithAddress: (NSString*) address
    country: (NSString*) country
    areaCodeInfo: (NSString*) areaCodeInfo
    level: (NSString*) level
    completionHandler: (void (^)(PBRateCenterResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/telecomm/v1/ratecenter/byaddress"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (address != nil) {
        queryParams[@"address"] = address;
    }
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (areaCodeInfo != nil) {
        queryParams[@"areaCodeInfo"] = areaCodeInfo;
    }
    if (level != nil) {
        queryParams[@"level"] = level;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
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
                              responseType: @"PBRateCenterResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBRateCenterResponse*)data, error);
                                }
                            }];
}

///
/// Rate Center By Location.
/// Accepts latitude & longitude as input and returns Incumbent Local Exchange Carrier (ILEC) doing-business-as names.
///  @param longitude Longitude of the location (optional)
///
///  @param latitude Latitude of the location (optional)
///
///  @param areaCodeInfo Specifies whether area code information will be part of response.Allowed values True,False. (optional)
///
///  @param level Level (basic/detail).Allowed values detail,basic. (optional)
///
///  @returns PBRateCenterResponse*
///
-(NSURLSessionTask*) getRateCenterByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    areaCodeInfo: (NSString*) areaCodeInfo
    level: (NSString*) level
    completionHandler: (void (^)(PBRateCenterResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/telecomm/v1/ratecenter/bylocation"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (areaCodeInfo != nil) {
        queryParams[@"areaCodeInfo"] = areaCodeInfo;
    }
    if (level != nil) {
        queryParams[@"level"] = level;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
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
                              responseType: @"PBRateCenterResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBRateCenterResponse*)data, error);
                                }
                            }];
}



@end
