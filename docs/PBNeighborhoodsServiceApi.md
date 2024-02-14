# PBNeighborhoodsServiceApi

All URIs are relative to *https://api.precisely.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPlaceByLocation**](PBNeighborhoodsServiceApi.md#getplacebylocation) | **GET** /neighborhoods/v1/place/bylocation | Place By Location.


# **getPlaceByLocation**
```objc
-(NSURLSessionTask*) getPlaceByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    levelHint: (NSString*) levelHint
        completionHandler: (void (^)(PBNeighborhoodsResponse* output, NSError* error)) handler;
```

Place By Location.

Identifies and retrieves the nearest neighborhood around a specific location. This service accepts latitude & longitude as input and returns a place name.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of the location. (optional)
NSString* latitude = @"latitude_example"; // Latitude of the location. (optional)
NSString* levelHint = @"levelHint_example"; // Numeric code of geographic hierarchy level which is classified at six levels.Allowed values 1,2,3,4,5,6 (optional)

PBNeighborhoodsServiceApi*apiInstance = [[PBNeighborhoodsServiceApi alloc] init];

// Place By Location.
[apiInstance getPlaceByLocationWithLongitude:longitude
              latitude:latitude
              levelHint:levelHint
          completionHandler: ^(PBNeighborhoodsResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBNeighborhoodsServiceApi->getPlaceByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of the location. | [optional] 
 **latitude** | **NSString***| Latitude of the location. | [optional] 
 **levelHint** | **NSString***| Numeric code of geographic hierarchy level which is classified at six levels.Allowed values 1,2,3,4,5,6 | [optional] 

### Return type

[**PBNeighborhoodsResponse***](PBNeighborhoodsResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

