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


#import "PBRiskAddress.h"
#import "PBWaterBody.h"
@protocol PBRiskAddress;
@class PBRiskAddress;
@protocol PBWaterBody;
@class PBWaterBody;



@protocol PBWaterBodyResponse
@end

@interface PBWaterBodyResponse : PBObject


@property(nonatomic) NSString* objectId;

@property(nonatomic) NSArray<PBWaterBody>* waterBody;

@property(nonatomic) PBRiskAddress* matchedAddress;

@end
