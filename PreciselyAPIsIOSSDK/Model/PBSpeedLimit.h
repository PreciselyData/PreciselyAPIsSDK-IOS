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


#import "PBRoad.h"
@protocol PBRoad;
@class PBRoad;



@protocol PBSpeedLimit
@end

@interface PBSpeedLimit : PBObject


@property(nonatomic) NSString* maxSpeed;

@property(nonatomic) NSString* speedUnit;

@property(nonatomic) NSString* speedVerification;

@property(nonatomic) NSString* amPeakAvgSpeed;

@property(nonatomic) NSString* pmPeakAvgSpeed;

@property(nonatomic) NSString* offPeakAvgSpeed;

@property(nonatomic) NSString* nightAvgSpeed;

@property(nonatomic) NSString* weekAvgSpeed;

@property(nonatomic) PBRoad* road;

@end
