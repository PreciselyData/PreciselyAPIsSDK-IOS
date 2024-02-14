#import "PBSchoolsServiceApi.h"
#import "PBQueryParamCollection.h"
#import "PBApiClient.h"
#import "PBErrorInfo1.h"
#import "PBSchoolsNearByResponse.h"


@interface PBSchoolsServiceApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation PBSchoolsServiceApi

NSString* kPBSchoolsServiceApiErrorDomain = @"PBSchoolsServiceApiErrorDomain";
NSInteger kPBSchoolsServiceApiMissingParamErrorCode = 234513;

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
/// Search Nearby Schools by Address
/// Search Nearby Schools by Address
///  @param address free form address text 
///
///  @param edLevel Single digit code for education level applicable values are P -> primary, M -> Middle, H -> High, O -> Mixed Grades for public school type andE -> Elementary , S -> Secondary , O -> Others mixed grades for private schools  (optional)
///
///  @param schoolType Single digit code for schoolTypes applicable values are PRI and PUB (optional)
///
///  @param schoolSubType Single digit code for schoolSubType Applicable values are C, M, A, R, I, L, P, V, U, S (i.e. Charter, Magnet, Alternative, Regular, Indian, Military, Reportable Program, Vocational, Unknown, Special Education) (optional)
///
///  @param gender Single digit code for gender Applicable values are C, F, M (Coed, All Females, All Males) Applicable for Private Schools Only (optional)
///
///  @param assignedSchoolsOnly Single digit code for assignedSchoolOnly applicable values are  Y/N  (optional)
///
///  @param districtSchoolsOnly Single digit code for districtSchoolOnly applicable values are Y/N  (optional)
///
///  @param searchRadius Search Radius within which schools are searched (optional)
///
///  @param searchRadiusUnit Search Radius unit applicable values are feet,kilometers,miles,meters (optional)
///
///  @param travelTime Travel Time based on ‘travelMode’ within which schools are searched. (optional)
///
///  @param travelTimeUnit Travel Time unit applicable values are minutes,hours,seconds,milliseconds  (optional)
///
///  @param travelDistance Travel Distance based on ‘travelMode’ within which schools are searched. (optional)
///
///  @param travelDistanceUnit Travel distanceUnit applicable values are feet,kilometers,miles,meters (optional)
///
///  @param travelMode Travel mode Required when travelDistance or travelTime is specified. Accepted values are walking,driving (optional)
///
///  @param maxCandidates Max result to search  (optional)
///
///  @returns PBSchoolsNearByResponse*
///
-(NSURLSessionTask*) getSchoolsByAddressWithAddress: (NSString*) address
    edLevel: (NSString*) edLevel
    schoolType: (NSString*) schoolType
    schoolSubType: (NSString*) schoolSubType
    gender: (NSString*) gender
    assignedSchoolsOnly: (NSString*) assignedSchoolsOnly
    districtSchoolsOnly: (NSString*) districtSchoolsOnly
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    travelMode: (NSString*) travelMode
    maxCandidates: (NSString*) maxCandidates
    completionHandler: (void (^)(PBSchoolsNearByResponse* output, NSError* error)) handler {
    // verify the required parameter 'address' is set
    if (address == nil) {
        NSParameterAssert(address);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"address"] };
            NSError* error = [NSError errorWithDomain:kPBSchoolsServiceApiErrorDomain code:kPBSchoolsServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/schools/v1/school/byaddress"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (address != nil) {
        queryParams[@"address"] = address;
    }
    if (edLevel != nil) {
        queryParams[@"edLevel"] = edLevel;
    }
    if (schoolType != nil) {
        queryParams[@"schoolType"] = schoolType;
    }
    if (schoolSubType != nil) {
        queryParams[@"schoolSubType"] = schoolSubType;
    }
    if (gender != nil) {
        queryParams[@"gender"] = gender;
    }
    if (assignedSchoolsOnly != nil) {
        queryParams[@"assignedSchoolsOnly"] = assignedSchoolsOnly;
    }
    if (districtSchoolsOnly != nil) {
        queryParams[@"districtSchoolsOnly"] = districtSchoolsOnly;
    }
    if (searchRadius != nil) {
        queryParams[@"searchRadius"] = searchRadius;
    }
    if (searchRadiusUnit != nil) {
        queryParams[@"searchRadiusUnit"] = searchRadiusUnit;
    }
    if (travelTime != nil) {
        queryParams[@"travelTime"] = travelTime;
    }
    if (travelTimeUnit != nil) {
        queryParams[@"travelTimeUnit"] = travelTimeUnit;
    }
    if (travelDistance != nil) {
        queryParams[@"travelDistance"] = travelDistance;
    }
    if (travelDistanceUnit != nil) {
        queryParams[@"travelDistanceUnit"] = travelDistanceUnit;
    }
    if (travelMode != nil) {
        queryParams[@"travelMode"] = travelMode;
    }
    if (maxCandidates != nil) {
        queryParams[@"maxCandidates"] = maxCandidates;
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
                              responseType: @"PBSchoolsNearByResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBSchoolsNearByResponse*)data, error);
                                }
                            }];
}



@end
