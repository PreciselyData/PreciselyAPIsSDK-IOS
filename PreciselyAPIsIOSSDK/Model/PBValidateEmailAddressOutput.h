#import <Foundation/Foundation.h>
#import "PBObject.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* The version of the OpenAPI document: 18.0.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "PBGetPostalCodesAPIOutputUserFields.h"
@protocol PBGetPostalCodesAPIOutputUserFields;
@class PBGetPostalCodesAPIOutputUserFields;



@protocol PBValidateEmailAddressOutput
@end

@interface PBValidateEmailAddressOutput : PBObject

/* These fields are returned, unmodified, in the user_fields section of the response. [optional]
 */
@property(nonatomic) NSArray<PBGetPostalCodesAPIOutputUserFields>* userFields;
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

@property(nonatomic) NSString* status;

@property(nonatomic) NSString* statusCode;

@property(nonatomic) NSString* statusDescription;

@end
