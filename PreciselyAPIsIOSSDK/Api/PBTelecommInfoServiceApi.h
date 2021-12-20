#import <Foundation/Foundation.h>
#import "PBRateCenterResponse.h"
#import "PBApi.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* OpenAPI spec version: 11.8.0
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/


@interface PBTelecommInfoServiceApi: NSObject <PBApi>

extern NSString* kPBTelecommInfoServiceApiErrorDomain;
extern NSInteger kPBTelecommInfoServiceApiMissingParamErrorCode;

+(instancetype) sharedAPI;

/// Rate Center By Address.
/// Accepts addresses as input and returns Incumbent Local Exchange Carrier (ILEC) doing-business-as names.
///
/// @param address The address to be searched.
/// @param country 3 letter ISO code of the country to be searched. Allowed values USA,CAN (optional) (default to USA)
/// @param areaCodeInfo Specifies whether area code information will be part of response.Allowed values True,False (optional) (default to False)
/// @param level Level (basic/detail).Allowed values detail,basic. (optional) (default to basic)
/// 
///  code:200 message:"successful operation"
///
/// @return PBRateCenterResponse*
-(NSNumber*) getRateCenterByAddressWithAddress: (NSString*) address
    country: (NSString*) country
    areaCodeInfo: (NSString*) areaCodeInfo
    level: (NSString*) level
    completionHandler: (void (^)(PBRateCenterResponse* output, NSError* error)) handler;


/// Rate Center By Location.
/// Accepts latitude & longitude as input and returns Incumbent Local Exchange Carrier (ILEC) doing-business-as names.
///
/// @param longitude Longitude of the location.
/// @param latitude Latitude of the location.
/// @param areaCodeInfo Specifies whether area code information will be part of response.Allowed values True,False. (optional) (default to False)
/// @param level Level (basic/detail).Allowed values detail,basic. (optional) (default to basic)
/// 
///  code:200 message:"successful operation"
///
/// @return PBRateCenterResponse*
-(NSNumber*) getRateCenterByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    areaCodeInfo: (NSString*) areaCodeInfo
    level: (NSString*) level
    completionHandler: (void (^)(PBRateCenterResponse* output, NSError* error)) handler;



@end
