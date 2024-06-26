#import <Foundation/Foundation.h>
#import "PBAddressesByBoundaryRequest.h"
#import "PBAddressesCount.h"
#import "PBAddressesResponse.h"
#import "PBErrorInfo.h"
#import "PBApi.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* The version of the OpenAPI document: 18.1.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface PBAddressesServiceApi: NSObject <PBApi>

extern NSString* kPBAddressesServiceApiErrorDomain;
extern NSInteger kPBAddressesServiceApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(PBApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Addresses Count by Boundary Name.
/// This service accepts zip code, neighborhood, county, or city names, and returns the total number of addresses associated with these names.
///
/// @param country Name of country. Acceptable values are CAN, USA.
/// @param areaName1 Specifies the largest geographical area, typically a state or province. (optional)
/// @param areaName2 Specifies the secondary geographic area, typically a county or district. (optional)
/// @param areaName3 Specifies a city or town name. (optional)
/// @param areaName4 Specifies a city subdivision or locality/neighborhood. (optional)
/// @param postCode Specifies the postcode (ZIP code) in the appropriate format for the country. (optional)
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBAddressesCount*
-(NSURLSessionTask*) getAddressesCountByBoundaryNameWithCountry: (NSString*) country
    areaName1: (NSString*) areaName1
    areaName2: (NSString*) areaName2
    areaName3: (NSString*) areaName3
    areaName4: (NSString*) areaName4
    postCode: (NSString*) postCode
    completionHandler: (void (^)(PBAddressesCount* output, NSError* error)) handler;


/// Addresses count by Boundary.
/// This service accepts custom geographic boundaries or drive time & drive distance, returns the total number of addresses within these boundaries.
///
/// @param addressesByBoundaryRequest 
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBAddressesCount*
-(NSURLSessionTask*) getAddressesCountbyBoundaryWithAddressesByBoundaryRequest: (PBAddressesByBoundaryRequest*) addressesByBoundaryRequest
    completionHandler: (void (^)(PBAddressesCount* output, NSError* error)) handler;


/// Addresses by Boundary.
/// This service accepts custom geographic boundaries or drive time & drive distance, returns all known & valid addresses within these boundaries.
///
/// @param addressesByBoundaryRequest 
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBAddressesResponse*
-(NSURLSessionTask*) getAddressesbyBoundaryWithAddressesByBoundaryRequest: (PBAddressesByBoundaryRequest*) addressesByBoundaryRequest
    completionHandler: (void (^)(PBAddressesResponse* output, NSError* error)) handler;


/// Addresses by Boundary Name.
/// This service accepts zip code, neighborhood, county, or city names, and returns all known & valid addresses associated with these names.
///
/// @param country Name of country. Acceptable values are CAN, USA.
/// @param areaName1 Specifies the largest geographical area, typically a state or province. (optional)
/// @param areaName2 Specifies the secondary geographic area, typically a county or district. (optional)
/// @param areaName3 Specifies a city or town name. (optional)
/// @param areaName4 Specifies a city subdivision or locality/neighborhood. (optional)
/// @param postCode Specifies the postcode (ZIP code) in the appropriate format for the country. (optional)
/// @param maxCandidates Maximum number of addresses to be returned in response. Max. value is 100 for XML/JSON, and 2000 for CSV. (optional)
/// @param page Response will indicate the page number. (optional)
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBAddressesResponse*
-(NSURLSessionTask*) getAddressesbyBoundaryNameWithCountry: (NSString*) country
    areaName1: (NSString*) areaName1
    areaName2: (NSString*) areaName2
    areaName3: (NSString*) areaName3
    areaName4: (NSString*) areaName4
    postCode: (NSString*) postCode
    maxCandidates: (NSString*) maxCandidates
    page: (NSString*) page
    completionHandler: (void (^)(PBAddressesResponse* output, NSError* error)) handler;



@end
