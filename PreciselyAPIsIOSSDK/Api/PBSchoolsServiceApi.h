#import <Foundation/Foundation.h>
#import "PBSchoolsNearByResponse.h"
#import "PBApi.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* OpenAPI spec version: 11.5.0
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


@interface PBSchoolsServiceApi: NSObject <PBApi>

extern NSString* kPBSchoolsServiceApiErrorDomain;
extern NSInteger kPBSchoolsServiceApiMissingParamErrorCode;

+(instancetype) sharedAPI;

/// Search Nearby Schools by Address
/// Search Nearby Schools by Address
///
/// @param address free form address text
/// @param edLevel Single digit code for education level applicable values are P -&gt; primary, M -&gt; Middle, H -&gt; High, O -&gt; Mixed Grades for public school type andE -&gt; Elementary , S -&gt; Secondary , O -&gt; Others mixed grades for private schools  (optional)
/// @param schoolType Single digit code for schoolTypes applicable values are PRI and PUB (optional)
/// @param schoolSubType Single digit code for schoolSubType Applicable values are C, M, A, R, I, L, P, V, U, S (i.e. Charter, Magnet, Alternative, Regular, Indian, Military, Reportable Program, Vocational, Unknown, Special Education) (optional)
/// @param gender Single digit code for gender Applicable values are C, F, M (Coed, All Females, All Males) (optional)
/// @param assignedSchoolsOnly Single digit code for assignedSchoolOnly applicable values are  Y/N  (optional)
/// @param districtSchoolsOnly Single digit code for districtSchoolOnly applicable values are Y/N  (optional)
/// @param searchRadius Search Radius within which schools are searched (optional)
/// @param searchRadiusUnit Search Radius unit applicable values are feet,kilometers,miles,meters (optional)
/// @param travelTime Travel Time based on ‘travelMode’ within which schools are searched. (optional)
/// @param travelTimeUnit Travel Time unit applicable values are minutes,hours,seconds,milliseconds  (optional)
/// @param travelDistance Travel Distance based on ‘travelMode’ within which schools are searched. (optional)
/// @param travelDistanceUnit Travel distanceUnit applicable values are feet,kilometers,miles,meters (optional)
/// @param travelMode Travel mode Required when travelDistance or travelTime is specified. Accepted values are walking,driving (optional)
/// @param maxCandidates Max result to search  (optional) (default to 10)
/// 
///  code:200 message:"successful operation"
///
/// @return PBSchoolsNearByResponse*
-(NSNumber*) getSchoolsByAddressWithAddress: (NSString*) address
    edLevel: (NSString*) edLevel
    schoolType: (NSString*) schoolType
    schoolSubType: (NSString*) schoolSubType
    gender: (NSString*) gender
    assignedSchoolsOnly: (NSString*) assignedSchoolsOnly
    districtSchoolsOnly: (NSString*) districtSchoolsOnly
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    travelMode: (NSString*) travelMode
    maxCandidates: (NSString*) maxCandidates
    completionHandler: (void (^)(PBSchoolsNearByResponse* output, NSError* error)) handler;



@end
