# PBAddressAutocompleteServiceApi

All URIs are relative to *https://api.precisely.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**searchV2**](PBAddressAutocompleteServiceApi.md#searchv2) | **GET** /typeahead/v1/locations | Address Autocomplete Search


# **searchV2**
```objc
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
        completionHandler: (void (^)(PBTypeaheadLocations* output, NSError* error)) handler;
```

Address Autocomplete Search

Performs search to retrieve list of places by input text and location vicinity.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* searchText = @"searchText_example"; // The input to be searched.
NSString* latitude = @"latitude_example"; // Latitude of the location. We need to make sure that either Lat/Lng or Country is provided to API (optional)
NSString* longitude = @"longitude_example"; // Longitude of the location. We need to make sure that either Lat/Lng or Country is provided to API (optional)
NSString* searchRadius = @"searchRadius_example"; // Radius range within which search is performed. (optional)
NSString* searchRadiusUnit = @"searchRadiusUnit_example"; // Radius unit such as Feet, Kilometers, Miles or Meters. (optional)
NSString* maxCandidates = @"maxCandidates_example"; // Maximum number of POIs that can be retrieved. (optional)
NSString* country = @"country_example"; // Country ISO code. We need to make sure that either Lat/Lng or Country is provided to API (optional)
NSString* matchOnAddressNumber = @"matchOnAddressNumber_example"; // Option so that we force api to match on address number (optional)
NSString* autoDetectLocation = @"autoDetectLocation_example"; // Option to allow API to detect origin of API request automatically (optional)
NSString* ipAddress = @"ipAddress_example"; //  (optional)
NSString* areaName1 = @"areaName1_example"; // State province of the input to be searched (optional)
NSString* areaName3 = @"areaName3_example"; // City of the input to be searched (optional)
NSString* postCode = @"postCode_example"; // Postal Code of the input to be searched (optional)
NSString* returnAdminAreasOnly = @"returnAdminAreasOnly_example"; // if value set 'Y' then it will only do a matching on postcode or areaName1, areaName2, areaName3 and areaName4 fields in the data (optional)
NSString* includeRangesDetails = @"includeRangesDetails_example"; // if value set 'Y' then display all unit info of ranges, if value set 'N' then don't show ranges (optional)
NSString* searchType = @"searchType_example"; // Preference to control search type of interactive requests. (optional)
NSString* searchOnAddressNumber = @"searchOnAddressNumber_example"; // Preference to search on address number. (optional)
NSString* searchOnUnitInfo = @"searchOnUnitInfo_example"; // Preference to search on unit info. (optional)

PBAddressAutocompleteServiceApi*apiInstance = [[PBAddressAutocompleteServiceApi alloc] init];

// Address Autocomplete Search
[apiInstance searchV2WithSearchText:searchText
              latitude:latitude
              longitude:longitude
              searchRadius:searchRadius
              searchRadiusUnit:searchRadiusUnit
              maxCandidates:maxCandidates
              country:country
              matchOnAddressNumber:matchOnAddressNumber
              autoDetectLocation:autoDetectLocation
              ipAddress:ipAddress
              areaName1:areaName1
              areaName3:areaName3
              postCode:postCode
              returnAdminAreasOnly:returnAdminAreasOnly
              includeRangesDetails:includeRangesDetails
              searchType:searchType
              searchOnAddressNumber:searchOnAddressNumber
              searchOnUnitInfo:searchOnUnitInfo
          completionHandler: ^(PBTypeaheadLocations* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBAddressAutocompleteServiceApi->searchV2: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchText** | **NSString***| The input to be searched. | 
 **latitude** | **NSString***| Latitude of the location. We need to make sure that either Lat/Lng or Country is provided to API | [optional] 
 **longitude** | **NSString***| Longitude of the location. We need to make sure that either Lat/Lng or Country is provided to API | [optional] 
 **searchRadius** | **NSString***| Radius range within which search is performed. | [optional] 
 **searchRadiusUnit** | **NSString***| Radius unit such as Feet, Kilometers, Miles or Meters. | [optional] 
 **maxCandidates** | **NSString***| Maximum number of POIs that can be retrieved. | [optional] 
 **country** | **NSString***| Country ISO code. We need to make sure that either Lat/Lng or Country is provided to API | [optional] 
 **matchOnAddressNumber** | **NSString***| Option so that we force api to match on address number | [optional] 
 **autoDetectLocation** | **NSString***| Option to allow API to detect origin of API request automatically | [optional] 
 **ipAddress** | **NSString***|  | [optional] 
 **areaName1** | **NSString***| State province of the input to be searched | [optional] 
 **areaName3** | **NSString***| City of the input to be searched | [optional] 
 **postCode** | **NSString***| Postal Code of the input to be searched | [optional] 
 **returnAdminAreasOnly** | **NSString***| if value set &#39;Y&#39; then it will only do a matching on postcode or areaName1, areaName2, areaName3 and areaName4 fields in the data | [optional] 
 **includeRangesDetails** | **NSString***| if value set &#39;Y&#39; then display all unit info of ranges, if value set &#39;N&#39; then don&#39;t show ranges | [optional] 
 **searchType** | **NSString***| Preference to control search type of interactive requests. | [optional] 
 **searchOnAddressNumber** | **NSString***| Preference to search on address number. | [optional] 
 **searchOnUnitInfo** | **NSString***| Preference to search on unit info. | [optional] 

### Return type

[**PBTypeaheadLocations***](PBTypeaheadLocations.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

