#import <Foundation/Foundation.h>
#import "PBObject.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* The version of the OpenAPI document: 11.9.2
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "PBGeometry.h"
#import "PBRoad.h"
#import "PBSet.h"
#import "PBUnit.h"
@protocol PBGeometry;
@class PBGeometry;
@protocol PBRoad;
@class PBRoad;
@protocol PBSet;
@class PBSet;
@protocol PBUnit;
@class PBUnit;



@protocol PBIntersection
@end

@interface PBIntersection : PBObject


@property(nonatomic) PBUnit* distance;

@property(nonatomic) PBUnit* driveTime;

@property(nonatomic) PBUnit* driveDistance;

@property(nonatomic) PBGeometry* geometry;

@property(nonatomic) PBSet<PBRoad>* roads;

@end
