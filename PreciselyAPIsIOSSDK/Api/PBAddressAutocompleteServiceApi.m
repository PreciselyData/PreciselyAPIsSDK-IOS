#import "PBAddressAutocompleteServiceApi.h"
#import "PBQueryParamCollection.h"
#import "PBApiClient.h"
#import "PBErrorInfo.h"
#import "PBTypeaheadLocations.h"


@interface PBAddressAutocompleteServiceApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation PBAddressAutocompleteServiceApi

NSString* kPBAddressAutocompleteServiceApiErrorDomain = @"PBAddressAutocompleteServiceApiErrorDomain";
NSInteger kPBAddressAutocompleteServiceApiMissingParamErrorCode = 234513;

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
/// Address Autocomplete Search
/// Performs search to retrieve list of places by input text and location vicinity.
///  @param searchText The input to be searched. 
///
///  @param latitude Latitude of the location. We need to make sure that either Lat/Lng or Country is provided to API (optional)
///
///  @param longitude Longitude of the location. We need to make sure that either Lat/Lng or Country is provided to API (optional)
///
///  @param searchRadius Radius range within which search is performed. (optional)
///
///  @param searchRadiusUnit Radius unit such as Feet, Kilometers, Miles or Meters. (optional)
///
///  @param maxCandidates Maximum number of POIs that can be retrieved. (optional)
///
///  @param country Country ISO code. We need to make sure that either Lat/Lng or Country is provided to API (optional)
///
///  @param matchOnAddressNumber Option so that we force api to match on address number (optional)
///
///  @param autoDetectLocation Option to allow API to detect origin of API request automatically (optional)
///
///  @param ipAddress  (optional)
///
///  @param areaName1 State province of the input to be searched (optional)
///
///  @param areaName3 City of the input to be searched (optional)
///
///  @param postCode Postal Code of the input to be searched (optional)
///
///  @param returnAdminAreasOnly if value set 'Y' then it will only do a matching on postcode or areaName1, areaName2, areaName3 and areaName4 fields in the data (optional)
///
///  @param includeRangesDetails if value set 'Y' then display all unit info of ranges, if value set 'N' then don't show ranges (optional)
///
///  @param searchType Preference to control search type of interactive requests. (optional)
///
///  @param searchOnAddressNumber Preference to search on address number. (optional)
///
///  @param searchOnUnitInfo Preference to search on unit info. (optional)
///
///  @param searchOnPOBox Specifies whether to enable search for matching on PO Box. (optional)
///
///  @returns PBTypeaheadLocations*
///
-(NSURLSessionTask*) searchV2WithSearchText: (NSString*) searchText
    latitude: (NSString*) latitude
    longitude: (NSString*) longitude
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    maxCandidates: (NSString*) maxCandidates
    country: (NSString*) country
    matchOnAddressNumber: (NSString*) matchOnAddressNumber
    autoDetectLocation: (NSString*) autoDetectLocation
    ipAddress: (NSString*) ipAddress
    areaName1: (NSString*) areaName1
    areaName3: (NSString*) areaName3
    postCode: (NSString*) postCode
    returnAdminAreasOnly: (NSString*) returnAdminAreasOnly
    includeRangesDetails: (NSString*) includeRangesDetails
    searchType: (NSString*) searchType
    searchOnAddressNumber: (NSString*) searchOnAddressNumber
    searchOnUnitInfo: (NSString*) searchOnUnitInfo
    searchOnPOBox: (NSString*) searchOnPOBox
    completionHandler: (void (^)(PBTypeaheadLocations* output, NSError* error)) handler {
    // verify the required parameter 'searchText' is set
    if (searchText == nil) {
        NSParameterAssert(searchText);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"searchText"] };
            NSError* error = [NSError errorWithDomain:kPBAddressAutocompleteServiceApiErrorDomain code:kPBAddressAutocompleteServiceApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/typeahead/v1/locations"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (searchText != nil) {
        queryParams[@"searchText"] = searchText;
    }
    if (latitude != nil) {
        queryParams[@"latitude"] = latitude;
    }
    if (longitude != nil) {
        queryParams[@"longitude"] = longitude;
    }
    if (searchRadius != nil) {
        queryParams[@"searchRadius"] = searchRadius;
    }
    if (searchRadiusUnit != nil) {
        queryParams[@"searchRadiusUnit"] = searchRadiusUnit;
    }
    if (maxCandidates != nil) {
        queryParams[@"maxCandidates"] = maxCandidates;
    }
    if (country != nil) {
        queryParams[@"country"] = country;
    }
    if (matchOnAddressNumber != nil) {
        queryParams[@"matchOnAddressNumber"] = matchOnAddressNumber;
    }
    if (autoDetectLocation != nil) {
        queryParams[@"autoDetectLocation"] = autoDetectLocation;
    }
    if (ipAddress != nil) {
        queryParams[@"ipAddress"] = ipAddress;
    }
    if (areaName1 != nil) {
        queryParams[@"areaName1"] = areaName1;
    }
    if (areaName3 != nil) {
        queryParams[@"areaName3"] = areaName3;
    }
    if (postCode != nil) {
        queryParams[@"postCode"] = postCode;
    }
    if (returnAdminAreasOnly != nil) {
        queryParams[@"returnAdminAreasOnly"] = returnAdminAreasOnly;
    }
    if (includeRangesDetails != nil) {
        queryParams[@"includeRangesDetails"] = includeRangesDetails;
    }
    if (searchType != nil) {
        queryParams[@"searchType"] = searchType;
    }
    if (searchOnAddressNumber != nil) {
        queryParams[@"searchOnAddressNumber"] = searchOnAddressNumber;
    }
    if (searchOnUnitInfo != nil) {
        queryParams[@"searchOnUnitInfo"] = searchOnUnitInfo;
    }
    if (searchOnPOBox != nil) {
        queryParams[@"searchOnPOBox"] = searchOnPOBox;
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
                              responseType: @"PBTypeaheadLocations*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((PBTypeaheadLocations*)data, error);
                                }
                            }];
}



@end
