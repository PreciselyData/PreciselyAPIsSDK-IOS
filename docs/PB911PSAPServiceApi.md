# PB911PSAPServiceApi

All URIs are relative to *https://api.precisely.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAHJPlusPSAPByAddress**](PB911PSAPServiceApi.md#getahjpluspsapbyaddress) | **GET** /911/v1/ahj-psap/byaddress | AHJ &amp; PSAP By Address.
[**getAHJPlusPSAPByLocation**](PB911PSAPServiceApi.md#getahjpluspsapbylocation) | **GET** /911/v1/ahj-psap/bylocation | AHJ &amp; PSAP By Location
[**getPSAPByAddress**](PB911PSAPServiceApi.md#getpsapbyaddress) | **GET** /911/v1/psap/byaddress | PSAP By Address.
[**getPSAPByLocation**](PB911PSAPServiceApi.md#getpsapbylocation) | **GET** /911/v1/psap/bylocation | PSAP By Location.


# **getAHJPlusPSAPByAddress**
```objc
-(NSNumber*) getAHJPlusPSAPByAddressWithAddress: (NSString*) address
        completionHandler: (void (^)(PBAHJPlusPSAPResponse* output, NSError* error)) handler;
```

AHJ & PSAP By Address.

Accepts addresses as input and Returns contact details for Authorities Having Jurisdiction (AHJ) on-behalf-of local Public Safety Answering Points (PSAP). Geo911 accepts an address and returns PSAP contact data plus contact data for an AHJ to communicate directly with a PSAP. Details include agency name, phone number, city name, coverage, contact person's details, site details and mailing addresses for EMS, Fire, and Police PSAP contacts.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // The address to be searched.

PB911PSAPServiceApi*apiInstance = [[PB911PSAPServiceApi alloc] init];

// AHJ & PSAP By Address.
[apiInstance getAHJPlusPSAPByAddressWithAddress:address
          completionHandler: ^(PBAHJPlusPSAPResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PB911PSAPServiceApi->getAHJPlusPSAPByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| The address to be searched. | 

### Return type

[**PBAHJPlusPSAPResponse***](PBAHJPlusPSAPResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAHJPlusPSAPByLocation**
```objc
-(NSNumber*) getAHJPlusPSAPByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
        completionHandler: (void (^)(PBAHJPlusPSAPResponse* output, NSError* error)) handler;
```

AHJ & PSAP By Location

Accepts latitude & longitude as input and Returns contact details for Authorities Having Jurisdiction (AHJ) on-behalf-of local Public Safety Answering Points (PSAP). Geo911 accepts a location coordinate and returns PSAP contact data plus contact data for an AHJ to communicate directly with a PSAP. Details include agency name, phone number, city name, coverage, contact person's details, site details and mailing addresses for EMS, Fire, and Police PSAP contacts.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of the location.
NSString* latitude = @"latitude_example"; // Latitude of the location.

PB911PSAPServiceApi*apiInstance = [[PB911PSAPServiceApi alloc] init];

// AHJ & PSAP By Location
[apiInstance getAHJPlusPSAPByLocationWithLongitude:longitude
              latitude:latitude
          completionHandler: ^(PBAHJPlusPSAPResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PB911PSAPServiceApi->getAHJPlusPSAPByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of the location. | 
 **latitude** | **NSString***| Latitude of the location. | 

### Return type

[**PBAHJPlusPSAPResponse***](PBAHJPlusPSAPResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPSAPByAddress**
```objc
-(NSNumber*) getPSAPByAddressWithAddress: (NSString*) address
        completionHandler: (void (^)(PBPSAPResponse* output, NSError* error)) handler;
```

PSAP By Address.

Accepts addresses as input and returns contact details for local Public Safety Answering Points (PSAP). Geo911 accepts an address as input and returns the relevant PSAP address and contact details including agency name, phone number, county name, coverage, contact person's details, site details and mailing address.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // The address to be searched.

PB911PSAPServiceApi*apiInstance = [[PB911PSAPServiceApi alloc] init];

// PSAP By Address.
[apiInstance getPSAPByAddressWithAddress:address
          completionHandler: ^(PBPSAPResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PB911PSAPServiceApi->getPSAPByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| The address to be searched. | 

### Return type

[**PBPSAPResponse***](PBPSAPResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPSAPByLocation**
```objc
-(NSNumber*) getPSAPByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
        completionHandler: (void (^)(PBPSAPResponse* output, NSError* error)) handler;
```

PSAP By Location.

Accepts latitude & longitude as input and Returns contact details for local Public Safety Answering Points (PSAP). Geo911 accepts a location coordinate and returns the relevant PSAP address and contact details including dispatch name, phone number, county name, coverage, contact person's details, site details and mailing address.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* longitude = @"longitude_example"; // Longitude of the location.
NSString* latitude = @"latitude_example"; // Latitude of the location.

PB911PSAPServiceApi*apiInstance = [[PB911PSAPServiceApi alloc] init];

// PSAP By Location.
[apiInstance getPSAPByLocationWithLongitude:longitude
              latitude:latitude
          completionHandler: ^(PBPSAPResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PB911PSAPServiceApi->getPSAPByLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **NSString***| Longitude of the location. | 
 **latitude** | **NSString***| Latitude of the location. | 

### Return type

[**PBPSAPResponse***](PBPSAPResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

