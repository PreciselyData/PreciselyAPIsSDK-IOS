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


#import "PBCategory.h"
#import "PBSic.h"
@protocol PBCategory;
@class PBCategory;
@protocol PBSic;
@class PBSic;



@protocol PBPoiClassification
@end

@interface PBPoiClassification : PBObject


@property(nonatomic) PBSic* sic;

@property(nonatomic) PBCategory* category;

@property(nonatomic) NSString* alternateIndustryCode;

@end
