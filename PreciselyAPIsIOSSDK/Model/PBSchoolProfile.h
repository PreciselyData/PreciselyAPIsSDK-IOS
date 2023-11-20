#import <Foundation/Foundation.h>
#import "PBObject.h"

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


#import "PBFreeOrReducedPriceLunches.h"
#import "PBStudentEthnicity.h"
@protocol PBFreeOrReducedPriceLunches;
@class PBFreeOrReducedPriceLunches;
@protocol PBStudentEthnicity;
@class PBStudentEthnicity;



@protocol PBSchoolProfile
@end

@interface PBSchoolProfile : PBObject


@property(nonatomic) NSString* blueRibbon;

@property(nonatomic) NSString* internationalBaccalaureate;

@property(nonatomic) NSString* titleI;

@property(nonatomic) NSString* expensePerStudent;

@property(nonatomic) NSString* studentBelowPovertyPct;

@property(nonatomic) NSString* advancePlacementClasses;

@property(nonatomic) PBFreeOrReducedPriceLunches* freeOrReducedPriceLunches;

@property(nonatomic) PBStudentEthnicity* studentEthnicity;

@end
