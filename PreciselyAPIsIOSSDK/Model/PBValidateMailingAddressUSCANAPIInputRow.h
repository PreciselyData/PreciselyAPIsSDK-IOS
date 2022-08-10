#import <Foundation/Foundation.h>
#import "PBObject.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* The version of the OpenAPI document: 12.0.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "PBGetPostalCodesAPIOutputUserFields.h"
@protocol PBGetPostalCodesAPIOutputUserFields;
@class PBGetPostalCodesAPIOutputUserFields;



@protocol PBValidateMailingAddressUSCANAPIInputRow
@end

@interface PBValidateMailingAddressUSCANAPIInputRow : PBObject

/* These fields are returned, unmodified, in the user_fields section of the response. [optional]
 */
@property(nonatomic) NSArray<PBGetPostalCodesAPIOutputUserFields>* userFields;
/* The first address line. [optional]
 */
@property(nonatomic) NSString* addressLine1;
/* The second address line. [optional]
 */
@property(nonatomic) NSString* addressLine2;
/* The third address line. [optional]
 */
@property(nonatomic) NSString* addressLine3;
/* The fourth address line. [optional]
 */
@property(nonatomic) NSString* addressLine4;
/* The company or firm name. [optional]
 */
@property(nonatomic) NSString* firmName;
/* The city name. [optional]
 */
@property(nonatomic) NSString* city;
/* The state or province. [optional]
 */
@property(nonatomic) NSString* stateProvince;
/* The country code or name. [optional]
 */
@property(nonatomic) NSString* country;
/* The postal code for the address. [optional]
 */
@property(nonatomic) NSString* postalCode;
/* U.S. address urbanization name. Used primarily for Puerto Rico addresses. [optional]
 */
@property(nonatomic) NSString* uSUrbanName;
/* Canadian language. [optional]
 */
@property(nonatomic) NSString* canLanguage;

@end
