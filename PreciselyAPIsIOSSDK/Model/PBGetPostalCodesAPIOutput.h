#import <Foundation/Foundation.h>
#import "PBObject.h"

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


#import "PBGetPostalCodesAPIOutputUserFields.h"
@protocol PBGetPostalCodesAPIOutputUserFields;
@class PBGetPostalCodesAPIOutputUserFields;



@protocol PBGetPostalCodesAPIOutput
@end

@interface PBGetPostalCodesAPIOutput : PBObject

/* These fields are returned, unmodified, in the user_fields section of the response. [optional]
 */
@property(nonatomic) NSArray<PBGetPostalCodesAPIOutputUserFields>* userFields;
/* The validated ZIP Code or postal code. [optional]
 */
@property(nonatomic) NSString* postalCode;
/* City.Type [optional]
 */
@property(nonatomic) NSString* cityType;
/* Reports the success or failure of the match attempt. [optional]
 */
@property(nonatomic) NSString* status;
/* Reason for failure, if there is one. [optional]
 */
@property(nonatomic) NSString* statusCode;
/* Description of the problem, if there is one. [optional]
 */
@property(nonatomic) NSString* statusDescription;

@end
