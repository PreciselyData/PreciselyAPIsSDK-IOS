# PBTimeZoneServiceApi

All URIs are relative to *https://api.precisely.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBatchTimezoneByLocation**](PBTimeZoneServiceApi.md#getbatchtimezonebylocation) | **POST** /timezone/v1/timezone/bylocation | Timezone Batch by Location.
[**getTimezoneByAddress**](PBTimeZoneServiceApi.md#gettimezonebyaddress) | **GET** /timezone/v1/timezone/byaddress | Timezone By Address.
[**getTimezoneByAddressBatch**](PBTimeZoneServiceApi.md#gettimezonebyaddressbatch) | **POST** /timezone/v1/timezone/byaddress | Timezone Batch by Address.
[**getTimezoneByLocation**](PBTimeZoneServiceApi.md#gettimezonebylocation) | **GET** /timezone/v1/timezone/bylocation | Timezone By Location.


# **getBatchTimezoneByLocation**
```objc
-(NSURLSessionTask*) getBatchTimezoneByLocationWithTimezoneLocationRequest: (PBTimezoneLocationRequest*) timezoneLocationRequest
        completionHandler: (void (^)(PBTimezoneResponseList* output, NSError* error)) handler;
```

Timezone Batch by Location.

Identifies and retrieves the local time of any location in the world for a given latitude, longitude and time. The input and retrieved time format is in milliseconds.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBTimezoneLocationRequest* timezoneLocationRequest = [[PBTimezoneLocationRequest alloc] init]; // 

PBTimeZoneServiceApi*apiInstance = [[PBTimeZoneServiceApi alloc] init];

// Timezone Batch by Location.
[apiInstance getBatchTimezoneByLocationWithTimezoneLocationRequest:timezoneLocationRequest
          completionHandler: ^(PBTimezoneResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBTimeZoneServiceApi->getBatchTimezoneByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timezoneLocationRequest** | [**PBTimezoneLocationRequest***](PBTimezoneLocationRequest.md)|  | 

### Return type

[**PBTimezoneResponseList***](PBTimezoneResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTimezoneByAddress**
```objc
-(NSURLSessionTask*) getTimezoneByAddressWithTimestamp: (NSString*) timestamp
    address: (NSString*) address
    matchMode: (NSString*) matchMode
    country: (NSString*) country
        completionHandler: (void (^)(PBTimezoneResponse* output, NSError* error)) handler;
```

Timezone By Address.

Identifies and retrieves the local time of any location in the world for a given address and time. The input and retrieved time format is in milliseconds.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* timestamp = @"timestamp_example"; // Timestamp in miliseconds.
NSString* address = @"address_example"; // The address to be searched.
NSString* matchMode = Relaxed; // Match modes determine the leniency used to make a match between the input address and the reference data (Default is relaxed) (optional)
NSString* country = USA; // Country ISO code (Default is USA) (optional)

PBTimeZoneServiceApi*apiInstance = [[PBTimeZoneServiceApi alloc] init];

// Timezone By Address.
[apiInstance getTimezoneByAddressWithTimestamp:timestamp
              address:address
              matchMode:matchMode
              country:country
          completionHandler: ^(PBTimezoneResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBTimeZoneServiceApi->getTimezoneByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **NSString***| Timestamp in miliseconds. | 
 **address** | **NSString***| The address to be searched. | 
 **matchMode** | **NSString***| Match modes determine the leniency used to make a match between the input address and the reference data (Default is relaxed) | [optional] 
 **country** | **NSString***| Country ISO code (Default is USA) | [optional] 

### Return type

[**PBTimezoneResponse***](PBTimezoneResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTimezoneByAddressBatch**
```objc
-(NSURLSessionTask*) getTimezoneByAddressBatchWithTimezoneAddressRequest: (PBTimezoneAddressRequest*) timezoneAddressRequest
        completionHandler: (void (^)(PBTimezoneResponseList* output, NSError* error)) handler;
```

Timezone Batch by Address.

Identifies and retrieves the local time of any location in the world for a given address and time. The input and retrieved time format is in milliseconds.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBTimezoneAddressRequest* timezoneAddressRequest = [[PBTimezoneAddressRequest alloc] init]; // 

PBTimeZoneServiceApi*apiInstance = [[PBTimeZoneServiceApi alloc] init];

// Timezone Batch by Address.
[apiInstance getTimezoneByAddressBatchWithTimezoneAddressRequest:timezoneAddressRequest
          completionHandler: ^(PBTimezoneResponseList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBTimeZoneServiceApi->getTimezoneByAddressBatch: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timezoneAddressRequest** | [**PBTimezoneAddressRequest***](PBTimezoneAddressRequest.md)|  | 

### Return type

[**PBTimezoneResponseList***](PBTimezoneResponseList.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTimezoneByLocation**
```objc
-(NSURLSessionTask*) getTimezoneByLocationWithTimestamp: (NSString*) timestamp
    longitude: (NSString*) longitude
    latitude: (NSString*) latitude
        completionHandler: (void (^)(PBTimezoneResponse* output, NSError* error)) handler;
```

Timezone By Location.

Identifies and retrieves the local time of any location in the world for a given latitude, longitude and time. The input and retrieved time format is in milliseconds.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* timestamp = @"timestamp_example"; // Timestamp in miliseconds.
NSString* longitude = @"longitude_example"; // Longitude of the location.
NSString* latitude = @"latitude_example"; // Latitude of the location.

PBTimeZoneServiceApi*apiInstance = [[PBTimeZoneServiceApi alloc] init];

// Timezone By Location.
[apiInstance getTimezoneByLocationWithTimestamp:timestamp
              longitude:longitude
              latitude:latitude
          completionHandler: ^(PBTimezoneResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBTimeZoneServiceApi->getTimezoneByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timestamp** | **NSString***| Timestamp in miliseconds. | 
 **longitude** | **NSString***| Longitude of the location. | 
 **latitude** | **NSString***| Latitude of the location. | 

### Return type

[**PBTimezoneResponse***](PBTimezoneResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

