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


#import "PBFloodHazardPreferences.h"
#import "PBRiskLocations.h"
@protocol PBFloodHazardPreferences;
@class PBFloodHazardPreferences;
@protocol PBRiskLocations;
@class PBRiskLocations;



@protocol PBDistanceToFloodHazardLocationRequest
@end

@interface PBDistanceToFloodHazardLocationRequest : PBObject


@property(nonatomic) NSArray<PBRiskLocations>* locations;

@property(nonatomic) PBFloodHazardPreferences* preferences;

@end
