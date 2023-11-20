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





@protocol PBRisk
@end

@interface PBRisk : PBObject


@property(nonatomic) NSString* type;

@property(nonatomic) NSString* _description;

@property(nonatomic) NSNumber* risk50Rating;

@property(nonatomic) NSNumber* frequency;

@property(nonatomic) NSString* nonburn;

@property(nonatomic) NSNumber* pastFires;

@property(nonatomic) NSNumber* severity;

@property(nonatomic) NSString* continuity;

@property(nonatomic) NSString* adjustment;

@property(nonatomic) NSString* aspect;

@property(nonatomic) NSString* crownFire;

@property(nonatomic) NSString* vegetation;

@property(nonatomic) NSString* foehn;

@property(nonatomic) NSString* golfCourse;

@property(nonatomic) NSString* roadDist;

@property(nonatomic) NSString* slope;

@property(nonatomic) NSString* waterDist;

@property(nonatomic) NSString* tier;

@property(nonatomic) NSString* tierDescription;

@property(nonatomic) NSNumber* distanceToFireStation;

@end
