#import <Foundation/Foundation.h>
#import "PBErrorInfo.h"
#import "PBGetCityStateProvinceAPIRequest.h"
#import "PBGetCityStateProvinceAPIResponse.h"
#import "PBGetPostalCodesAPIRequest.h"
#import "PBGetPostalCodesAPIResponse.h"
#import "PBValidateMailingAddressPremiumRequest.h"
#import "PBValidateMailingAddressPremiumResponse.h"
#import "PBValidateMailingAddressProRequest.h"
#import "PBValidateMailingAddressProResponse.h"
#import "PBValidateMailingAddressRequest.h"
#import "PBValidateMailingAddressResponse.h"
#import "PBValidateMailingAddressUSCANAPIRequest.h"
#import "PBValidateMailingAddressUSCANAPIResponse.h"
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



@interface PBAddressVerificationServiceApi: NSObject <PBApi>

extern NSString* kPBAddressVerificationServiceApiErrorDomain;
extern NSInteger kPBAddressVerificationServiceApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(PBApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// GetCityStateProvince
/// GetCityStateProvince returns a city and state/province for a given input postal code for U.S. and Canadian addresses.
///
/// @param inputAddress 
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBGetCityStateProvinceAPIResponse*
-(NSURLSessionTask*) getCityStateProvinceWithInputAddress: (PBGetCityStateProvinceAPIRequest*) inputAddress
    completionHandler: (void (^)(PBGetCityStateProvinceAPIResponse* output, NSError* error)) handler;


/// GetPostalCodes
/// GetPostalCodes takes a city and state as input for U.S. addresses and returns the postal codes for that city.
///
/// @param inputAddress 
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBGetPostalCodesAPIResponse*
-(NSURLSessionTask*) getPostalCodesWithInputAddress: (PBGetPostalCodesAPIRequest*) inputAddress
    completionHandler: (void (^)(PBGetPostalCodesAPIResponse* output, NSError* error)) handler;


/// ValidateMailingAddress
/// ValidateMailingAddress analyses and compares the input addresses against the known address databases around the world to output a standardized detail.
///
/// @param inputAddress 
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBValidateMailingAddressResponse*
-(NSURLSessionTask*) validateMailingAddressWithInputAddress: (PBValidateMailingAddressRequest*) inputAddress
    completionHandler: (void (^)(PBValidateMailingAddressResponse* output, NSError* error)) handler;


/// ValidateMailingAddressPremium
/// ValidateMailing AddressPremium expands on the ValidateMailingAddressPro service by adding premium address data sources to get the best address validation result possible.
///
/// @param inputAddress 
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBValidateMailingAddressPremiumResponse*
-(NSURLSessionTask*) validateMailingAddressPremiumWithInputAddress: (PBValidateMailingAddressPremiumRequest*) inputAddress
    completionHandler: (void (^)(PBValidateMailingAddressPremiumResponse* output, NSError* error)) handler;


/// ValidateMailingAddressPro
/// ValidateMailingAddressPro builds upon the ValidateMailingAddress service by using additional address databases so it can provide enhanced detail.
///
/// @param inputAddress 
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBValidateMailingAddressProResponse*
-(NSURLSessionTask*) validateMailingAddressProWithInputAddress: (PBValidateMailingAddressProRequest*) inputAddress
    completionHandler: (void (^)(PBValidateMailingAddressProResponse* output, NSError* error)) handler;


/// ValidateMailingAddressUSCAN
/// ValidateMailingAddressUSCAN analyses and compares the input addresses against the known address databases around the world to output a standardized detail for US and CANADAIt gives RDI and DPV also along with other US/CAN specific functionalities.
///
/// @param inputAddress 
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBValidateMailingAddressUSCANAPIResponse*
-(NSURLSessionTask*) validateMailingAddressUSCANWithInputAddress: (PBValidateMailingAddressUSCANAPIRequest*) inputAddress
    completionHandler: (void (^)(PBValidateMailingAddressUSCANAPIResponse* output, NSError* error)) handler;



@end
