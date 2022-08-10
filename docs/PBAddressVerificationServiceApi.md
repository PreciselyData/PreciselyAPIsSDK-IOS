# PBAddressVerificationServiceApi

All URIs are relative to *https://api.precisely.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCityStateProvince**](PBAddressVerificationServiceApi.md#getcitystateprovince) | **POST** /addressverification/v1/getcitystateprovince/results.json | GetCityStateProvince
[**getPostalCodes**](PBAddressVerificationServiceApi.md#getpostalcodes) | **POST** /addressverification/v1/getpostalcodes/results.json | GetPostalCodes
[**validateMailingAddress**](PBAddressVerificationServiceApi.md#validatemailingaddress) | **POST** /addressverification/v1/validatemailingaddress/results.json | ValidateMailingAddress
[**validateMailingAddressPremium**](PBAddressVerificationServiceApi.md#validatemailingaddresspremium) | **POST** /addressverification/v1/validatemailingaddresspremium/results.json | ValidateMailingAddressPremium
[**validateMailingAddressPro**](PBAddressVerificationServiceApi.md#validatemailingaddresspro) | **POST** /addressverification/v1/validatemailingaddresspro/results.json | ValidateMailingAddressPro
[**validateMailingAddressUSCAN**](PBAddressVerificationServiceApi.md#validatemailingaddressuscan) | **POST** /addressverification/v1/validatemailingaddressuscan/results.json | ValidateMailingAddressUSCAN


# **getCityStateProvince**
```objc
-(NSURLSessionTask*) getCityStateProvinceWithInputAddress: (PBGetCityStateProvinceAPIRequest*) inputAddress
        completionHandler: (void (^)(PBGetCityStateProvinceAPIResponse* output, NSError* error)) handler;
```

GetCityStateProvince

GetCityStateProvince returns a city and state/province for a given input postal code for U.S. and Canadian addresses.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBGetCityStateProvinceAPIRequest* inputAddress = [[PBGetCityStateProvinceAPIRequest alloc] init]; // 

PBAddressVerificationServiceApi*apiInstance = [[PBAddressVerificationServiceApi alloc] init];

// GetCityStateProvince
[apiInstance getCityStateProvinceWithInputAddress:inputAddress
          completionHandler: ^(PBGetCityStateProvinceAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBAddressVerificationServiceApi->getCityStateProvince: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputAddress** | [**PBGetCityStateProvinceAPIRequest***](PBGetCityStateProvinceAPIRequest.md)|  | 

### Return type

[**PBGetCityStateProvinceAPIResponse***](PBGetCityStateProvinceAPIResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPostalCodes**
```objc
-(NSURLSessionTask*) getPostalCodesWithInputAddress: (PBGetPostalCodesAPIRequest*) inputAddress
        completionHandler: (void (^)(PBGetPostalCodesAPIResponse* output, NSError* error)) handler;
```

GetPostalCodes

GetPostalCodes takes a city and state as input for U.S. addresses and returns the postal codes for that city.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBGetPostalCodesAPIRequest* inputAddress = [[PBGetPostalCodesAPIRequest alloc] init]; // 

PBAddressVerificationServiceApi*apiInstance = [[PBAddressVerificationServiceApi alloc] init];

// GetPostalCodes
[apiInstance getPostalCodesWithInputAddress:inputAddress
          completionHandler: ^(PBGetPostalCodesAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBAddressVerificationServiceApi->getPostalCodes: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputAddress** | [**PBGetPostalCodesAPIRequest***](PBGetPostalCodesAPIRequest.md)|  | 

### Return type

[**PBGetPostalCodesAPIResponse***](PBGetPostalCodesAPIResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateMailingAddress**
```objc
-(NSURLSessionTask*) validateMailingAddressWithInputAddress: (PBValidateMailingAddressRequest*) inputAddress
        completionHandler: (void (^)(PBValidateMailingAddressResponse* output, NSError* error)) handler;
```

ValidateMailingAddress

ValidateMailingAddress analyses and compares the input addresses against the known address databases around the world to output a standardized detail.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBValidateMailingAddressRequest* inputAddress = [[PBValidateMailingAddressRequest alloc] init]; // 

PBAddressVerificationServiceApi*apiInstance = [[PBAddressVerificationServiceApi alloc] init];

// ValidateMailingAddress
[apiInstance validateMailingAddressWithInputAddress:inputAddress
          completionHandler: ^(PBValidateMailingAddressResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBAddressVerificationServiceApi->validateMailingAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputAddress** | [**PBValidateMailingAddressRequest***](PBValidateMailingAddressRequest.md)|  | 

### Return type

[**PBValidateMailingAddressResponse***](PBValidateMailingAddressResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateMailingAddressPremium**
```objc
-(NSURLSessionTask*) validateMailingAddressPremiumWithInputAddress: (PBValidateMailingAddressPremiumRequest*) inputAddress
        completionHandler: (void (^)(PBValidateMailingAddressPremiumResponse* output, NSError* error)) handler;
```

ValidateMailingAddressPremium

ValidateMailing AddressPremium expands on the ValidateMailingAddressPro service by adding premium address data sources to get the best address validation result possible.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBValidateMailingAddressPremiumRequest* inputAddress = [[PBValidateMailingAddressPremiumRequest alloc] init]; // 

PBAddressVerificationServiceApi*apiInstance = [[PBAddressVerificationServiceApi alloc] init];

// ValidateMailingAddressPremium
[apiInstance validateMailingAddressPremiumWithInputAddress:inputAddress
          completionHandler: ^(PBValidateMailingAddressPremiumResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBAddressVerificationServiceApi->validateMailingAddressPremium: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputAddress** | [**PBValidateMailingAddressPremiumRequest***](PBValidateMailingAddressPremiumRequest.md)|  | 

### Return type

[**PBValidateMailingAddressPremiumResponse***](PBValidateMailingAddressPremiumResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateMailingAddressPro**
```objc
-(NSURLSessionTask*) validateMailingAddressProWithInputAddress: (PBValidateMailingAddressProRequest*) inputAddress
        completionHandler: (void (^)(PBValidateMailingAddressProResponse* output, NSError* error)) handler;
```

ValidateMailingAddressPro

ValidateMailingAddressPro builds upon the ValidateMailingAddress service by using additional address databases so it can provide enhanced detail.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBValidateMailingAddressProRequest* inputAddress = [[PBValidateMailingAddressProRequest alloc] init]; // 

PBAddressVerificationServiceApi*apiInstance = [[PBAddressVerificationServiceApi alloc] init];

// ValidateMailingAddressPro
[apiInstance validateMailingAddressProWithInputAddress:inputAddress
          completionHandler: ^(PBValidateMailingAddressProResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBAddressVerificationServiceApi->validateMailingAddressPro: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputAddress** | [**PBValidateMailingAddressProRequest***](PBValidateMailingAddressProRequest.md)|  | 

### Return type

[**PBValidateMailingAddressProResponse***](PBValidateMailingAddressProResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateMailingAddressUSCAN**
```objc
-(NSURLSessionTask*) validateMailingAddressUSCANWithInputAddress: (PBValidateMailingAddressUSCANAPIRequest*) inputAddress
        completionHandler: (void (^)(PBValidateMailingAddressUSCANAPIResponse* output, NSError* error)) handler;
```

ValidateMailingAddressUSCAN

ValidateMailingAddressUSCAN analyses and compares the input addresses against the known address databases around the world to output a standardized detail for US and CANADAIt gives RDI and DPV also along with other US/CAN specific functionalities.

### Example
```objc
PBDefaultConfiguration *apiConfig = [PBDefaultConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


PBValidateMailingAddressUSCANAPIRequest* inputAddress = [[PBValidateMailingAddressUSCANAPIRequest alloc] init]; // 

PBAddressVerificationServiceApi*apiInstance = [[PBAddressVerificationServiceApi alloc] init];

// ValidateMailingAddressUSCAN
[apiInstance validateMailingAddressUSCANWithInputAddress:inputAddress
          completionHandler: ^(PBValidateMailingAddressUSCANAPIResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBAddressVerificationServiceApi->validateMailingAddressUSCAN: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputAddress** | [**PBValidateMailingAddressUSCANAPIRequest***](PBValidateMailingAddressUSCANAPIRequest.md)|  | 

### Return type

[**PBValidateMailingAddressUSCANAPIResponse***](PBValidateMailingAddressUSCANAPIResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

