#import <Foundation/Foundation.h>
#import "PBValidateEmailAddressAPIRequest.h"
#import "PBValidateEmailAddressAPIResponse.h"
#import "PBApi.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* OpenAPI spec version: 11.0.2
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


@interface PBEmailVerificationServiceApi: NSObject <PBApi>

extern NSString* kPBEmailVerificationServiceApiErrorDomain;
extern NSInteger kPBEmailVerificationServiceApiMissingParamErrorCode;

+(instancetype) sharedAPI;

/// ValidateEmailAddress
/// Confirm that your customer’s mailing address exists and that mail and packages can be delivered to it.
///
/// @param inputEmailAddress 
/// 
///  code:200 message:"OK"
///
/// @return PBValidateEmailAddressAPIResponse*
-(NSNumber*) validateEmailAddressWithInputEmailAddress: (PBValidateEmailAddressAPIRequest*) inputEmailAddress
    completionHandler: (void (^)(PBValidateEmailAddressAPIResponse* output, NSError* error)) handler;



@end
