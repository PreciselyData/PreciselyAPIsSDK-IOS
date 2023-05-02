#import <Foundation/Foundation.h>
#import "PBErrorInfo.h"
#import "PBRateCenterResponse.h"
#import "PBApi.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* The version of the OpenAPI document: 16.0.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface PBTelecommInfoServiceApi: NSObject <PBApi>

extern NSString* kPBTelecommInfoServiceApiErrorDomain;
extern NSInteger kPBTelecommInfoServiceApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(PBApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Rate Center By Address.
/// Accepts addresses as input and returns Incumbent Local Exchange Carrier (ILEC) doing-business-as names.
///
/// @param address The address to be searched (optional)
/// @param country 3 letter ISO code of the country to be searched. Allowed values USA,CAN (optional)
/// @param areaCodeInfo Specifies whether area code information will be part of response.Allowed values True,False. (optional)
/// @param level Level (basic/detail).Allowed values detail,basic. (optional)
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBRateCenterResponse*
-(NSURLSessionTask*) getRateCenterByAddressWithAddress: (NSString*) address
    country: (NSString*) country
    areaCodeInfo: (NSString*) areaCodeInfo
    level: (NSString*) level
    completionHandler: (void (^)(PBRateCenterResponse* output, NSError* error)) handler;


/// Rate Center By Location.
/// Accepts latitude & longitude as input and returns Incumbent Local Exchange Carrier (ILEC) doing-business-as names.
///
/// @param longitude Longitude of the location (optional)
/// @param latitude Latitude of the location (optional)
/// @param areaCodeInfo Specifies whether area code information will be part of response.Allowed values True,False. (optional)
/// @param level Level (basic/detail).Allowed values detail,basic. (optional)
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBRateCenterResponse*
-(NSURLSessionTask*) getRateCenterByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    areaCodeInfo: (NSString*) areaCodeInfo
    level: (NSString*) level
    completionHandler: (void (^)(PBRateCenterResponse* output, NSError* error)) handler;



@end
