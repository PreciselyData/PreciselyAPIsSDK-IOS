# PBSchoolsServiceApi

All URIs are relative to *https://api.precisely.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSchoolsByAddress**](PBSchoolsServiceApi.md#getschoolsbyaddress) | **GET** /schools/v1/school/byaddress | Search Nearby Schools by Address


# **getSchoolsByAddress**
```objc
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
        completionHandler: (void (^)(PBSchoolsNearByResponse* output, NSError* error)) handler;
```

Search Nearby Schools by Address

Search Nearby Schools by Address

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // free form address text
NSString* edLevel = @"edLevel_example"; // Single digit code for education level applicable values are P -> primary, M -> Middle, H -> High, O -> Mixed Grades for public school type andE -> Elementary , S -> Secondary , O -> Others mixed grades for private schools  (optional)
NSString* schoolType = @"schoolType_example"; // Single digit code for schoolTypes applicable values are PRI and PUB (optional)
NSString* schoolSubType = @"schoolSubType_example"; // Single digit code for schoolSubType Applicable values are C, M, A, R, I, L, P, V, U, S (i.e. Charter, Magnet, Alternative, Regular, Indian, Military, Reportable Program, Vocational, Unknown, Special Education) (optional)
NSString* gender = @"gender_example"; // Single digit code for gender Applicable values are C, F, M (Coed, All Females, All Males) Applicable for Private Schools Only (optional)
NSString* assignedSchoolsOnly = @"assignedSchoolsOnly_example"; // Single digit code for assignedSchoolOnly applicable values are  Y/N  (optional)
NSString* districtSchoolsOnly = @"districtSchoolsOnly_example"; // Single digit code for districtSchoolOnly applicable values are Y/N  (optional)
NSString* searchRadius = @"searchRadius_example"; // Search Radius within which schools are searched (optional)
NSString* searchRadiusUnit = @"searchRadiusUnit_example"; // Search Radius unit applicable values are feet,kilometers,miles,meters (optional)
NSString* travelTime = @"travelTime_example"; // Travel Time based on ‘travelMode’ within which schools are searched. (optional)
NSString* travelTimeUnit = @"travelTimeUnit_example"; // Travel Time unit applicable values are minutes,hours,seconds,milliseconds  (optional)
NSString* travelDistance = @"travelDistance_example"; // Travel Distance based on ‘travelMode’ within which schools are searched. (optional)
NSString* travelDistanceUnit = @"travelDistanceUnit_example"; // Travel distanceUnit applicable values are feet,kilometers,miles,meters (optional)
NSString* travelMode = @"travelMode_example"; // Travel mode Required when travelDistance or travelTime is specified. Accepted values are walking,driving (optional)
NSString* maxCandidates = @"maxCandidates_example"; // Max result to search  (optional)

PBSchoolsServiceApi*apiInstance = [[PBSchoolsServiceApi alloc] init];

// Search Nearby Schools by Address
[apiInstance getSchoolsByAddressWithAddress:address
              edLevel:edLevel
              schoolType:schoolType
              schoolSubType:schoolSubType
              gender:gender
              assignedSchoolsOnly:assignedSchoolsOnly
              districtSchoolsOnly:districtSchoolsOnly
              searchRadius:searchRadius
              searchRadiusUnit:searchRadiusUnit
              travelTime:travelTime
              travelTimeUnit:travelTimeUnit
              travelDistance:travelDistance
              travelDistanceUnit:travelDistanceUnit
              travelMode:travelMode
              maxCandidates:maxCandidates
          completionHandler: ^(PBSchoolsNearByResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBSchoolsServiceApi->getSchoolsByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| free form address text | 
 **edLevel** | **NSString***| Single digit code for education level applicable values are P -&gt; primary, M -&gt; Middle, H -&gt; High, O -&gt; Mixed Grades for public school type andE -&gt; Elementary , S -&gt; Secondary , O -&gt; Others mixed grades for private schools  | [optional] 
 **schoolType** | **NSString***| Single digit code for schoolTypes applicable values are PRI and PUB | [optional] 
 **schoolSubType** | **NSString***| Single digit code for schoolSubType Applicable values are C, M, A, R, I, L, P, V, U, S (i.e. Charter, Magnet, Alternative, Regular, Indian, Military, Reportable Program, Vocational, Unknown, Special Education) | [optional] 
 **gender** | **NSString***| Single digit code for gender Applicable values are C, F, M (Coed, All Females, All Males) Applicable for Private Schools Only | [optional] 
 **assignedSchoolsOnly** | **NSString***| Single digit code for assignedSchoolOnly applicable values are  Y/N  | [optional] 
 **districtSchoolsOnly** | **NSString***| Single digit code for districtSchoolOnly applicable values are Y/N  | [optional] 
 **searchRadius** | **NSString***| Search Radius within which schools are searched | [optional] 
 **searchRadiusUnit** | **NSString***| Search Radius unit applicable values are feet,kilometers,miles,meters | [optional] 
 **travelTime** | **NSString***| Travel Time based on ‘travelMode’ within which schools are searched. | [optional] 
 **travelTimeUnit** | **NSString***| Travel Time unit applicable values are minutes,hours,seconds,milliseconds  | [optional] 
 **travelDistance** | **NSString***| Travel Distance based on ‘travelMode’ within which schools are searched. | [optional] 
 **travelDistanceUnit** | **NSString***| Travel distanceUnit applicable values are feet,kilometers,miles,meters | [optional] 
 **travelMode** | **NSString***| Travel mode Required when travelDistance or travelTime is specified. Accepted values are walking,driving | [optional] 
 **maxCandidates** | **NSString***| Max result to search  | [optional] 

### Return type

[**PBSchoolsNearByResponse***](PBSchoolsNearByResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

