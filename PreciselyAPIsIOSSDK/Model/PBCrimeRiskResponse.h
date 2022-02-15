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


#import "PBRiskAddress.h"
#import "PBRisksBoundaries.h"
#import "PBRisksCrimeTheme.h"
@protocol PBRiskAddress;
@class PBRiskAddress;
@protocol PBRisksBoundaries;
@class PBRisksBoundaries;
@protocol PBRisksCrimeTheme;
@class PBRisksCrimeTheme;



@protocol PBCrimeRiskResponse
@end

@interface PBCrimeRiskResponse : PBObject


@property(nonatomic) NSString* objectId;

@property(nonatomic) NSArray<PBRisksCrimeTheme>* themes;

@property(nonatomic) PBRisksBoundaries* boundaries;

@property(nonatomic) PBRiskAddress* matchedAddress;

@end
