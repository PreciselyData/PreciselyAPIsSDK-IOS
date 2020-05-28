# PBGeocodeServiceApi

All URIs are relative to *https://api.precisely.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**geocode**](PBGeocodeServiceApi.md#geocode) | **GET** /geocode/v1/{datapackBundle}/geocode | Get Forward Geocode
[**geocodeBatch**](PBGeocodeServiceApi.md#geocodebatch) | **POST** /geocode/v1/{datapackBundle}/geocode | Post Forward Geocode
[**getCapabilities**](PBGeocodeServiceApi.md#getcapabilities) | **GET** /geocode/v1/{datapackBundle}/capabilities | Get Capabilities
[**getDictionaries**](PBGeocodeServiceApi.md#getdictionaries) | **GET** /geocode/v1/{datapackBundle}/dictionaries | Get installed Dictionaries
[**getPreciselyID**](PBGeocodeServiceApi.md#getpreciselyid) | **GET** /geocode/v1/key/byaddress | Get PreciselyID By Address
[**getPreciselyIDs**](PBGeocodeServiceApi.md#getpreciselyids) | **POST** /geocode/v1/key/byaddress | Post PreciselyID By Address
[**keyLookup**](PBGeocodeServiceApi.md#keylookup) | **GET** /geocode/v1/keylookup | Get Key Lookup
[**keyLookupBatch**](PBGeocodeServiceApi.md#keylookupbatch) | **POST** /geocode/v1/keylookup | Post Key Lookup
[**reverseGeocodBatch**](PBGeocodeServiceApi.md#reversegeocodbatch) | **POST** /geocode/v1/{datapackBundle}/reverseGeocode | Post Reverse Geocode
[**reverseGeocode**](PBGeocodeServiceApi.md#reversegeocode) | **GET** /geocode/v1/{datapackBundle}/reverseGeocode | Get Reverse Geocode


# **geocode**
```objc
-(NSNumber*) geocodeWithDatapackBundle: (NSString*) datapackBundle
    country: (NSString*) country
    placeName: (NSString*) placeName
    mainAddress: (NSString*) mainAddress
    lastLine: (NSString*) lastLine
    areaName1: (NSString*) areaName1
    areaName2: (NSString*) areaName2
    areaName3: (NSString*) areaName3
    areaName4: (NSString*) areaName4
    postalCode: (NSNumber*) postalCode
    matchMode: (NSString*) matchMode
    fallbackGeo: (NSNumber*) fallbackGeo
    fallbackPostal: (NSNumber*) fallbackPostal
    maxCands: (NSNumber*) maxCands
    streetOffset: (NSNumber*) streetOffset
    streetOffsetUnits: (NSString*) streetOffsetUnits
    cornerOffset: (NSNumber*) cornerOffset
    cornerOffsetUnits: (NSString*) cornerOffsetUnits
        completionHandler: (void (^)(PBGeocodeServiceResponse* output, NSError* error)) handler;
```

Get Forward Geocode

This service accepts an address and returns the location coordinates corresponding to that address. Premium offers the best accuracy and is a high precision geocoder leveraging Master Location Data - geocodes to Street or building level.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* datapackBundle = @"datapackBundle_example"; // value of datapackBundle
NSString* country = @"USA"; // Country name or ISO code. (optional) (default to USA)
NSString* placeName = @"placeName_example"; // Building name, place name, Point of Interest (POI), company or firm name associated with the input address. (optional)
NSString* mainAddress = @"4750 Walnut St., Boulder CO, 80301"; // Single line input, treated as collection of field elements. (optional) (default to 4750 Walnut St., Boulder CO, 80301)
NSString* lastLine = @"lastLine_example"; // The last line of the address. (optional)
NSString* areaName1 = @"areaName1_example"; // Specifies the largest geographical area, typically a state or province. (optional)
NSString* areaName2 = @"areaName2_example"; // Specifies the secondary geographic area, typically a county or district. (optional)
NSString* areaName3 = @"areaName3_example"; // Specifies a city or town name. (optional)
NSString* areaName4 = @"areaName4_example"; // Specifies a city subdivision or locality. (optional)
NSNumber* postalCode = @56; // The postal code in the appropriate format for the country. (optional)
NSString* matchMode = @"Standard"; // Match modes determine the leniency used to make a match between the input address and the reference data. (optional) (default to Standard)
NSNumber* fallbackGeo = @true; // Specifies whether to attempt to determine a geographic region centroid when an address-level geocode cannot be determined. (optional) (default to true)
NSNumber* fallbackPostal = @true; // Specifies whether to attempt to determine a post code centroid when an address-level geocode cannot be determined. (optional) (default to true)
NSNumber* maxCands = @1; // The maximum number of candidates to return. (optional) (default to 1)
NSNumber* streetOffset = @7; // Indicates the offset distance from the street segments to use in street-level geocoding. (optional) (default to 7)
NSString* streetOffsetUnits = @"METERS"; // Specifies the unit of measurement for the street offset. (optional) (default to METERS)
NSNumber* cornerOffset = @7; // Specifies the distance to offset the street end points in street-level matching. (optional) (default to 7)
NSString* cornerOffsetUnits = @"METERS"; // Specifies the unit of measurement for the corner offset. (optional) (default to METERS)

PBGeocodeServiceApi*apiInstance = [[PBGeocodeServiceApi alloc] init];

// Get Forward Geocode
[apiInstance geocodeWithDatapackBundle:datapackBundle
              country:country
              placeName:placeName
              mainAddress:mainAddress
              lastLine:lastLine
              areaName1:areaName1
              areaName2:areaName2
              areaName3:areaName3
              areaName4:areaName4
              postalCode:postalCode
              matchMode:matchMode
              fallbackGeo:fallbackGeo
              fallbackPostal:fallbackPostal
              maxCands:maxCands
              streetOffset:streetOffset
              streetOffsetUnits:streetOffsetUnits
              cornerOffset:cornerOffset
              cornerOffsetUnits:cornerOffsetUnits
          completionHandler: ^(PBGeocodeServiceResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBGeocodeServiceApi->geocode: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datapackBundle** | **NSString***| value of datapackBundle | 
 **country** | **NSString***| Country name or ISO code. | [optional] [default to USA]
 **placeName** | **NSString***| Building name, place name, Point of Interest (POI), company or firm name associated with the input address. | [optional] 
 **mainAddress** | **NSString***| Single line input, treated as collection of field elements. | [optional] [default to 4750 Walnut St., Boulder CO, 80301]
 **lastLine** | **NSString***| The last line of the address. | [optional] 
 **areaName1** | **NSString***| Specifies the largest geographical area, typically a state or province. | [optional] 
 **areaName2** | **NSString***| Specifies the secondary geographic area, typically a county or district. | [optional] 
 **areaName3** | **NSString***| Specifies a city or town name. | [optional] 
 **areaName4** | **NSString***| Specifies a city subdivision or locality. | [optional] 
 **postalCode** | **NSNumber***| The postal code in the appropriate format for the country. | [optional] 
 **matchMode** | **NSString***| Match modes determine the leniency used to make a match between the input address and the reference data. | [optional] [default to Standard]
 **fallbackGeo** | **NSNumber***| Specifies whether to attempt to determine a geographic region centroid when an address-level geocode cannot be determined. | [optional] [default to true]
 **fallbackPostal** | **NSNumber***| Specifies whether to attempt to determine a post code centroid when an address-level geocode cannot be determined. | [optional] [default to true]
 **maxCands** | **NSNumber***| The maximum number of candidates to return. | [optional] [default to 1]
 **streetOffset** | **NSNumber***| Indicates the offset distance from the street segments to use in street-level geocoding. | [optional] [default to 7]
 **streetOffsetUnits** | **NSString***| Specifies the unit of measurement for the street offset. | [optional] [default to METERS]
 **cornerOffset** | **NSNumber***| Specifies the distance to offset the street end points in street-level matching. | [optional] [default to 7]
 **cornerOffsetUnits** | **NSString***| Specifies the unit of measurement for the corner offset. | [optional] [default to METERS]

### Return type

[**PBGeocodeServiceResponse***](PBGeocodeServiceResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **geocodeBatch**
```objc
-(NSNumber*) geocodeBatchWithBody: (PBGeocodeRequest*) body
    datapackBundle: (NSString*) datapackBundle
        completionHandler: (void (^)(PBGeocodeServiceResponseList* output, NSError* error)) handler;
```

Post Forward Geocode

This is a Batch offering for geocode service. It accepts a single address or a list of addresses and returns location coordinates.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBGeocodeRequest* body = [[PBGeocodeRequest alloc] init]; // Geocode Request Object
NSString* datapackBundle = @"datapackBundle_example"; // value of datapackBundle

PBGeocodeServiceApi*apiInstance = [[PBGeocodeServiceApi alloc] init];

// Post Forward Geocode
[apiInstance geocodeBatchWithBody:body
              datapackBundle:datapackBundle
          completionHandler: ^(PBGeocodeServiceResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBGeocodeServiceApi->geocodeBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBGeocodeRequest***](PBGeocodeRequest*.md)| Geocode Request Object | 
 **datapackBundle** | **NSString***| value of datapackBundle | 

### Return type

[**PBGeocodeServiceResponseList***](PBGeocodeServiceResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCapabilities**
```objc
-(NSNumber*) getCapabilitiesWithDatapackBundle: (NSString*) datapackBundle
    operation: (NSString*) operation
    country: (NSString*) country
        completionHandler: (void (^)(PBGeocodeCapabilitiesResponse* output, NSError* error)) handler;
```

Get Capabilities

Get Capabilities  of Geocode API

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* datapackBundle = @"datapackBundle_example"; // value of datapackBundle
NSString* operation = @"geocode"; // Geocode or ReverseGeocode Operation. (optional) (default to geocode)
NSString* country = @"USA"; // Country name or ISO code. (optional) (default to USA)

PBGeocodeServiceApi*apiInstance = [[PBGeocodeServiceApi alloc] init];

// Get Capabilities
[apiInstance getCapabilitiesWithDatapackBundle:datapackBundle
              operation:operation
              country:country
          completionHandler: ^(PBGeocodeCapabilitiesResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBGeocodeServiceApi->getCapabilities: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datapackBundle** | **NSString***| value of datapackBundle | 
 **operation** | **NSString***| Geocode or ReverseGeocode Operation. | [optional] [default to geocode]
 **country** | **NSString***| Country name or ISO code. | [optional] [default to USA]

### Return type

[**PBGeocodeCapabilitiesResponse***](PBGeocodeCapabilitiesResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDictionaries**
```objc
-(NSNumber*) getDictionariesWithDatapackBundle: (NSString*) datapackBundle
    country: (NSString*) country
        completionHandler: (void (^)(PBConfiguredDictionaryResponse* output, NSError* error)) handler;
```

Get installed Dictionaries

Get installed Dictionaries

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* datapackBundle = @"datapackBundle_example"; // value of datapackBundle
NSString* country = @"USA"; // Three Letter ISO Country code (optional) (default to USA)

PBGeocodeServiceApi*apiInstance = [[PBGeocodeServiceApi alloc] init];

// Get installed Dictionaries
[apiInstance getDictionariesWithDatapackBundle:datapackBundle
              country:country
          completionHandler: ^(PBConfiguredDictionaryResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBGeocodeServiceApi->getDictionaries: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datapackBundle** | **NSString***| value of datapackBundle | 
 **country** | **NSString***| Three Letter ISO Country code | [optional] [default to USA]

### Return type

[**PBConfiguredDictionaryResponse***](PBConfiguredDictionaryResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPreciselyID**
```objc
-(NSNumber*) getPreciselyIDWithAddress: (NSString*) address
    country: (NSString*) country
        completionHandler: (void (^)(PBPBKeyResponse* output, NSError* error)) handler;
```

Get PreciselyID By Address

This service accepts an address and returns the corresponding PreciselyID.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // free form address text
NSString* country = @"country_example"; // Country ISO code. (optional)

PBGeocodeServiceApi*apiInstance = [[PBGeocodeServiceApi alloc] init];

// Get PreciselyID By Address
[apiInstance getPreciselyIDWithAddress:address
              country:country
          completionHandler: ^(PBPBKeyResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBGeocodeServiceApi->getPreciselyID: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| free form address text | 
 **country** | **NSString***| Country ISO code. | [optional] 

### Return type

[**PBPBKeyResponse***](PBPBKeyResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPreciselyIDs**
```objc
-(NSNumber*) getPreciselyIDsWithBody: (PBPBKeyAddressRequest*) body
        completionHandler: (void (^)(PBPBKeyResponseList* output, NSError* error)) handler;
```

Post PreciselyID By Address

This is a Batch offering for 'PreciselyID By Address' service. It accepts a single address or a list of addresses and returns the corresponding PreciselyID.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBPBKeyAddressRequest* body = [[PBPBKeyAddressRequest alloc] init]; // 

PBGeocodeServiceApi*apiInstance = [[PBGeocodeServiceApi alloc] init];

// Post PreciselyID By Address
[apiInstance getPreciselyIDsWithBody:body
          completionHandler: ^(PBPBKeyResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBGeocodeServiceApi->getPreciselyIDs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBPBKeyAddressRequest***](PBPBKeyAddressRequest*.md)|  | 

### Return type

[**PBPBKeyResponseList***](PBPBKeyResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyLookup**
```objc
-(NSNumber*) keyLookupWithKey: (NSString*) key
    type: (NSString*) type
    country: (NSString*) country
        completionHandler: (void (^)(PBGeocodeServiceResponse* output, NSError* error)) handler;
```

Get Key Lookup

This service accepts a PreciselyID and returns the corresponding address associated with that PreciselyID.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* key = @"key_example"; // free form text
NSString* type = @"type_example"; //  (optional)
NSString* country = @"country_example"; //  (optional)

PBGeocodeServiceApi*apiInstance = [[PBGeocodeServiceApi alloc] init];

// Get Key Lookup
[apiInstance keyLookupWithKey:key
              type:type
              country:country
          completionHandler: ^(PBGeocodeServiceResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBGeocodeServiceApi->keyLookup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **NSString***| free form text | 
 **type** | **NSString***|  | [optional] 
 **country** | **NSString***|  | [optional] 

### Return type

[**PBGeocodeServiceResponse***](PBGeocodeServiceResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyLookupBatch**
```objc
-(NSNumber*) keyLookupBatchWithBody: (PBKeyLookupRequest*) body
        completionHandler: (void (^)(PBGeocodeServiceResponseList* output, NSError* error)) handler;
```

Post Key Lookup

This service accepts batches of PreciselyID's and returns the corresponding address associated with those PreciselyID's.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBKeyLookupRequest* body = [[PBKeyLookupRequest alloc] init]; //  (optional)

PBGeocodeServiceApi*apiInstance = [[PBGeocodeServiceApi alloc] init];

// Post Key Lookup
[apiInstance keyLookupBatchWithBody:body
          completionHandler: ^(PBGeocodeServiceResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBGeocodeServiceApi->keyLookupBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PBKeyLookupRequest***](PBKeyLookupRequest*.md)|  | [optional] 

### Return type

[**PBGeocodeServiceResponseList***](PBGeocodeServiceResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reverseGeocodBatch**
```objc
-(NSNumber*) reverseGeocodBatchWithDatapackBundle: (NSString*) datapackBundle
    body: (PBReverseGeocodeRequest*) body
        completionHandler: (void (^)(PBGeocodeServiceResponseList* output, NSError* error)) handler;
```

Post Reverse Geocode

It accepts a single location coordinate or a list of location coordinates and returns addresses.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* datapackBundle = @"datapackBundle_example"; // value of datapackBundle
PBReverseGeocodeRequest* body = [[PBReverseGeocodeRequest alloc] init]; // Request for Reverse Geocode (optional)

PBGeocodeServiceApi*apiInstance = [[PBGeocodeServiceApi alloc] init];

// Post Reverse Geocode
[apiInstance reverseGeocodBatchWithDatapackBundle:datapackBundle
              body:body
          completionHandler: ^(PBGeocodeServiceResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBGeocodeServiceApi->reverseGeocodBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datapackBundle** | **NSString***| value of datapackBundle | 
 **body** | [**PBReverseGeocodeRequest***](PBReverseGeocodeRequest*.md)| Request for Reverse Geocode | [optional] 

### Return type

[**PBGeocodeServiceResponseList***](PBGeocodeServiceResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reverseGeocode**
```objc
-(NSNumber*) reverseGeocodeWithDatapackBundle: (NSString*) datapackBundle
    x: (NSNumber*) x
    y: (NSNumber*) y
    country: (NSString*) country
    coordSysName: (NSString*) coordSysName
    distance: (NSNumber*) distance
    distanceUnits: (NSString*) distanceUnits
        completionHandler: (void (^)(PBGeocodeServiceResponse* output, NSError* error)) handler;
```

Get Reverse Geocode

This service accepts location coordinate and returns an address.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* datapackBundle = @"datapackBundle_example"; // value of datapackBundle
NSNumber* x = @-105.240976; // Longitude of the location. (default to -105.240976)
NSNumber* y = @40.018301; // Latitude of the location. (default to 40.018301)
NSString* country = @"country_example"; // Country name or ISO code. (optional)
NSString* coordSysName = @"EPSG:4326"; // Coordinate system to convert geometry to in format codespace:code. (optional) (default to EPSG:4326)
NSNumber* distance = @150; // Radius in which search is performed. (optional) (default to 150)
NSString* distanceUnits = @"METERS"; // Unit of measurement. (optional) (default to METERS)

PBGeocodeServiceApi*apiInstance = [[PBGeocodeServiceApi alloc] init];

// Get Reverse Geocode
[apiInstance reverseGeocodeWithDatapackBundle:datapackBundle
              x:x
              y:y
              country:country
              coordSysName:coordSysName
              distance:distance
              distanceUnits:distanceUnits
          completionHandler: ^(PBGeocodeServiceResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBGeocodeServiceApi->reverseGeocode: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datapackBundle** | **NSString***| value of datapackBundle | 
 **x** | **NSNumber***| Longitude of the location. | [default to -105.240976]
 **y** | **NSNumber***| Latitude of the location. | [default to 40.018301]
 **country** | **NSString***| Country name or ISO code. | [optional] 
 **coordSysName** | **NSString***| Coordinate system to convert geometry to in format codespace:code. | [optional] [default to EPSG:4326]
 **distance** | **NSNumber***| Radius in which search is performed. | [optional] [default to 150]
 **distanceUnits** | **NSString***| Unit of measurement. | [optional] [default to METERS]

### Return type

[**PBGeocodeServiceResponse***](PBGeocodeServiceResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

