#import <Foundation/Foundation.h>
#import "PBErrorInfo.h"
#import "PBValidateEmailAddressAPIRequest.h"
#import "PBValidateEmailAddressAPIResponse.h"
#import "PBApi.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* The version of the OpenAPI document: 17.1.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface PBEmailVerificationServiceApi: NSObject <PBApi>

extern NSString* kPBEmailVerificationServiceApiErrorDomain;
extern NSInteger kPBEmailVerificationServiceApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(PBApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// ValidateEmailAddress
/// Confirm that your customer’s mailing address exists and that mail and packages can be delivered to it.
///
/// @param inputEmailAddress 
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBValidateEmailAddressAPIResponse*
-(NSURLSessionTask*) validateEmailAddressWithInputEmailAddress: (PBValidateEmailAddressAPIRequest*) inputEmailAddress
    completionHandler: (void (^)(PBValidateEmailAddressAPIResponse* output, NSError* error)) handler;



@end
