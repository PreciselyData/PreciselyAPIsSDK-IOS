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



@protocol PBValidateEmailAddressInputRow
@end

@interface PBValidateEmailAddressInputRow : PBObject

/* These fields are returned, unmodified, in the user_fields section of the response. [optional]
 */
@property(nonatomic) NSArray<PBGetPostalCodesAPIOutputUserFields>* userFields;
/* Enables or disables real-time confirmation. If the deliverability of an email address cannot be determined via our knowledge base, a real-time confirmation can be attempted. [optional]
 */
@property(nonatomic) NSString* rtc;
/* Specifies whether to check if the email address is fictitious. For example, bgates@microsoft.com. [optional]
 */
@property(nonatomic) NSString* bogus;
/* Specifies whether to check if the email address has a non-personal handle, such as info@, sales@, or webmaster@. For example, sales@example.com. [optional]
 */
@property(nonatomic) NSString* role;
/* Specifies whether to check if the email address appears on the Direct Marketing Association's Do Not Email list (Electronic Mail Preference Service). [optional]
 */
@property(nonatomic) NSString* emps;
/* Specifies whether to check if the email address is associated with a domain that has restrictions on commercial email per the FCC. [optional]
 */
@property(nonatomic) NSString* fccwireless;
/* Specifies whether to check if the email address handle contains derogatory words. [optional]
 */
@property(nonatomic) NSString* language;
/* Specifies whether to check if the owner of the email address is known to submit spam complaints. [optional]
 */
@property(nonatomic) NSString* complain;
/* Specifies whether to check if the email address originates from a website that provides temporary email addresses, or if the email address appears to be temporary [optional]
 */
@property(nonatomic) NSString* disposable;
/* One character code controlling the advanced suggestion behavior.The possible values are: a, c, and n [optional]
 */
@property(nonatomic) NSString* atc;
/* The email address you want to validate. [optional]
 */
@property(nonatomic) NSString* emailAddress;
/* Specifies the timeout for real-time confirmation. See the description of the rtc parameter. Specify the timeout value in milliseconds. Valid values are 0 to 4000. By default, the system allows 1200 milliseconds for this check. [optional]
 */
@property(nonatomic) NSString* rtcTimeout;

@end
