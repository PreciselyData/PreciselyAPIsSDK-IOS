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





@protocol PBCandidateRangeUnit
@end

@interface PBCandidateRangeUnit : PBObject


@property(nonatomic) NSString* placeName;

@property(nonatomic) NSString* unitType;

@property(nonatomic) NSString* highUnitValue;

@property(nonatomic) NSString* lowUnitValue;

@property(nonatomic) NSDictionary<NSString*, NSObject*>* customValues;

@end
