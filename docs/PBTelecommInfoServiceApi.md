# PBTelecommInfoServiceApi

All URIs are relative to *https://api.precisely.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRateCenterByAddress**](PBTelecommInfoServiceApi.md#getratecenterbyaddress) | **GET** /telecomm/v1/ratecenter/byaddress | Rate Center By Address.
[**getRateCenterByLocation**](PBTelecommInfoServiceApi.md#getratecenterbylocation) | **GET** /telecomm/v1/ratecenter/bylocation | Rate Center By Location.


# **getRateCenterByAddress**
```objc
-(NSURLSessionTask*) getRateCenterByAddressWithAddress: (NSString*) address
    country: (NSString*) country
    areaCodeInfo: (NSString*) areaCodeInfo
    level: (NSString*) level
        completionHandler: (void (^)(PBRateCenterResponse* output, NSError* error)) handler;
```

Rate Center By Address.

Accepts addresses as input and returns Incumbent Local Exchange Carrier (ILEC) doing-business-as names.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // The address to be searched (optional)
NSString* country = @"country_example"; // 3 letter ISO code of the country to be searched. Allowed values USA,CAN (optional)
NSString* areaCodeInfo = @"areaCodeInfo_example"; // Specifies whether area code information will be part of response.Allowed values True,False. (optional)
NSString* level = @"level_example"; // Level (basic/detail).Allowed values detail,basic. (optional)

PBTelecommInfoServiceApi*apiInstance = [[PBTelecommInfoServiceApi alloc] init];

// Rate Center By Address.
[apiInstance getRateCenterByAddressWithAddress:address
              country:country
              areaCodeInfo:areaCodeInfo
              level:level
          completionHandler: ^(PBRateCenterResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBTelecommInfoServiceApi->getRateCenterByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| The address to be searched | [optional] 
 **country** | **NSString***| 3 letter ISO code of the country to be searched. Allowed values USA,CAN | [optional] 
 **areaCodeInfo** | **NSString***| Specifies whether area code information will be part of response.Allowed values True,False. | [optional] 
 **level** | **NSString***| Level (basic/detail).Allowed values detail,basic. | [optional] 

### Return type

[**PBRateCenterResponse***](PBRateCenterResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRateCenterByLocation**
```objc
-(NSURLSessionTask*) getRateCenterByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    areaCodeInfo: (NSString*) areaCodeInfo
    level: (NSString*) level
        completionHandler: (void (^)(PBRateCenterResponse* output, NSError* error)) handler;
```

Rate Center By Location.

Accepts latitude & longitude as input and returns Incumbent Local Exchange Carrier (ILEC) doing-business-as names.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of the location (optional)
NSString* latitude = @"latitude_example"; // Latitude of the location (optional)
NSString* areaCodeInfo = @"areaCodeInfo_example"; // Specifies whether area code information will be part of response.Allowed values True,False. (optional)
NSString* level = @"level_example"; // Level (basic/detail).Allowed values detail,basic. (optional)

PBTelecommInfoServiceApi*apiInstance = [[PBTelecommInfoServiceApi alloc] init];

// Rate Center By Location.
[apiInstance getRateCenterByLocationWithLongitude:longitude
              latitude:latitude
              areaCodeInfo:areaCodeInfo
              level:level
          completionHandler: ^(PBRateCenterResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBTelecommInfoServiceApi->getRateCenterByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of the location | [optional] 
 **latitude** | **NSString***| Latitude of the location | [optional] 
 **areaCodeInfo** | **NSString***| Specifies whether area code information will be part of response.Allowed values True,False. | [optional] 
 **level** | **NSString***| Level (basic/detail).Allowed values detail,basic. | [optional] 

### Return type

[**PBRateCenterResponse***](PBRateCenterResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

