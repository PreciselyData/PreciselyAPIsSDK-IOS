# PBDemographicsServiceApi

All URIs are relative to *https://api.precisely.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDemographicsByAddressV2**](PBDemographicsServiceApi.md#getdemographicsbyaddressv2) | **GET** /demographics-segmentation/v1/demographics/byaddress | Demographics By Address.
[**getDemographicsByLocationV2**](PBDemographicsServiceApi.md#getdemographicsbylocationv2) | **GET** /demographics-segmentation/v1/demographics/bylocation | Demographics By Location.
[**getSegmentationByAddress**](PBDemographicsServiceApi.md#getsegmentationbyaddress) | **GET** /demographics-segmentation/v1/segmentation/byaddress | Segmentation By Address.
[**getSegmentationByLocation**](PBDemographicsServiceApi.md#getsegmentationbylocation) | **GET** /demographics-segmentation/v1/segmentation/bylocation | Segmentation By Location.


# **getDemographicsByAddressV2**
```objc
-(NSNumber*) getDemographicsByAddressV2WithAddress: (NSString*) address
    country: (NSString*) country
    profile: (NSString*) profile
    filter: (NSString*) filter
    valueFormat: (NSString*) valueFormat
    variableLevel: (NSString*) variableLevel
        completionHandler: (void (^)(PBDemographicsV2* output, NSError* error)) handler;
```

Demographics By Address.

Provides the demographic details around a specified address. GeoLife 'byaddress' service accepts address as an input to return a specific population segment's age group, ethnicity, income, purchasing behaviour, commuter patterns and more.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // The address to be searched.
NSString* country = @"country_example"; // 3 letter ISO code of the country to be searched.Allowed values USA,CAN,GBR,AUS. (optional)
NSString* profile = @"profile_example"; // Retrieves the sorted demographic data on the basis of pre-defined profiles that can display the top 3 or top 5 results (by address) either in ascending or descending order.Allowed values Top5Ascending,Top5Descending,Top3Ascending,Top3Descending (optional)
NSString* filter = @"filter_example"; // The 'filter' parameter retrieves the demographic data based upon specified input themes. (optional)
NSString* valueFormat = @"PercentAsAvailable"; // The 'valueFormat' parameter is applicable for few ranged variables where percent & count both are available and filter response based on the input value. (optional) (default to PercentAsAvailable)
NSString* variableLevel = @"Key"; // The 'variableLevel' retrieves demographic facts in response based on the input value (optional) (default to Key)

PBDemographicsServiceApi*apiInstance = [[PBDemographicsServiceApi alloc] init];

// Demographics By Address.
[apiInstance getDemographicsByAddressV2WithAddress:address
              country:country
              profile:profile
              filter:filter
              valueFormat:valueFormat
              variableLevel:variableLevel
          completionHandler: ^(PBDemographicsV2* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBDemographicsServiceApi->getDemographicsByAddressV2: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| The address to be searched. | 
 **country** | **NSString***| 3 letter ISO code of the country to be searched.Allowed values USA,CAN,GBR,AUS. | [optional] 
 **profile** | **NSString***| Retrieves the sorted demographic data on the basis of pre-defined profiles that can display the top 3 or top 5 results (by address) either in ascending or descending order.Allowed values Top5Ascending,Top5Descending,Top3Ascending,Top3Descending | [optional] 
 **filter** | **NSString***| The &#39;filter&#39; parameter retrieves the demographic data based upon specified input themes. | [optional] 
 **valueFormat** | **NSString***| The &#39;valueFormat&#39; parameter is applicable for few ranged variables where percent &amp; count both are available and filter response based on the input value. | [optional] [default to PercentAsAvailable]
 **variableLevel** | **NSString***| The &#39;variableLevel&#39; retrieves demographic facts in response based on the input value | [optional] [default to Key]

### Return type

[**PBDemographicsV2***](PBDemographicsV2.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDemographicsByLocationV2**
```objc
-(NSNumber*) getDemographicsByLocationV2WithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    profile: (NSString*) profile
    filter: (NSString*) filter
    valueFormat: (NSString*) valueFormat
    variableLevel: (NSString*) variableLevel
        completionHandler: (void (^)(PBDemographicsV2* output, NSError* error)) handler;
```

Demographics By Location.

Provides the demographic details around a specified location. GeoLife 'bylocation' service accepts longitude and latitude as an input to return a specific population segment's age group, ethnicity, income, purchasing behaviour, commuter patterns and more.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of the location.
NSString* latitude = @"latitude_example"; // Latitude of the location.
NSString* profile = @"profile_example"; // Retrieves the sorted demographic data on the basis of pre-defined profiles that can display the top 3 or top 5 results (by location) either in ascending or descending order.Allowed values Top5Ascending,Top5Descending,Top3Ascending,Top3Descending (optional)
NSString* filter = @"filter_example"; // The 'filter' parameter retrieves the demographic data based upon specified input themes. (optional)
NSString* valueFormat = @"PercentAsAvailable"; // The 'valueFormat' parameter is applicable for few ranged variables where percent & count both are available and filter response based on the input value. (optional) (default to PercentAsAvailable)
NSString* variableLevel = @"Key"; // The 'variableLevel' retrieves demographic facts in response based on the input value (optional) (default to Key)

PBDemographicsServiceApi*apiInstance = [[PBDemographicsServiceApi alloc] init];

// Demographics By Location.
[apiInstance getDemographicsByLocationV2WithLongitude:longitude
              latitude:latitude
              profile:profile
              filter:filter
              valueFormat:valueFormat
              variableLevel:variableLevel
          completionHandler: ^(PBDemographicsV2* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBDemographicsServiceApi->getDemographicsByLocationV2: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of the location. | 
 **latitude** | **NSString***| Latitude of the location. | 
 **profile** | **NSString***| Retrieves the sorted demographic data on the basis of pre-defined profiles that can display the top 3 or top 5 results (by location) either in ascending or descending order.Allowed values Top5Ascending,Top5Descending,Top3Ascending,Top3Descending | [optional] 
 **filter** | **NSString***| The &#39;filter&#39; parameter retrieves the demographic data based upon specified input themes. | [optional] 
 **valueFormat** | **NSString***| The &#39;valueFormat&#39; parameter is applicable for few ranged variables where percent &amp; count both are available and filter response based on the input value. | [optional] [default to PercentAsAvailable]
 **variableLevel** | **NSString***| The &#39;variableLevel&#39; retrieves demographic facts in response based on the input value | [optional] [default to Key]

### Return type

[**PBDemographicsV2***](PBDemographicsV2.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSegmentationByAddress**
```objc
-(NSNumber*) getSegmentationByAddressWithAddress: (NSString*) address
    country: (NSString*) country
        completionHandler: (void (^)(PBSegmentation* output, NSError* error)) handler;
```

Segmentation By Address.

Provides the segmentation details around a specified address. GeoLife 'Segmentation by Address' service accepts address as an input to return the lifestyle characteristics of households in terms of their family status, children characteristics, income behaviors, financial preferences and interests.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // The address to be searched.
NSString* country = @"country_example"; // 3 letter ISO code of the country to be searched.Allowed values USA,CAN,GBR,FRA,ITA,AUS,DEU. (optional)

PBDemographicsServiceApi*apiInstance = [[PBDemographicsServiceApi alloc] init];

// Segmentation By Address.
[apiInstance getSegmentationByAddressWithAddress:address
              country:country
          completionHandler: ^(PBSegmentation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBDemographicsServiceApi->getSegmentationByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| The address to be searched. | 
 **country** | **NSString***| 3 letter ISO code of the country to be searched.Allowed values USA,CAN,GBR,FRA,ITA,AUS,DEU. | [optional] 

### Return type

[**PBSegmentation***](PBSegmentation.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSegmentationByLocation**
```objc
-(NSNumber*) getSegmentationByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
        completionHandler: (void (^)(PBSegmentation* output, NSError* error)) handler;
```

Segmentation By Location.

Provides the segmentation details around a specified location. GeoLife 'segmentation bylocation' service accepts longitude and latitude as an input to return the lifestyle characteristics of households in terms of their family status, children characteristics, income behaviors, financial preferences and interests.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of the location.
NSString* latitude = @"latitude_example"; // Latitude of the location.

PBDemographicsServiceApi*apiInstance = [[PBDemographicsServiceApi alloc] init];

// Segmentation By Location.
[apiInstance getSegmentationByLocationWithLongitude:longitude
              latitude:latitude
          completionHandler: ^(PBSegmentation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBDemographicsServiceApi->getSegmentationByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of the location. | 
 **latitude** | **NSString***| Latitude of the location. | 

### Return type

[**PBSegmentation***](PBSegmentation.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

