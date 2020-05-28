# PBIdentityProfilesServiceApi

All URIs are relative to *https://api.precisely.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getIdentityByAddress**](PBIdentityProfilesServiceApi.md#getidentitybyaddress) | **GET** /identityprofiles/v1/identity/byaddress | Identities By Address
[**getIdentityByEmail**](PBIdentityProfilesServiceApi.md#getidentitybyemail) | **GET** /identityprofiles/v1/identity/byemail | Identity By Email
[**getIdentityByTwitter**](PBIdentityProfilesServiceApi.md#getidentitybytwitter) | **GET** /identityprofiles/v1/identity/bytwitter | Identity By Twitter


# **getIdentityByAddress**
```objc
-(NSNumber*) getIdentityByAddressWithAddress: (NSString*) address
    givenName: (NSString*) givenName
    familyName: (NSString*) familyName
    confidence: (NSString*) confidence
    maxCandidates: (NSString*) maxCandidates
    theme: (NSString*) theme
    filter: (NSString*) filter
        completionHandler: (void (^)(PBGeoIdentityResponse* output, NSError* error)) handler;
```

Identities By Address

Accepts an Address as input and returns rich localized Identity profiles, demographics, lifestyle segmentations, neighborhood names, property ownership & values, and social affinity insights from twitter, linkedin, and more along with education, job history and other identity information.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* address = @"address_example"; // free form address text
NSString* givenName = @"givenName_example"; // This filters all the associated identities of address by given Name (optional)
NSString* familyName = @"familyName_example"; // This filters all the associated identities of address by family Name (optional)
NSString* confidence = @"confidence_example"; // To adjust quality threshold of data returned. Default is HIGH (optional)
NSString* maxCandidates = @"maxCandidates_example"; // Number of identities returned in response (optional)
NSString* theme = @"theme_example"; // theme parameter for filtering results (optional)
NSString* filter = @"filter_example"; // filter params (optional)

PBIdentityProfilesServiceApi*apiInstance = [[PBIdentityProfilesServiceApi alloc] init];

// Identities By Address
[apiInstance getIdentityByAddressWithAddress:address
              givenName:givenName
              familyName:familyName
              confidence:confidence
              maxCandidates:maxCandidates
              theme:theme
              filter:filter
          completionHandler: ^(PBGeoIdentityResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBIdentityProfilesServiceApi->getIdentityByAddress: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address** | **NSString***| free form address text | 
 **givenName** | **NSString***| This filters all the associated identities of address by given Name | [optional] 
 **familyName** | **NSString***| This filters all the associated identities of address by family Name | [optional] 
 **confidence** | **NSString***| To adjust quality threshold of data returned. Default is HIGH | [optional] 
 **maxCandidates** | **NSString***| Number of identities returned in response | [optional] 
 **theme** | **NSString***| theme parameter for filtering results | [optional] 
 **filter** | **NSString***| filter params | [optional] 

### Return type

[**PBGeoIdentityResponse***](PBGeoIdentityResponse.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIdentityByEmail**
```objc
-(NSNumber*) getIdentityByEmailWithEmail: (NSString*) email
    confidence: (NSString*) confidence
    theme: (NSString*) theme
    filter: (NSString*) filter
        completionHandler: (void (^)(PBIdentity* output, NSError* error)) handler;
```

Identity By Email

Accepts an Email address as input and returns rich localized Identity profiles and social affinity insights from twitter, linkedin, and more along with education, job history and other identity information.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* email = @"email_example"; // This specifies the email address
NSString* confidence = @"confidence_example"; // To adjust quality threshold of data returned. Default is HIGH (optional)
NSString* theme = @"theme_example"; // theme parameter for filtering results (optional)
NSString* filter = @"filter_example"; // filter params (optional)

PBIdentityProfilesServiceApi*apiInstance = [[PBIdentityProfilesServiceApi alloc] init];

// Identity By Email
[apiInstance getIdentityByEmailWithEmail:email
              confidence:confidence
              theme:theme
              filter:filter
          completionHandler: ^(PBIdentity* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBIdentityProfilesServiceApi->getIdentityByEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **NSString***| This specifies the email address | 
 **confidence** | **NSString***| To adjust quality threshold of data returned. Default is HIGH | [optional] 
 **theme** | **NSString***| theme parameter for filtering results | [optional] 
 **filter** | **NSString***| filter params | [optional] 

### Return type

[**PBIdentity***](PBIdentity.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIdentityByTwitter**
```objc
-(NSNumber*) getIdentityByTwitterWithTwitter: (NSString*) twitter
    confidence: (NSString*) confidence
    theme: (NSString*) theme
    filter: (NSString*) filter
        completionHandler: (void (^)(PBIdentity* output, NSError* error)) handler;
```

Identity By Twitter

Accepts a Twiiter handle as input and returns rich localized Identity profiles and social affinity insights from twitter, linkedin, and more along with education, job history and other identity information.

### Example 
```objc
PBConfiguration *apiConfig = [PBConfiguration sharedConfig];

// Configure OAuth2 access token for authorization: (authentication scheme: oAuth2Password)
[apiConfig setAccessToken:@"YOUR_ACCESS_TOKEN"];


NSString* twitter = @"twitter_example"; // Twitter handle of the identity.
NSString* confidence = @"confidence_example"; // To adjust quality threshold of data returned. Default is HIGH (optional)
NSString* theme = @"theme_example"; // theme parameter for filtering results (optional)
NSString* filter = @"filter_example"; // filter params (optional)

PBIdentityProfilesServiceApi*apiInstance = [[PBIdentityProfilesServiceApi alloc] init];

// Identity By Twitter
[apiInstance getIdentityByTwitterWithTwitter:twitter
              confidence:confidence
              theme:theme
              filter:filter
          completionHandler: ^(PBIdentity* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling PBIdentityProfilesServiceApi->getIdentityByTwitter: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **twitter** | **NSString***| Twitter handle of the identity. | 
 **confidence** | **NSString***| To adjust quality threshold of data returned. Default is HIGH | [optional] 
 **theme** | **NSString***| theme parameter for filtering results | [optional] 
 **filter** | **NSString***| filter params | [optional] 

### Return type

[**PBIdentity***](PBIdentity.md)

### Authorization

[oAuth2Password](../README.md#oAuth2Password)

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

