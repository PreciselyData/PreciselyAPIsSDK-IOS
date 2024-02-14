# PBPlacesServiceApi

All URIs are relative to *https://api.precisely.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCategoryCodeMetadata**](PBPlacesServiceApi.md#getcategorycodemetadata) | **GET** /places/v1/metadata/category | Category Code Metadata.
[**getPOIById**](PBPlacesServiceApi.md#getpoibyid) | **GET** /places/v1/poi/{id} | Points Of Interest Details By Id
[**getPOIsByAddress**](PBPlacesServiceApi.md#getpoisbyaddress) | **GET** /places/v1/poi/byaddress | Get POIs By Address.
[**getPOIsByArea**](PBPlacesServiceApi.md#getpoisbyarea) | **GET** /places/v1/poi/byarea | GET Points Of Interest By Area.
[**getPOIsByGeometry**](PBPlacesServiceApi.md#getpoisbygeometry) | **POST** /places/v1/poi/byboundary | Points Of Interest By Boundary
[**getPOIsByLocation**](PBPlacesServiceApi.md#getpoisbylocation) | **GET** /places/v1/poi/bylocation | Get POIs By Location.
[**getPOIsCount**](PBPlacesServiceApi.md#getpoiscount) | **POST** /places/v1/poicount | Points Of Interest Count
[**getSICMetadata**](PBPlacesServiceApi.md#getsicmetadata) | **GET** /places/v1/metadata/sic | Get SIC Metadata
[**poisAutocomplete**](PBPlacesServiceApi.md#poisautocomplete) | **GET** /places/v1/poi/autocomplete | Points Of Interest Autocomplete


# **getCategoryCodeMetadata**
```objc
-(NSURLSessionTask*) getCategoryCodeMetadataWithCategoryCode: (NSString*) categoryCode
    level: (NSString*) level
        completionHandler: (void (^)(PBMetadataResponse* output, NSError* error)) handler;
```

Category Code Metadata.

This service returns a list of Category codes & associated metadata which can then be used as inputs for querying the Points of Interest By Address or Location methods listed above.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* categoryCode = @"categoryCode_example"; // 4, 6, or 11 digits category code to filter the response. (optional)
NSString* level = @"level_example"; // 1, 2, or 3. (optional)

PBPlacesServiceApi*apiInstance = [[PBPlacesServiceApi alloc] init];

// Category Code Metadata.
[apiInstance getCategoryCodeMetadataWithCategoryCode:categoryCode
              level:level
          completionHandler: ^(PBMetadataResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBPlacesServiceApi->getCategoryCodeMetadata: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryCode** | **NSString***| 4, 6, or 11 digits category code to filter the response. | [optional] 
 **level** | **NSString***| 1, 2, or 3. | [optional] 

### Return type

[**PBMetadataResponse***](PBMetadataResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPOIById**
```objc
-(NSURLSessionTask*) getPOIByIdWithId: (NSString*) _id
        completionHandler: (void (^)(PBPoi* output, NSError* error)) handler;
```

Points Of Interest Details By Id

This service returns complete details of a chosen point of interest by an identifier. The identifier could be selected from Autocomplete API response.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* _id = @"_id_example"; // POI unique Identifier.

PBPlacesServiceApi*apiInstance = [[PBPlacesServiceApi alloc] init];

// Points Of Interest Details By Id
[apiInstance getPOIByIdWithId:_id
          completionHandler: ^(PBPoi* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBPlacesServiceApi->getPOIById: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| POI unique Identifier. | 

### Return type

[**PBPoi***](PBPoi.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPOIsByAddress**
```objc
-(NSURLSessionTask*) getPOIsByAddressWithAddress: (NSString*) address
    country: (NSString*) country
    name: (NSString*) name
    type: (NSString*) type
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    maxCandidates: (NSString*) maxCandidates
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    travelMode: (NSString*) travelMode
    sortBy: (NSString*) sortBy
    fuzzyOnName: (NSString*) fuzzyOnName
    page: (NSString*) page
    matchMode: (NSString*) matchMode
    specificMatchOn: (NSString*) specificMatchOn
        completionHandler: (void (^)(PBPlacesResponse* output, NSError* error)) handler;
```

Get POIs By Address.

This service accepts an address as input and returns nearby points-of-interest places around that address. Additional input features include retrieving data by name, type, standard industrial classifications and category codes, as well as geographic filtering by radius, travel times and travel distances. Response features include JSON as well as CSV download.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // The address to be searched. (optional)
NSString* country = @"country_example"; // Country ISO code. (optional)
NSString* name = @"name_example"; // Specifies the name of the place (POI) to be searched. Also performs search on partially specified names. It requires minimum 3 characters to search. (optional)
NSString* type = @"type_example"; // Filters the points of interest (POIs) by place types. (optional)
NSString* categoryCode = @"categoryCode_example"; // Acts as a filter to narrow down and refine POI search results. The category codes are unique 4, 6, or 11 digit numeric values. (optional)
NSString* sicCode = @"sicCode_example"; // Acts as a filter to narrow down and refine POI search results. The SIC codes are unique 4 or 8 digit numerical values (optional)
NSString* maxCandidates = @"maxCandidates_example"; // Maximum number of POIs that can be retrieved (optional)
NSString* searchRadius = @"searchRadius_example"; // Radius range within which search is performed. (optional)
NSString* searchRadiusUnit = @"searchRadiusUnit_example"; // Radius unit such as Feet, Kilometers, Miles or Meters (default). (optional)
NSString* travelTime = @"travelTime_example"; // Travel time within which search is performed (POIs which can be reached within travel time). (optional)
NSString* travelTimeUnit = @"travelTimeUnit_example"; // Travel time unit such as minutes (default), hours, seconds or milliseconds. (optional)
NSString* travelDistance = @"travelDistance_example"; // Travel distance within which search is performed (POIs which can be reached within travel distance). (optional)
NSString* travelDistanceUnit = @"travelDistanceUnit_example"; // Travel distance unit such as Feet (default), Kilometers, Miles or Meters. (optional)
NSString* travelMode = @"driving"; // Mode of commute. (optional) (default to @"driving")
NSString* sortBy = @"sortBy_example"; // Whether to sort the results based on relevance (best match) or by nearest distance from input location. (optional)
NSString* fuzzyOnName = @"fuzzyOnName_example"; // Whether to allow fuzzy seacrh on name input. (optional)
NSString* page = @"page_example"; // Specifies the page number of results where page size is the value of maxCandidates input in request. (optional)
NSString* matchMode = @"matchMode_example"; // Determine the leniency used to make a match between the input name and the reference data. (optional)
NSString* specificMatchOn = @"specificMatchOn_example"; // Specifies the field for the Specific Match Mode. (optional)

PBPlacesServiceApi*apiInstance = [[PBPlacesServiceApi alloc] init];

// Get POIs By Address.
[apiInstance getPOIsByAddressWithAddress:address
              country:country
              name:name
              type:type
              categoryCode:categoryCode
              sicCode:sicCode
              maxCandidates:maxCandidates
              searchRadius:searchRadius
              searchRadiusUnit:searchRadiusUnit
              travelTime:travelTime
              travelTimeUnit:travelTimeUnit
              travelDistance:travelDistance
              travelDistanceUnit:travelDistanceUnit
              travelMode:travelMode
              sortBy:sortBy
              fuzzyOnName:fuzzyOnName
              page:page
              matchMode:matchMode
              specificMatchOn:specificMatchOn
          completionHandler: ^(PBPlacesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBPlacesServiceApi->getPOIsByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| The address to be searched. | [optional] 
 **country** | **NSString***| Country ISO code. | [optional] 
 **name** | **NSString***| Specifies the name of the place (POI) to be searched. Also performs search on partially specified names. It requires minimum 3 characters to search. | [optional] 
 **type** | **NSString***| Filters the points of interest (POIs) by place types. | [optional] 
 **categoryCode** | **NSString***| Acts as a filter to narrow down and refine POI search results. The category codes are unique 4, 6, or 11 digit numeric values. | [optional] 
 **sicCode** | **NSString***| Acts as a filter to narrow down and refine POI search results. The SIC codes are unique 4 or 8 digit numerical values | [optional] 
 **maxCandidates** | **NSString***| Maximum number of POIs that can be retrieved | [optional] 
 **searchRadius** | **NSString***| Radius range within which search is performed. | [optional] 
 **searchRadiusUnit** | **NSString***| Radius unit such as Feet, Kilometers, Miles or Meters (default). | [optional] 
 **travelTime** | **NSString***| Travel time within which search is performed (POIs which can be reached within travel time). | [optional] 
 **travelTimeUnit** | **NSString***| Travel time unit such as minutes (default), hours, seconds or milliseconds. | [optional] 
 **travelDistance** | **NSString***| Travel distance within which search is performed (POIs which can be reached within travel distance). | [optional] 
 **travelDistanceUnit** | **NSString***| Travel distance unit such as Feet (default), Kilometers, Miles or Meters. | [optional] 
 **travelMode** | **NSString***| Mode of commute. | [optional] [default to @&quot;driving&quot;]
 **sortBy** | **NSString***| Whether to sort the results based on relevance (best match) or by nearest distance from input location. | [optional] 
 **fuzzyOnName** | **NSString***| Whether to allow fuzzy seacrh on name input. | [optional] 
 **page** | **NSString***| Specifies the page number of results where page size is the value of maxCandidates input in request. | [optional] 
 **matchMode** | **NSString***| Determine the leniency used to make a match between the input name and the reference data. | [optional] 
 **specificMatchOn** | **NSString***| Specifies the field for the Specific Match Mode. | [optional] 

### Return type

[**PBPlacesResponse***](PBPlacesResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPOIsByArea**
```objc
-(NSURLSessionTask*) getPOIsByAreaWithAreaName1: (NSString*) areaName1
    areaName3: (NSString*) areaName3
    postcode1: (NSString*) postcode1
    postcode2: (NSString*) postcode2
    country: (NSString*) country
    name: (NSString*) name
    type: (NSString*) type
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    maxCandidates: (NSString*) maxCandidates
    fuzzyOnName: (NSString*) fuzzyOnName
    page: (NSString*) page
    matchMode: (NSString*) matchMode
    specificMatchOn: (NSString*) specificMatchOn
        completionHandler: (void (^)(PBPlacesResponse* output, NSError* error)) handler;
```

GET Points Of Interest By Area.

This service accepts city or postcode (alongwith country) and returns points-of-interest places within a city or postcode. Additional input features include retrieving data by name, type, standard industrial classifications and category codes, as well as geographic filtering by radius, travel times and travel distances. Response features include JSON as well as CSV download.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* areaName1 = @"areaName1_example"; // Specifies the largest geographical area, typically a state or province (optional)
NSString* areaName3 = @"areaName3_example"; // Specifies a city or town name (optional)
NSString* postcode1 = @"postcode1_example"; // Specifies the postcode(ZIP code) in the appropriate format for the country (optional)
NSString* postcode2 = @"postcode2_example"; // Specifies the postcode(ZIP code) extension (optional)
NSString* country = @"country_example"; // Country ISO code (optional)
NSString* name = @"name_example"; // Specifies the name of the place (POI) to be searched. Also performs search on partially specified names. It requires minimum 3 characters to search (optional)
NSString* type = @"type_example"; // Filters the points of interest (POIs) by place types (optional)
NSString* categoryCode = @"categoryCode_example"; // Acts as a filter to narrow down and refine POI search results. The category codes are unique 4, 6, or 11 digit numeric values (optional)
NSString* sicCode = @"sicCode_example"; // Acts as a filter to narrow down and refine POI search results. The SIC codes are unique 4 or 8 digit numerical values (optional)
NSString* maxCandidates = @"maxCandidates_example"; // Maximum number of POIs that can be retrieved (optional)
NSString* fuzzyOnName = @"fuzzyOnName_example"; // Whether to allow fuzzy seacrh on name input (optional)
NSString* page = @"page_example"; // Specifies the page number of results where page size is the value of maxCandidates input in request (optional)
NSString* matchMode = @"matchMode_example"; // Determine the leniency used to make a match between the input name and the reference data (optional)
NSString* specificMatchOn = @"specificMatchOn_example"; // Specifies the field for the Specific Match Mode (optional)

PBPlacesServiceApi*apiInstance = [[PBPlacesServiceApi alloc] init];

// GET Points Of Interest By Area.
[apiInstance getPOIsByAreaWithAreaName1:areaName1
              areaName3:areaName3
              postcode1:postcode1
              postcode2:postcode2
              country:country
              name:name
              type:type
              categoryCode:categoryCode
              sicCode:sicCode
              maxCandidates:maxCandidates
              fuzzyOnName:fuzzyOnName
              page:page
              matchMode:matchMode
              specificMatchOn:specificMatchOn
          completionHandler: ^(PBPlacesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBPlacesServiceApi->getPOIsByArea: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **areaName1** | **NSString***| Specifies the largest geographical area, typically a state or province | [optional] 
 **areaName3** | **NSString***| Specifies a city or town name | [optional] 
 **postcode1** | **NSString***| Specifies the postcode(ZIP code) in the appropriate format for the country | [optional] 
 **postcode2** | **NSString***| Specifies the postcode(ZIP code) extension | [optional] 
 **country** | **NSString***| Country ISO code | [optional] 
 **name** | **NSString***| Specifies the name of the place (POI) to be searched. Also performs search on partially specified names. It requires minimum 3 characters to search | [optional] 
 **type** | **NSString***| Filters the points of interest (POIs) by place types | [optional] 
 **categoryCode** | **NSString***| Acts as a filter to narrow down and refine POI search results. The category codes are unique 4, 6, or 11 digit numeric values | [optional] 
 **sicCode** | **NSString***| Acts as a filter to narrow down and refine POI search results. The SIC codes are unique 4 or 8 digit numerical values | [optional] 
 **maxCandidates** | **NSString***| Maximum number of POIs that can be retrieved | [optional] 
 **fuzzyOnName** | **NSString***| Whether to allow fuzzy seacrh on name input | [optional] 
 **page** | **NSString***| Specifies the page number of results where page size is the value of maxCandidates input in request | [optional] 
 **matchMode** | **NSString***| Determine the leniency used to make a match between the input name and the reference data | [optional] 
 **specificMatchOn** | **NSString***| Specifies the field for the Specific Match Mode | [optional] 

### Return type

[**PBPlacesResponse***](PBPlacesResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPOIsByGeometry**
```objc
-(NSURLSessionTask*) getPOIsByGeometryWithPOIByGeometryRequest: (PBPOIByGeometryRequest*) pOIByGeometryRequest
        completionHandler: (void (^)(PBPlacesResponse* output, NSError* error)) handler;
```

Points Of Interest By Boundary

Accepts a user-defined boundary as input and returns all Points of Interest within the boundary. Additionally, user can filter the response by name, type, standard industrial classifications and category codes.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBPOIByGeometryRequest* pOIByGeometryRequest = [[PBPOIByGeometryRequest alloc] init]; // 

PBPlacesServiceApi*apiInstance = [[PBPlacesServiceApi alloc] init];

// Points Of Interest By Boundary
[apiInstance getPOIsByGeometryWithPOIByGeometryRequest:pOIByGeometryRequest
          completionHandler: ^(PBPlacesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBPlacesServiceApi->getPOIsByGeometry: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pOIByGeometryRequest** | [**PBPOIByGeometryRequest***](PBPOIByGeometryRequest.md)|  | 

### Return type

[**PBPlacesResponse***](PBPlacesResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPOIsByLocation**
```objc
-(NSURLSessionTask*) getPOIsByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    name: (NSString*) name
    type: (NSString*) type
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    maxCandidates: (NSString*) maxCandidates
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    travelMode: (NSString*) travelMode
    sortBy: (NSString*) sortBy
    fuzzyOnName: (NSString*) fuzzyOnName
    page: (NSString*) page
    matchMode: (NSString*) matchMode
    specificMatchOn: (NSString*) specificMatchOn
        completionHandler: (void (^)(PBPlacesResponse* output, NSError* error)) handler;
```

Get POIs By Location.

This service accepts latitude/longitude as input and returns nearby points-of-interest places around that location. Additional input features include retrieving data by name, type, standard industrial classifications and category codes, as well as geographic filtering by radius, travel times and travel distances. Response features include JSON as well as CSV download

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of the location.
NSString* latitude = @"latitude_example"; // Latitude of the location.
NSString* name = @"name_example"; // Specifies the name of the place (POI) to be searched. Also performs search on partially specified names. It requires minimum 3 characters to search. (optional)
NSString* type = @"type_example"; // Filters the points of interest (POIs) by place types. (optional)
NSString* categoryCode = @"categoryCode_example"; // Acts as a filter to narrow down and refine POI search results. The category codes are unique 4, 6, or 11 digit numeric values. (optional)
NSString* sicCode = @"sicCode_example"; // Acts as a filter to narrow down and refine POI search results. The SIC codes are unique 4 or 8 digit numerical values (optional)
NSString* maxCandidates = @"maxCandidates_example"; // Maximum number of POIs that can be retrieved (optional)
NSString* searchRadius = @"searchRadius_example"; // Radius range within which search is performed. (optional)
NSString* searchRadiusUnit = @"searchRadiusUnit_example"; // Radius unit such as Feet, Kilometers, Miles or Meters (default). (optional)
NSString* travelTime = @"travelTime_example"; // Travel time within which search is performed (POIs which can be reached within travel time). (optional)
NSString* travelTimeUnit = @"travelTimeUnit_example"; // Travel time unit such as minutes (default), hours, seconds or milliseconds. (optional)
NSString* travelDistance = @"travelDistance_example"; // Travel distance within which search is performed (POIs which can be reached within travel distance). (optional)
NSString* travelDistanceUnit = @"travelDistanceUnit_example"; // Travel distance unit such as Feet (default), Kilometers, Miles or Meters. (optional)
NSString* travelMode = @"travelMode_example"; // Mode of commute. (optional)
NSString* sortBy = @"sortBy_example"; // Whether to sort the results based on relevance (best match) or by nearest distance from input location. (optional)
NSString* fuzzyOnName = @"fuzzyOnName_example"; // Whether to allow fuzzy seacrh on name input. (optional)
NSString* page = @"page_example"; // Specifies the page number of results where page size is the value of maxCandidates input in request. (optional)
NSString* matchMode = @"matchMode_example"; // Determine the leniency used to make a match between the input name and the reference data. (optional)
NSString* specificMatchOn = @"specificMatchOn_example"; // Specifies the field for the Specific Match Mode. (optional)

PBPlacesServiceApi*apiInstance = [[PBPlacesServiceApi alloc] init];

// Get POIs By Location.
[apiInstance getPOIsByLocationWithLongitude:longitude
              latitude:latitude
              name:name
              type:type
              categoryCode:categoryCode
              sicCode:sicCode
              maxCandidates:maxCandidates
              searchRadius:searchRadius
              searchRadiusUnit:searchRadiusUnit
              travelTime:travelTime
              travelTimeUnit:travelTimeUnit
              travelDistance:travelDistance
              travelDistanceUnit:travelDistanceUnit
              travelMode:travelMode
              sortBy:sortBy
              fuzzyOnName:fuzzyOnName
              page:page
              matchMode:matchMode
              specificMatchOn:specificMatchOn
          completionHandler: ^(PBPlacesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBPlacesServiceApi->getPOIsByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of the location. | 
 **latitude** | **NSString***| Latitude of the location. | 
 **name** | **NSString***| Specifies the name of the place (POI) to be searched. Also performs search on partially specified names. It requires minimum 3 characters to search. | [optional] 
 **type** | **NSString***| Filters the points of interest (POIs) by place types. | [optional] 
 **categoryCode** | **NSString***| Acts as a filter to narrow down and refine POI search results. The category codes are unique 4, 6, or 11 digit numeric values. | [optional] 
 **sicCode** | **NSString***| Acts as a filter to narrow down and refine POI search results. The SIC codes are unique 4 or 8 digit numerical values | [optional] 
 **maxCandidates** | **NSString***| Maximum number of POIs that can be retrieved | [optional] 
 **searchRadius** | **NSString***| Radius range within which search is performed. | [optional] 
 **searchRadiusUnit** | **NSString***| Radius unit such as Feet, Kilometers, Miles or Meters (default). | [optional] 
 **travelTime** | **NSString***| Travel time within which search is performed (POIs which can be reached within travel time). | [optional] 
 **travelTimeUnit** | **NSString***| Travel time unit such as minutes (default), hours, seconds or milliseconds. | [optional] 
 **travelDistance** | **NSString***| Travel distance within which search is performed (POIs which can be reached within travel distance). | [optional] 
 **travelDistanceUnit** | **NSString***| Travel distance unit such as Feet (default), Kilometers, Miles or Meters. | [optional] 
 **travelMode** | **NSString***| Mode of commute. | [optional] 
 **sortBy** | **NSString***| Whether to sort the results based on relevance (best match) or by nearest distance from input location. | [optional] 
 **fuzzyOnName** | **NSString***| Whether to allow fuzzy seacrh on name input. | [optional] 
 **page** | **NSString***| Specifies the page number of results where page size is the value of maxCandidates input in request. | [optional] 
 **matchMode** | **NSString***| Determine the leniency used to make a match between the input name and the reference data. | [optional] 
 **specificMatchOn** | **NSString***| Specifies the field for the Specific Match Mode. | [optional] 

### Return type

[**PBPlacesResponse***](PBPlacesResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPOIsCount**
```objc
-(NSURLSessionTask*) getPOIsCountWithContentType: (NSString*) contentType
    poiCountRequest: (PBPoiCountRequest*) poiCountRequest
        completionHandler: (void (^)(PBPoiCount* output, NSError* error)) handler;
```

Points Of Interest Count

Accepts a user-defined boundary as input and returns the Count number of POIs within the boundary. Additionally, user can request the count of filtered POIs by name, type, standard industrial classifications and category codes within the given polygon.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* contentType = @"contentType_example"; // 
PBPoiCountRequest* poiCountRequest = [[PBPoiCountRequest alloc] init]; // 

PBPlacesServiceApi*apiInstance = [[PBPlacesServiceApi alloc] init];

// Points Of Interest Count
[apiInstance getPOIsCountWithContentType:contentType
              poiCountRequest:poiCountRequest
          completionHandler: ^(PBPoiCount* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBPlacesServiceApi->getPOIsCount: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contentType** | **NSString***|  | 
 **poiCountRequest** | [**PBPoiCountRequest***](PBPoiCountRequest.md)|  | 

### Return type

[**PBPoiCount***](PBPoiCount.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSICMetadata**
```objc
-(NSURLSessionTask*) getSICMetadataWithSicCode: (NSString*) sicCode
    level: (NSString*) level
        completionHandler: (void (^)(PBMetadataResponse* output, NSError* error)) handler;
```

Get SIC Metadata

This service returns a list of standard industrial classification codes & associated metadata which can then be used as inputs for querying the Points of Interest By Address or Location methods listed above.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* sicCode = @"sicCode_example"; // 4 or 8 digits SIC code to filter the response. (optional)
NSString* level = @"level_example"; // 1 or 2. (optional)

PBPlacesServiceApi*apiInstance = [[PBPlacesServiceApi alloc] init];

// Get SIC Metadata
[apiInstance getSICMetadataWithSicCode:sicCode
              level:level
          completionHandler: ^(PBMetadataResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBPlacesServiceApi->getSICMetadata: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sicCode** | **NSString***| 4 or 8 digits SIC code to filter the response. | [optional] 
 **level** | **NSString***| 1 or 2. | [optional] 

### Return type

[**PBMetadataResponse***](PBMetadataResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/csv

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **poisAutocomplete**
```objc
-(NSURLSessionTask*) poisAutocompleteWithXForwardedFor: (NSString*) xForwardedFor
    longitude: (NSString*) longitude
    latitude: (NSString*) latitude
    searchText: (NSString*) searchText
    searchOnNameOnly: (NSString*) searchOnNameOnly
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    travelMode: (NSString*) travelMode
    country: (NSString*) country
    areaName1: (NSString*) areaName1
    areaName3: (NSString*) areaName3
    postcode1: (NSString*) postcode1
    postcode2: (NSString*) postcode2
    ipAddress: (NSString*) ipAddress
    autoDetectLocation: (NSString*) autoDetectLocation
    type: (NSString*) type
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    maxCandidates: (NSString*) maxCandidates
    sortBy: (NSString*) sortBy
    matchMode: (NSString*) matchMode
    specificMatchOn: (NSString*) specificMatchOn
        completionHandler: (void (^)(PBPlacesResponse* output, NSError* error)) handler;
```

Points Of Interest Autocomplete

This service accepts partial text input and returns matching points of interest, sorted by relevance or distance.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* xForwardedFor = @"xForwardedFor_example"; //  (optional)
NSString* longitude = @"longitude_example"; // Longitude of the location. (optional)
NSString* latitude = @"latitude_example"; // Latitude of the location. (optional)
NSString* searchText = @"searchText_example"; // Free text which will accept a multi-word string. Combination of POI name and address is possible. (optional)
NSString* searchOnNameOnly = @"N"; //  (optional) (default to @"N")
NSString* searchRadius = @"searchRadius_example"; // Radius range within which search is performed. (optional)
NSString* searchRadiusUnit = @"searchRadiusUnit_example"; // Radius unit such as Feet, Kilometers, Miles or Meters (default). (optional)
NSString* travelTime = @"travelTime_example"; // Travel time within which search is performed (POIs which can be reached within travel time). (optional)
NSString* travelTimeUnit = @"travelTimeUnit_example"; // Travel time unit such as minutes (default), hours, seconds or milliseconds. (optional)
NSString* travelDistance = @"travelDistance_example"; // Travel distance within which search is performed (POIs which can be reached within travel distance). (optional)
NSString* travelDistanceUnit = @"travelDistanceUnit_example"; // Travel distance unit such as Feet (default), Kilometers, Miles or Meters. (optional)
NSString* travelMode = @"driving"; // Mode of commute. (optional) (default to @"driving")
NSString* country = @"country_example"; // Country ISO code. (optional)
NSString* areaName1 = @"areaName1_example"; // Specifies the largest geographical area, typically a state or province. (optional)
NSString* areaName3 = @"areaName3_example"; // Specifies a city or town name. (optional)
NSString* postcode1 = @"postcode1_example"; // Specifies the postcode(ZIP code) in the appropriate format for the country. (optional)
NSString* postcode2 = @"postcode2_example"; // Specifies the postcode(ZIP code) extension. (optional)
NSString* ipAddress = @"ipAddress_example"; // IP address which will be used to auto detect the location in order to serve contextually relevant results. (optional)
NSString* autoDetectLocation = @"autoDetectLocation_example"; // Specifies whether to detect client's location using IP address. If IP address(below) is not provided and autoDetectLocation is set 'True' then IP address will be picked from HTTP request automatically. (optional)
NSString* type = @"type_example"; // Filters the points of interest (POIs) by place types. (optional)
NSString* categoryCode = @"categoryCode_example"; // Acts as a filter to narrow down and refine POI search results. The category codes are unique 4, 6, or 11 digit numeric values. (optional)
NSString* sicCode = @"sicCode_example"; // Acts as a filter to narrow down and refine POI search results. The SIC codes are unique 4 or 8 digit numerical values. (optional)
NSString* maxCandidates = @"maxCandidates_example"; // Maximum number of POIs that can be retrieved. (optional)
NSString* sortBy = @"sortBy_example"; // sortBy (optional)
NSString* matchMode = @"matchMode_example"; // Determine the leniency used to make a match between the input name and the reference data. (optional)
NSString* specificMatchOn = @"specificMatchOn_example"; // Specifies the field for the Specific Match Mode. (optional)

PBPlacesServiceApi*apiInstance = [[PBPlacesServiceApi alloc] init];

// Points Of Interest Autocomplete
[apiInstance poisAutocompleteWithXForwardedFor:xForwardedFor
              longitude:longitude
              latitude:latitude
              searchText:searchText
              searchOnNameOnly:searchOnNameOnly
              searchRadius:searchRadius
              searchRadiusUnit:searchRadiusUnit
              travelTime:travelTime
              travelTimeUnit:travelTimeUnit
              travelDistance:travelDistance
              travelDistanceUnit:travelDistanceUnit
              travelMode:travelMode
              country:country
              areaName1:areaName1
              areaName3:areaName3
              postcode1:postcode1
              postcode2:postcode2
              ipAddress:ipAddress
              autoDetectLocation:autoDetectLocation
              type:type
              categoryCode:categoryCode
              sicCode:sicCode
              maxCandidates:maxCandidates
              sortBy:sortBy
              matchMode:matchMode
              specificMatchOn:specificMatchOn
          completionHandler: ^(PBPlacesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBPlacesServiceApi->poisAutocomplete: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xForwardedFor** | **NSString***|  | [optional] 
 **longitude** | **NSString***| Longitude of the location. | [optional] 
 **latitude** | **NSString***| Latitude of the location. | [optional] 
 **searchText** | **NSString***| Free text which will accept a multi-word string. Combination of POI name and address is possible. | [optional] 
 **searchOnNameOnly** | **NSString***|  | [optional] [default to @&quot;N&quot;]
 **searchRadius** | **NSString***| Radius range within which search is performed. | [optional] 
 **searchRadiusUnit** | **NSString***| Radius unit such as Feet, Kilometers, Miles or Meters (default). | [optional] 
 **travelTime** | **NSString***| Travel time within which search is performed (POIs which can be reached within travel time). | [optional] 
 **travelTimeUnit** | **NSString***| Travel time unit such as minutes (default), hours, seconds or milliseconds. | [optional] 
 **travelDistance** | **NSString***| Travel distance within which search is performed (POIs which can be reached within travel distance). | [optional] 
 **travelDistanceUnit** | **NSString***| Travel distance unit such as Feet (default), Kilometers, Miles or Meters. | [optional] 
 **travelMode** | **NSString***| Mode of commute. | [optional] [default to @&quot;driving&quot;]
 **country** | **NSString***| Country ISO code. | [optional] 
 **areaName1** | **NSString***| Specifies the largest geographical area, typically a state or province. | [optional] 
 **areaName3** | **NSString***| Specifies a city or town name. | [optional] 
 **postcode1** | **NSString***| Specifies the postcode(ZIP code) in the appropriate format for the country. | [optional] 
 **postcode2** | **NSString***| Specifies the postcode(ZIP code) extension. | [optional] 
 **ipAddress** | **NSString***| IP address which will be used to auto detect the location in order to serve contextually relevant results. | [optional] 
 **autoDetectLocation** | **NSString***| Specifies whether to detect client&#39;s location using IP address. If IP address(below) is not provided and autoDetectLocation is set &#39;True&#39; then IP address will be picked from HTTP request automatically. | [optional] 
 **type** | **NSString***| Filters the points of interest (POIs) by place types. | [optional] 
 **categoryCode** | **NSString***| Acts as a filter to narrow down and refine POI search results. The category codes are unique 4, 6, or 11 digit numeric values. | [optional] 
 **sicCode** | **NSString***| Acts as a filter to narrow down and refine POI search results. The SIC codes are unique 4 or 8 digit numerical values. | [optional] 
 **maxCandidates** | **NSString***| Maximum number of POIs that can be retrieved. | [optional] 
 **sortBy** | **NSString***| sortBy | [optional] 
 **matchMode** | **NSString***| Determine the leniency used to make a match between the input name and the reference data. | [optional] 
 **specificMatchOn** | **NSString***| Specifies the field for the Specific Match Mode. | [optional] 

### Return type

[**PBPlacesResponse***](PBPlacesResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

