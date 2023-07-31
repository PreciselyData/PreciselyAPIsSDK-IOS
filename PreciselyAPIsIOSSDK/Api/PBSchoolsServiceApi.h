#import <Foundation/Foundation.h>
#import "PBErrorInfo.h"
#import "PBSchoolsNearByResponse.h"
#import "PBApi.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* The version of the OpenAPI document: 16.0.1
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface PBSchoolsServiceApi: NSObject <PBApi>

extern NSString* kPBSchoolsServiceApiErrorDomain;
extern NSInteger kPBSchoolsServiceApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(PBApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Search Nearby Schools by Address
/// Search Nearby Schools by Address
///
/// @param address free form address text
/// @param edLevel Single digit code for education level applicable values are P -&gt; primary, M -&gt; Middle, H -&gt; High, O -&gt; Mixed Grades for public school type andE -&gt; Elementary , S -&gt; Secondary , O -&gt; Others mixed grades for private schools  (optional)
/// @param schoolType Single digit code for schoolTypes applicable values are PRI and PUB (optional)
/// @param schoolSubType Single digit code for schoolSubType Applicable values are C, M, A, R, I, L, P, V, U, S (i.e. Charter, Magnet, Alternative, Regular, Indian, Military, Reportable Program, Vocational, Unknown, Special Education) (optional)
/// @param gender Single digit code for gender Applicable values are C, F, M (Coed, All Females, All Males) Applicable for Private Schools Only (optional)
/// @param assignedSchoolsOnly Single digit code for assignedSchoolOnly applicable values are  Y/N  (optional)
/// @param districtSchoolsOnly Single digit code for districtSchoolOnly applicable values are Y/N  (optional)
/// @param searchRadius Search Radius within which schools are searched (optional)
/// @param searchRadiusUnit Search Radius unit applicable values are feet,kilometers,miles,meters (optional)
/// @param travelTime Travel Time based on ‘travelMode’ within which schools are searched. (optional)
/// @param travelTimeUnit Travel Time unit applicable values are minutes,hours,seconds,milliseconds  (optional)
/// @param travelDistance Travel Distance based on ‘travelMode’ within which schools are searched. (optional)
/// @param travelDistanceUnit Travel distanceUnit applicable values are feet,kilometers,miles,meters (optional)
/// @param travelMode Travel mode Required when travelDistance or travelTime is specified. Accepted values are walking,driving (optional)
/// @param maxCandidates Max result to search  (optional)
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBSchoolsNearByResponse*
-(NSURLSessionTask*) getSchoolsByAddressWithAddress: (NSString*) address
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
