#import <Foundation/Foundation.h>
#import "PBObject.h"

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





@protocol PBGetCityStateProvinceAPIOptions
@end

@interface PBGetCityStateProvinceAPIOptions : PBObject

/* Output VanityCity. [optional]
 */
@property(nonatomic) NSString* outputVanityCity;
/* PerformCanadianProcessing. [optional]
 */
@property(nonatomic) NSString* performCanadianProcessing;
/* MaximumResults. [optional]
 */
@property(nonatomic) NSString* maximumResults;
/* PerformUSProcessing. [optional]
 */
@property(nonatomic) NSString* performUSProcessing;

@end
