#import <Foundation/Foundation.h>
#import "PBObject.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* OpenAPI spec version: 10.5.0
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

#import "PBValidateMailingAddressInputRowUserFields.h"


@protocol PBValidateEmailAddressOutput
@end

@interface PBValidateEmailAddressOutput : PBObject

/* These fields are returned, unmodified, in the user_fields section of the response. [optional]
 */
@property(nonatomic) NSArray<PBValidateMailingAddressInputRowUserFields>* userFields;
/* The email address submitted for verification. [optional]
 */
@property(nonatomic) NSString* eMAIL;
/* One character code indicating the validity of the submitted email address. [optional]
 */
@property(nonatomic) NSString* fINDING;
/* The comment string pertaining to the result of the submitted email address. [optional]
 */
@property(nonatomic) NSString* cOMMENT;
/* A short code which maps to each returned COMMENT field value. [optional]
 */
@property(nonatomic) NSString* cOMMENTCODE;
/* Suggested correction for submitted email address, if found. A suggestion will only be provided if it is valid and SafeToDeliver. [optional]
 */
@property(nonatomic) NSString* sUGGEMAIL;
/* This field contains suggestion not SafeToDeliver when ValidateEmailAddress corrected the address and the corrected version of the email address failed one or more SafeToDeliver process checks. [optional]
 */
@property(nonatomic) NSString* sUGGCOMMENT;
/* Pre-formatted response intended to be provided to user. [optional]
 */
@property(nonatomic) NSString* eRRORRESPONSE;
/* Field reserved for special features only. [optional]
 */
@property(nonatomic) NSString* eRROR;
/*  [optional]
 */
@property(nonatomic) NSString* status;
/*  [optional]
 */
@property(nonatomic) NSString* statusCode;
/*  [optional]
 */
@property(nonatomic) NSString* statusDescription;

@end
