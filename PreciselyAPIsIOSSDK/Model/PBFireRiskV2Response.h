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


#import "PBCommonGeometry.h"
#import "PBCommunityGroup.h"
#import "PBDamageGroup.h"
#import "PBFrequencyGroup.h"
#import "PBMitigationGroup.h"
#import "PBRiskAddress.h"
#import "PBSeverityGroup.h"
@protocol PBCommonGeometry;
@class PBCommonGeometry;
@protocol PBCommunityGroup;
@class PBCommunityGroup;
@protocol PBDamageGroup;
@class PBDamageGroup;
@protocol PBFrequencyGroup;
@class PBFrequencyGroup;
@protocol PBMitigationGroup;
@class PBMitigationGroup;
@protocol PBRiskAddress;
@class PBRiskAddress;
@protocol PBSeverityGroup;
@class PBSeverityGroup;



@protocol PBFireRiskV2Response
@end

@interface PBFireRiskV2Response : PBObject


@property(nonatomic) NSString* objectId;

@property(nonatomic) NSString* state;

@property(nonatomic) NSString* noharmId;

@property(nonatomic) NSString* noharmCls;

@property(nonatomic) NSString* noharmModel;

@property(nonatomic) NSString* riskDesc;

@property(nonatomic) NSNumber* risk50;

@property(nonatomic) NSNumber* severity;

@property(nonatomic) NSNumber* frequency;

@property(nonatomic) NSNumber* community;

@property(nonatomic) NSNumber* damage;

@property(nonatomic) NSNumber* mitigation;

@property(nonatomic) PBSeverityGroup* severityGroupElements;

@property(nonatomic) PBFrequencyGroup* frequencyGroupElements;

@property(nonatomic) PBCommunityGroup* communityGroupElements;

@property(nonatomic) PBDamageGroup* damageGroupElements;

@property(nonatomic) PBMitigationGroup* mitigationGroupElements;

@property(nonatomic) PBCommonGeometry* geometry;

@property(nonatomic) PBRiskAddress* matchedAddress;

@end
