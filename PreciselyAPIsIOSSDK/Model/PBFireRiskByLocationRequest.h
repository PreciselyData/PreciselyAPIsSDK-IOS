#import <Foundation/Foundation.h>
#import "PBObject.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* The version of the OpenAPI document: 16.0.1
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "PBRiskLocations.h"
#import "PBRiskPreferences.h"
@protocol PBRiskLocations;
@class PBRiskLocations;
@protocol PBRiskPreferences;
@class PBRiskPreferences;



@protocol PBFireRiskByLocationRequest
@end

@interface PBFireRiskByLocationRequest : PBObject


@property(nonatomic) NSArray<PBRiskLocations>* locations;

@property(nonatomic) PBRiskPreferences* preferences;

@end
