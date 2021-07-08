#import <Foundation/Foundation.h>
#import "PBIntersectionResponse.h"
#import "PBSpeedLimit.h"
#import "PBApi.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* OpenAPI spec version: 11.0.1
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


@interface PBStreetsServiceApi: NSObject <PBApi>

extern NSString* kPBStreetsServiceApiErrorDomain;
extern NSInteger kPBStreetsServiceApiMissingParamErrorCode;

+(instancetype) sharedAPI;

/// Nearest Intersection By Address
/// This service accepts an address as input and returns the Nearest Intersection.
///
/// @param address Address
/// @param roadClass Filters roads with specified class, allowed values are (Major, Motorways, Other and All), default is All (optional)
/// @param driveTime Returns Intersection in specified drive time (optional)
/// @param driveTimeUnit Drive time unit, allowed values are (hours, minutes, seconds and milliseconds), default is minutes (optional)
/// @param searchRadius Search radius within which user wants to search, default is 50 miles (optional)
/// @param searchRadiusUnit Search radius unit, allowed values are (feet, meter, kilometers and miles) (optional)
/// @param historicSpeed Traffic flow in peak time, allowed values are (AMPEAK,PMPEAK,OFFPEAK,NIGHT) (optional)
/// @param maxCandidates max candidates to be returned default is 1 (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBIntersectionResponse*
-(NSNumber*) getIntersectionByAddressWithAddress: (NSString*) address
    roadClass: (NSString*) roadClass
    driveTime: (NSString*) driveTime
    driveTimeUnit: (NSString*) driveTimeUnit
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    historicSpeed: (NSString*) historicSpeed
    maxCandidates: (NSString*) maxCandidates
    completionHandler: (void (^)(PBIntersectionResponse* output, NSError* error)) handler;


/// Nearest Intersection By Location
/// This service accepts latitude/longitude as input and returns the Nearest Intersection.
///
/// @param longitude Longitude of the location.
/// @param latitude Latitude of the location.
/// @param roadClass Filters roads with specified class, allowed values are (Major, Motorways, Other and All), default is All (optional)
/// @param driveTime Returns Intersection in specified drive time (optional)
/// @param driveTimeUnit Drive time unit, allowed values are (hours, minutes, seconds and milliseconds), default is minutes (optional)
/// @param searchRadius Search radius within which user wants to search, default is 50 miles (optional)
/// @param searchRadiusUnit Search radius unit, allowed values are (feet, meter, kilometers and miles) (optional)
/// @param historicSpeed Traffic flow in peak time, allowed values are (AMPEAK,PMPEAK,OFFPEAK,NIGHT) (optional)
/// @param maxCandidates max candidates to be returned default is 1 (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBIntersectionResponse*
-(NSNumber*) getIntersectionByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    roadClass: (NSString*) roadClass
    driveTime: (NSString*) driveTime
    driveTimeUnit: (NSString*) driveTimeUnit
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    historicSpeed: (NSString*) historicSpeed
    maxCandidates: (NSString*) maxCandidates
    completionHandler: (void (^)(PBIntersectionResponse* output, NSError* error)) handler;


/// Nearest Speedlimit
/// This service accepts point coordinates of a path as input and returns the posted speed limit of the road segment on which this path will snap.
///
/// @param path Accepts multiple points which will be snapped to the nearest road segment. Longitude and Latitude will be comma separated (longitude,latitude) and Point Coordinates will be separated by semi-colon(;)
/// 
///  code:200 message:"successful operation"
///
/// @return PBSpeedLimit*
-(NSNumber*) getNearestSpeedLimitWithPath: (NSString*) path
    completionHandler: (void (^)(PBSpeedLimit* output, NSError* error)) handler;



@end
