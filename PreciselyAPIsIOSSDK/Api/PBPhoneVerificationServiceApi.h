#import <Foundation/Foundation.h>
#import "PBErrorInfo.h"
#import "PBPhoneVerification.h"
#import "PBApi.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* The version of the OpenAPI document: 12.0.1
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface PBPhoneVerificationServiceApi: NSObject <PBApi>

extern NSString* kPBPhoneVerificationServiceApiErrorDomain;
extern NSInteger kPBPhoneVerificationServiceApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(PBApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Phone verification.
/// This service accepts a phone number as input and returns details distinguishing landline and wireless numbers and also checks if a wireless number can be located.
///
/// @param phoneNumber E.164 formatted phone number. Accepts digits only. Country Code (1) optional for USA &amp; CAN.
/// @param includeNetworkInfo Y or N (default is Y) – if it is N, then network/carrier details will not be added in the response. (optional)
/// 
///  code:200 message:"successful operation",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBPhoneVerification*
-(NSURLSessionTask*) phoneVerificationWithPhoneNumber: (NSString*) phoneNumber
    includeNetworkInfo: (NSString*) includeNetworkInfo
    completionHandler: (void (^)(PBPhoneVerification* output, NSError* error)) handler;



@end
