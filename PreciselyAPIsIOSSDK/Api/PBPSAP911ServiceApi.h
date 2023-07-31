#import <Foundation/Foundation.h>
#import "PBAHJPlusPSAPResponse.h"
#import "PBErrorInfo.h"
#import "PBPSAPResponse.h"
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



@interface PBPSAP911ServiceApi: NSObject <PBApi>

extern NSString* kPBPSAP911ServiceApiErrorDomain;
extern NSInteger kPBPSAP911ServiceApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(PBApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// AHJ & PSAP By Address.
/// Accepts addresses as input and Returns contact details for Authorities Having Jurisdiction (AHJ) on-behalf-of local Public Safety Answering Points (PSAP). 911/PSAP accepts an address and returns PSAP contact data plus contact data for an AHJ to communicate directly with a PSAP. Details include agency name, phone number, city name, coverage, contact person's details, site details and mailing addresses for EMS, Fire, and Police PSAP contacts.
///
/// @param address The address to be searched.
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBAHJPlusPSAPResponse*
-(NSURLSessionTask*) getAHJPlusPSAPByAddressWithAddress: (NSString*) address
    completionHandler: (void (^)(PBAHJPlusPSAPResponse* output, NSError* error)) handler;


/// AHJ & PSAP By Location
/// Accepts latitude & longitude as input and Returns contact details for Authorities Having Jurisdiction (AHJ) on-behalf-of local Public Safety Answering Points (PSAP). 911/PSAP accepts a location coordinate and returns PSAP contact data plus contact data for an AHJ to communicate directly with a PSAP. Details include agency name, phone number, city name, coverage, contact person's details, site details and mailing addresses for EMS, Fire, and Police PSAP contacts.
///
/// @param longitude Longitude of the location.
/// @param latitude Latitude of the location.
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBAHJPlusPSAPResponse*
-(NSURLSessionTask*) getAHJPlusPSAPByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    completionHandler: (void (^)(PBAHJPlusPSAPResponse* output, NSError* error)) handler;


/// PSAP By Address.
/// Accepts addresses as input and Returns contact details for local Public Safety Answering Points (PSAP). 911/PSAP accepts an address as input and returns the relevant PSAP address and contact details including agency name, phone number, county name, coverage, contact person's details, site details and mailing address.
///
/// @param address The address to be searched.
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBPSAPResponse*
-(NSURLSessionTask*) getPSAPByAddressWithAddress: (NSString*) address
    completionHandler: (void (^)(PBPSAPResponse* output, NSError* error)) handler;


/// PSAP By Location.
/// Accepts latitude & longitude as input and Returns contact details for local Public Safety Answering Points (PSAP). 911/PSAP accepts a location coordinate and returns the relevant PSAP address and contact details including dispatch name, phone number, county name, coverage, contact person's details, site details and mailing address.
///
/// @param longitude Longitude of the location.
/// @param latitude Latitude of the location.
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBPSAPResponse*
-(NSURLSessionTask*) getPSAPByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    completionHandler: (void (^)(PBPSAPResponse* output, NSError* error)) handler;



@end
