# PBGeocodeServiceApi

All URIs are relative to *https://api.precisely.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**geocode**](PBGeocodeServiceApi.md#geocode) | **GET** /geocode/v1/{datapackBundle}/geocode | Get Forward Geocode(Basic/Premium/Advanced)
[**geocodeBatch**](PBGeocodeServiceApi.md#geocodebatch) | **POST** /geocode/v1/{datapackBundle}/geocode | Post Forward Geocode
[**getPBKey**](PBGeocodeServiceApi.md#getpbkey) | **GET** /geocode/v1/key/byaddress | Get PreciselyID By Address
[**getPBKeys**](PBGeocodeServiceApi.md#getpbkeys) | **POST** /geocode/v1/key/byaddress | Post PreciselyID By Address
[**keyLookup**](PBGeocodeServiceApi.md#keylookup) | **GET** /geocode/v1/keylookup | Get Key Lookup
[**keyLookupBatch**](PBGeocodeServiceApi.md#keylookupbatch) | **POST** /geocode/v1/keylookup | Post Key Lookup
[**reverseGeocodBatch**](PBGeocodeServiceApi.md#reversegeocodbatch) | **POST** /geocode/v1/{datapackBundle}/reverseGeocode | Post Reverse Geocode
[**reverseGeocode**](PBGeocodeServiceApi.md#reversegeocode) | **GET** /geocode/v1/{datapackBundle}/reverseGeocode | Get Reverse Geocode(Basic/Premium/Advanced)


# **geocode**
```objc
-(NSURLSessionTask*) geocodeWithDatapackBundle: (NSString*) datapackBundle
    country: (NSString*) country
    mainAddress: (NSString*) mainAddress
    matchMode: (NSString*) matchMode
    fallbackGeo: (NSString*) fallbackGeo
    fallbackPostal: (NSString*) fallbackPostal
    maxCands: (NSString*) maxCands
    streetOffset: (NSString*) streetOffset
    streetOffsetUnits: (NSString*) streetOffsetUnits
    cornerOffset: (NSString*) cornerOffset
    cornerOffsetUnits: (NSString*) cornerOffsetUnits
    removeAccentMarks: (NSString*) removeAccentMarks
    findDPV: (NSString*) findDPV
        completionHandler: (void (^)(PBGeocodeServiceResponse* output, NSError* error)) handler;
```

Get Forward Geocode(Basic/Premium/Advanced)

This service accepts an address and returns the location coordinates corresponding to that address. Premium offers the best accuracy and is a high precision geocoder leveraging Master Location Data - geocodes to Street or building level. Advanced offers advanced accuracy and geocodes to Street level.Basic offering will geocode to a Place or Postal level. Good accuracy.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* datapackBundle = @"datapackBundle_example"; // datapackBundle
NSString* country = @"USA"; // Country name or ISO code. (optional) (default to @"USA")
NSString* mainAddress = @"4750 Walnut St., Boulder CO, 80301"; // Single line input, treated as collection of field elements. (optional) (default to @"4750 Walnut St., Boulder CO, 80301")
NSString* matchMode = @"Standard"; // Match modes determine the leniency used to make a match between the input address and the reference data. (optional) (default to @"Standard")
NSString* fallbackGeo = @"true"; // Specifies whether to attempt to determine a geographic region centroid when an address-level geocode cannot be determined. (optional) (default to @"true")
NSString* fallbackPostal = @"true"; // Specifies whether to attempt to determine a post code centroid when an address-level geocode cannot be determined. (optional) (default to @"true")
NSString* maxCands = @"1"; // The maximum number of candidates to return. (optional) (default to @"1")
NSString* streetOffset = @"7"; // Indicates the offset distance from the street segments to use in street-level geocoding. (optional) (default to @"7")
NSString* streetOffsetUnits = @"METERS"; // Specifies the unit of measurement for the street offset. (optional) (default to @"METERS")
NSString* cornerOffset = @"7"; // Specifies the distance to offset the street end points in street-level matching. (optional) (default to @"7")
NSString* cornerOffsetUnits = @"METERS"; // Specifies the unit of measurement for the corner offset. (optional) (default to @"METERS")
NSString* removeAccentMarks = @"false"; // Specifies whether to Suppress accents and other diacritical marks. (optional) (default to @"false")
NSString* findDPV = @"false"; // Specifies if Delivery Point Validation is required. Note: This parameter is only applicable for USA addresses. (optional) (default to @"false")

PBGeocodeServiceApi*apiInstance = [[PBGeocodeServiceApi alloc] init];

// Get Forward Geocode(Basic/Premium/Advanced)
[apiInstance geocodeWithDatapackBundle:datapackBundle
              country:country
              mainAddress:mainAddress
              matchMode:matchMode
              fallbackGeo:fallbackGeo
              fallbackPostal:fallbackPostal
              maxCands:maxCands
              streetOffset:streetOffset
              streetOffsetUnits:streetOffsetUnits
              cornerOffset:cornerOffset
              cornerOffsetUnits:cornerOffsetUnits
              removeAccentMarks:removeAccentMarks
              findDPV:findDPV
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
 **datapackBundle** | **NSString***| datapackBundle | 
 **country** | **NSString***| Country name or ISO code. | [optional] [default to @&quot;USA&quot;]
 **mainAddress** | **NSString***| Single line input, treated as collection of field elements. | [optional] [default to @&quot;4750 Walnut St., Boulder CO, 80301&quot;]
 **matchMode** | **NSString***| Match modes determine the leniency used to make a match between the input address and the reference data. | [optional] [default to @&quot;Standard&quot;]
 **fallbackGeo** | **NSString***| Specifies whether to attempt to determine a geographic region centroid when an address-level geocode cannot be determined. | [optional] [default to @&quot;true&quot;]
 **fallbackPostal** | **NSString***| Specifies whether to attempt to determine a post code centroid when an address-level geocode cannot be determined. | [optional] [default to @&quot;true&quot;]
 **maxCands** | **NSString***| The maximum number of candidates to return. | [optional] [default to @&quot;1&quot;]
 **streetOffset** | **NSString***| Indicates the offset distance from the street segments to use in street-level geocoding. | [optional] [default to @&quot;7&quot;]
 **streetOffsetUnits** | **NSString***| Specifies the unit of measurement for the street offset. | [optional] [default to @&quot;METERS&quot;]
 **cornerOffset** | **NSString***| Specifies the distance to offset the street end points in street-level matching. | [optional] [default to @&quot;7&quot;]
 **cornerOffsetUnits** | **NSString***| Specifies the unit of measurement for the corner offset. | [optional] [default to @&quot;METERS&quot;]
 **removeAccentMarks** | **NSString***| Specifies whether to Suppress accents and other diacritical marks. | [optional] [default to @&quot;false&quot;]
 **findDPV** | **NSString***| Specifies if Delivery Point Validation is required. Note: This parameter is only applicable for USA addresses. | [optional] [default to @&quot;false&quot;]

### Return type

[**PBGeocodeServiceResponse***](PBGeocodeServiceResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **geocodeBatch**
```objc
-(NSURLSessionTask*) geocodeBatchWithDatapackBundle: (NSString*) datapackBundle
    geocodeRequest: (PBGeocodeRequest*) geocodeRequest
        completionHandler: (void (^)(PBGeocodeServiceResponseList* output, NSError* error)) handler;
```

Post Forward Geocode

This is a Batch offering for geocode service. It accepts a single address or a list of addresses and returns location coordinates

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* datapackBundle = @"datapackBundle_example"; // 
PBGeocodeRequest* geocodeRequest = [[PBGeocodeRequest alloc] init]; // 

PBGeocodeServiceApi*apiInstance = [[PBGeocodeServiceApi alloc] init];

// Post Forward Geocode
[apiInstance geocodeBatchWithDatapackBundle:datapackBundle
              geocodeRequest:geocodeRequest
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
 **datapackBundle** | **NSString***|  | 
 **geocodeRequest** | [**PBGeocodeRequest***](PBGeocodeRequest.md)|  | 

### Return type

[**PBGeocodeServiceResponseList***](PBGeocodeServiceResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPBKey**
```objc
-(NSURLSessionTask*) getPBKeyWithAddress: (NSString*) address
    country: (NSString*) country
        completionHandler: (void (^)(PBPBKeyResponse* output, NSError* error)) handler;
```

Get PreciselyID By Address

This service accepts an address and returns the corresponding PreciselyID

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // The address to be searched.
NSString* country = @"country_example"; // 3 letter ISO code of the country to be searched. (optional)

PBGeocodeServiceApi*apiInstance = [[PBGeocodeServiceApi alloc] init];

// Get PreciselyID By Address
[apiInstance getPBKeyWithAddress:address
              country:country
          completionHandler: ^(PBPBKeyResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBGeocodeServiceApi->getPBKey: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| The address to be searched. | 
 **country** | **NSString***| 3 letter ISO code of the country to be searched. | [optional] 

### Return type

[**PBPBKeyResponse***](PBPBKeyResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPBKeys**
```objc
-(NSURLSessionTask*) getPBKeysWithPBKeyAddressRequest: (PBPBKeyAddressRequest*) pBKeyAddressRequest
        completionHandler: (void (^)(PBPBKeyResponseList* output, NSError* error)) handler;
```

Post PreciselyID By Address

This is a Batch offering for 'PreciselyID By Address' service. It accepts a single address or a list of addresses and returns the corresponding PreciselyID.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBPBKeyAddressRequest* pBKeyAddressRequest = [[PBPBKeyAddressRequest alloc] init]; // 

PBGeocodeServiceApi*apiInstance = [[PBGeocodeServiceApi alloc] init];

// Post PreciselyID By Address
[apiInstance getPBKeysWithPBKeyAddressRequest:pBKeyAddressRequest
          completionHandler: ^(PBPBKeyResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBGeocodeServiceApi->getPBKeys: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pBKeyAddressRequest** | [**PBPBKeyAddressRequest***](PBPBKeyAddressRequest.md)|  | 

### Return type

[**PBPBKeyResponseList***](PBPBKeyResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyLookup**
```objc
-(NSURLSessionTask*) keyLookupWithKey: (NSString*) key
    type: (NSString*) type
    country: (NSString*) country
        completionHandler: (void (^)(PBGeocodeServiceResponse* output, NSError* error)) handler;
```

Get Key Lookup

This service accepts a PreciselyID and returns the corresponding address associated with that PreciselyID.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* key = @"key_example"; // PreciselyID which maps to a unique address.
NSString* type = @"type_example"; // Specifies the key type - PreciselyID and GNAF_PID for Aus.
NSString* country = @"country_example"; // 3 letter ISO code of the country to be searched. (optional)

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
 **key** | **NSString***| PreciselyID which maps to a unique address. | 
 **type** | **NSString***| Specifies the key type - PreciselyID and GNAF_PID for Aus. | 
 **country** | **NSString***| 3 letter ISO code of the country to be searched. | [optional] 

### Return type

[**PBGeocodeServiceResponse***](PBGeocodeServiceResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **keyLookupBatch**
```objc
-(NSURLSessionTask*) keyLookupBatchWithKeyLookupRequest: (PBKeyLookupRequest*) keyLookupRequest
        completionHandler: (void (^)(PBGeocodeServiceResponseList* output, NSError* error)) handler;
```

Post Key Lookup

This service accepts batches of PreciselyID's and returns the corresponding address associated with those PreciselyID's.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBKeyLookupRequest* keyLookupRequest = [[PBKeyLookupRequest alloc] init]; // 

PBGeocodeServiceApi*apiInstance = [[PBGeocodeServiceApi alloc] init];

// Post Key Lookup
[apiInstance keyLookupBatchWithKeyLookupRequest:keyLookupRequest
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
 **keyLookupRequest** | [**PBKeyLookupRequest***](PBKeyLookupRequest.md)|  | 

### Return type

[**PBGeocodeServiceResponseList***](PBGeocodeServiceResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reverseGeocodBatch**
```objc
-(NSURLSessionTask*) reverseGeocodBatchWithDatapackBundle: (NSString*) datapackBundle
    reverseGeocodeRequest: (PBReverseGeocodeRequest*) reverseGeocodeRequest
        completionHandler: (void (^)(PBGeocodeServiceResponseList* output, NSError* error)) handler;
```

Post Reverse Geocode

This is a Batch offering for geocode service. It accepts a single address or a list of addresses and returns location coordinates

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* datapackBundle = @"datapackBundle_example"; // 
PBReverseGeocodeRequest* reverseGeocodeRequest = [[PBReverseGeocodeRequest alloc] init]; // 

PBGeocodeServiceApi*apiInstance = [[PBGeocodeServiceApi alloc] init];

// Post Reverse Geocode
[apiInstance reverseGeocodBatchWithDatapackBundle:datapackBundle
              reverseGeocodeRequest:reverseGeocodeRequest
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
 **datapackBundle** | **NSString***|  | 
 **reverseGeocodeRequest** | [**PBReverseGeocodeRequest***](PBReverseGeocodeRequest.md)|  | 

### Return type

[**PBGeocodeServiceResponseList***](PBGeocodeServiceResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reverseGeocode**
```objc
-(NSURLSessionTask*) reverseGeocodeWithDatapackBundle: (NSString*) datapackBundle
    x: (NSString*) x
    y: (NSString*) y
    country: (NSString*) country
    coordSysName: (NSString*) coordSysName
    distance: (NSString*) distance
    distanceUnits: (NSString*) distanceUnits
        completionHandler: (void (^)(PBGeocodeServiceResponse* output, NSError* error)) handler;
```

Get Reverse Geocode(Basic/Premium/Advanced)

This service accepts location coordinate and returns an address.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* datapackBundle = @"datapackBundle_example"; // datapackBundle
NSString* x = @"-105.240976"; // Longitude of the location. (default to @"-105.240976")
NSString* y = @"40.018301"; // Latitude of the location. (default to @"40.018301")
NSString* country = @"country_example"; // Country name or ISO code. (optional)
NSString* coordSysName = @"EPSG:4326"; // Coordinate system to convert geometry to in format codespace:code. (optional) (default to @"EPSG:4326")
NSString* distance = @"Radius in which search is performed."; // Radius in which search is performed. (optional) (default to @"Radius in which search is performed.")
NSString* distanceUnits = @"METERS"; // Unit of measurement. (optional) (default to @"METERS")

PBGeocodeServiceApi*apiInstance = [[PBGeocodeServiceApi alloc] init];

// Get Reverse Geocode(Basic/Premium/Advanced)
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
 **datapackBundle** | **NSString***| datapackBundle | 
 **x** | **NSString***| Longitude of the location. | [default to @&quot;-105.240976&quot;]
 **y** | **NSString***| Latitude of the location. | [default to @&quot;40.018301&quot;]
 **country** | **NSString***| Country name or ISO code. | [optional] 
 **coordSysName** | **NSString***| Coordinate system to convert geometry to in format codespace:code. | [optional] [default to @&quot;EPSG:4326&quot;]
 **distance** | **NSString***| Radius in which search is performed. | [optional] [default to @&quot;Radius in which search is performed.&quot;]
 **distanceUnits** | **NSString***| Unit of measurement. | [optional] [default to @&quot;METERS&quot;]

### Return type

[**PBGeocodeServiceResponse***](PBGeocodeServiceResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

