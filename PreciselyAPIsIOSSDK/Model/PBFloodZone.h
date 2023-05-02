#import <Foundation/Foundation.h>
#import "PBObject.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* The version of the OpenAPI document: 16.0.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "PBBaseFloodElevation.h"
#import "PBPrimaryZone.h"
@protocol PBBaseFloodElevation;
@class PBBaseFloodElevation;
@protocol PBPrimaryZone;
@class PBPrimaryZone;



@protocol PBFloodZone
@end

@interface PBFloodZone : PBObject


@property(nonatomic) NSString* code;

@property(nonatomic) NSString* areaType;

@property(nonatomic) NSString* riskLevel;

@property(nonatomic) PBPrimaryZone* primaryZone;

@property(nonatomic) PBBaseFloodElevation* baseFloodElevation;

@property(nonatomic) NSString* additionalInfo;

@end
