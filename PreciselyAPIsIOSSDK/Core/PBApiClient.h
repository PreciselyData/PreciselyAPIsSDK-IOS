#import <AFNetworking/AFNetworking.h>
#import "PBConfiguration.h"
#import "PBResponseDeserializer.h"
#import "PBSanitizer.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* The version of the OpenAPI document: 17.1.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


/**
 * A key for `NSError` user info dictionaries.
 *
 * The corresponding value is the parsed response body for an HTTP error.
 */
extern NSString *const PBResponseObjectErrorKey;


@interface PBApiClient : AFHTTPSessionManager

@property (nonatomic, strong, readonly) id<PBConfiguration> configuration;

@property(nonatomic, assign) NSTimeInterval timeoutInterval;

@property(nonatomic, strong) id<PBResponseDeserializer> responseDeserializer;

@property(nonatomic, strong) id<PBSanitizer> sanitizer;

/**
 * Gets if the client is unreachable
 *
 * @return The client offline state
 */
+(BOOL) getOfflineState;

/**
 * Sets the client reachability, this may be overridden by the reachability manager if reachability changes
 *
 * @param status The client reachability status.
 */
+(void) setReachabilityStatus:(AFNetworkReachabilityStatus) status;

/**
 * Gets the client reachability
 *
 * @return The client reachability.
 */
+(AFNetworkReachabilityStatus) getReachabilityStatus;

@property (nonatomic, strong) NSDictionary< NSString *, AFHTTPRequestSerializer <AFURLRequestSerialization> *>* requestSerializerForContentType;

/**
 * Gets client singleton instance
 */
+ (instancetype) sharedClient;


/**
 * Updates header parameters and query parameters for authentication
 *
 * @param headers The header parameter will be updated, passed by pointer to pointer.
 * @param queries The query parameters will be updated, passed by pointer to pointer.
 * @param authSettings The authentication names NSArray.
 */
- (void) updateHeaderParams:(NSDictionary **)headers queryParams:(NSDictionary **)queries WithAuthSettings:(NSArray *)authSettings;


/**
 * Initializes the session manager with a configuration.
 *
 * @param configuration The configuration implementation
 */
- (instancetype)initWithConfiguration:(id<PBConfiguration>)configuration;

/**
* Initializes the session manager with a configuration and url
*
* @param url The base url
* @param configuration The configuration implementation
*/
- (instancetype)initWithBaseURL:(NSURL *)url configuration:(id<PBConfiguration>)configuration;

/**
 * Performs request
 *
 * @param path Request url.
 * @param method Request method.
 * @param pathParams Request path parameters.
 * @param queryParams Request query parameters.
 * @param body Request body.
 * @param headerParams Request header parameters.
 * @param authSettings Request authentication names.
 * @param requestContentType Request content-type.
 * @param responseContentType Response content-type.
 * @param completionBlock The block will be executed when the request completed.
 *
 * @return The created session task.
 */
- (NSURLSessionTask*) requestWithPath: (NSString*) path
                               method: (NSString*) method
                           pathParams: (NSDictionary *) pathParams
                          queryParams: (NSDictionary*) queryParams
                           formParams: (NSDictionary *) formParams
                                files: (NSDictionary *) files
                                 body: (id) body
                         headerParams: (NSDictionary*) headerParams
                         authSettings: (NSArray *) authSettings
                   requestContentType: (NSString*) requestContentType
                  responseContentType: (NSString*) responseContentType
                         responseType: (NSString *) responseType
                      completionBlock: (void (^)(id, NSError *))completionBlock;

@end
