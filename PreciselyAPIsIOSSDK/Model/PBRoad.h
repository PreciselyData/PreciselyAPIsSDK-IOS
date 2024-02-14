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





@protocol PBRoad
@end

@interface PBRoad : PBObject


@property(nonatomic) NSString* _id;

@property(nonatomic) NSString* name;

@property(nonatomic) NSString* altName;

@property(nonatomic) NSString* roadClass;

@property(nonatomic) NSString* type;

@property(nonatomic) NSString* lengthInMeters;

@property(nonatomic) NSString* routeNumber;

@property(nonatomic) NSString* surfaceType;

@property(nonatomic) NSString* trafficFlow;

@property(nonatomic) NSString* isToll;

@property(nonatomic) NSString* beginningLevel;

@property(nonatomic) NSString* endingLevel;

@end
