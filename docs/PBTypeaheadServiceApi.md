# PBTypeaheadServiceApi

All URIs are relative to *https://api.precisely.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**search**](PBTypeaheadServiceApi.md#search) | **GET** /typeahead/v1/locations | Typeahead Search


# **search**
```objc
-(NSNumber*) searchWithSearchText: (NSString*) searchText
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
        completionHandler: (void (^)(PBGeosearchLocations* output, NSError* error)) handler;
```

Typeahead Search

Performs search to retrieve list of places by input text and location vicinity.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* searchText = @"searchText_example"; // The input to be searched.
NSString* latitude = @"latitude_example"; // Latitude of the location. Either the latitude or the longitude must be provided. (optional)
NSString* longitude = @"longitude_example"; // Longitude of the location. Either the latitude or the longitude must be provided. (optional)
NSString* searchRadius = @"searchRadius_example"; // Radius range within which search is performed. (optional)
NSString* searchRadiusUnit = @"searchRadiusUnit_example"; // Radius unit such as Feet, Kilometers, Miles or Meters. (optional)
NSString* maxCandidates = @"maxCandidates_example"; // Maximum number of addresses that can be retrieved. (optional)
NSString* country = @"country_example"; // Country ISO code. We need to make sure that either Lat/Lng or Country is provided to API (optional)
NSString* matchOnAddressNumber = @"matchOnAddressNumber_example"; // Option so that we force api to match on address number (optional)
NSString* autoDetectLocation = @"true"; // Option to allow API to detect origin of API request automatically (optional) (default to true)
NSString* ipAddress = @"ipAddress_example"; //  (optional)
NSString* areaName1 = @"areaName1_example"; // State province of the input to be searched (optional)
NSString* areaName3 = @"areaName3_example"; // City of the input to be searched (optional)
NSString* postCode = @"postCode_example"; // Postal Code of the input to be searched (optional)
NSString* returnAdminAreasOnly = @"N"; // if value set 'Y' then it will only do a matching on postcode or areaName1, areaName2, areaName3 and areaName4 fields in the data (optional) (default to N)
NSString* includeRangesDetails = @"Y"; // if value set 'Y' then display all unit info of ranges, if value set 'N' then don't show ranges (optional) (default to Y)
NSString* searchType = @"ADDRESS"; // Preference to control search type of interactive requests. (optional) (default to ADDRESS)
NSString* searchOnAddressNumber = @"N"; // if value set 'Y' then display searchOnAddressNumber (optional) (default to N)

PBTypeaheadServiceApi*apiInstance = [[PBTypeaheadServiceApi alloc] init];

// Typeahead Search
[apiInstance searchWithSearchText:searchText
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
          completionHandler: ^(PBGeosearchLocations* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBTypeaheadServiceApi->search: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **searchText** | **NSString***| The input to be searched. | 
 **latitude** | **NSString***| Latitude of the location. Either the latitude or the longitude must be provided. | [optional] 
 **longitude** | **NSString***| Longitude of the location. Either the latitude or the longitude must be provided. | [optional] 
 **searchRadius** | **NSString***| Radius range within which search is performed. | [optional] 
 **searchRadiusUnit** | **NSString***| Radius unit such as Feet, Kilometers, Miles or Meters. | [optional] 
 **maxCandidates** | **NSString***| Maximum number of addresses that can be retrieved. | [optional] 
 **country** | **NSString***| Country ISO code. We need to make sure that either Lat/Lng or Country is provided to API | [optional] 
 **matchOnAddressNumber** | **NSString***| Option so that we force api to match on address number | [optional] 
 **autoDetectLocation** | **NSString***| Option to allow API to detect origin of API request automatically | [optional] [default to true]
 **ipAddress** | **NSString***|  | [optional] 
 **areaName1** | **NSString***| State province of the input to be searched | [optional] 
 **areaName3** | **NSString***| City of the input to be searched | [optional] 
 **postCode** | **NSString***| Postal Code of the input to be searched | [optional] 
 **returnAdminAreasOnly** | **NSString***| if value set &#39;Y&#39; then it will only do a matching on postcode or areaName1, areaName2, areaName3 and areaName4 fields in the data | [optional] [default to N]
 **includeRangesDetails** | **NSString***| if value set &#39;Y&#39; then display all unit info of ranges, if value set &#39;N&#39; then don&#39;t show ranges | [optional] [default to Y]
 **searchType** | **NSString***| Preference to control search type of interactive requests. | [optional] [default to ADDRESS]
 **searchOnAddressNumber** | **NSString***| if value set &#39;Y&#39; then display searchOnAddressNumber | [optional] [default to N]

### Return type

[**PBGeosearchLocations***](PBGeosearchLocations.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

