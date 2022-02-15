#import <Foundation/Foundation.h>
#import "PBErrorInfo.h"
#import "PBNeighborhoodsResponse.h"
#import "PBApi.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* The version of the OpenAPI document: 11.9.2
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface PBNeighborhoodsServiceApi: NSObject <PBApi>

extern NSString* kPBNeighborhoodsServiceApiErrorDomain;
extern NSInteger kPBNeighborhoodsServiceApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(PBApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Place By Location.
/// Identifies and retrieves the nearest neighborhood around a specific location. This service accepts latitude & longitude as input and returns a place name.
///
/// @param longitude Longitude of the location. (optional)
/// @param latitude Latitude of the location. (optional)
/// @param levelHint Numeric code of geographic hierarchy level which is classified at six levels.Allowed values 1,2,3,4,5,6 (optional)
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBNeighborhoodsResponse*
-(NSURLSessionTask*) getPlaceByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    levelHint: (NSString*) levelHint
    completionHandler: (void (^)(PBNeighborhoodsResponse* output, NSError* error)) handler;



@end
