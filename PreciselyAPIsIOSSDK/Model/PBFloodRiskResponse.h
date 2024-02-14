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


#import "PBCommunity.h"
#import "PBCrimeBoundary.h"
#import "PBFloodZone.h"
#import "PBRiskAddress.h"
#import "PBState.h"
@protocol PBCommunity;
@class PBCommunity;
@protocol PBCrimeBoundary;
@class PBCrimeBoundary;
@protocol PBFloodZone;
@class PBFloodZone;
@protocol PBRiskAddress;
@class PBRiskAddress;
@protocol PBState;
@class PBState;



@protocol PBFloodRiskResponse
@end

@interface PBFloodRiskResponse : PBObject


@property(nonatomic) NSString* objectId;

@property(nonatomic) PBState* state;

@property(nonatomic) PBFloodZone* floodZone;

@property(nonatomic) PBCommunity* community;

@property(nonatomic) PBCrimeBoundary* boundary;

@property(nonatomic) PBRiskAddress* matchedAddress;

@end
