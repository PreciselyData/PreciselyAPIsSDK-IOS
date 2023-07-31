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


#import "PBTaxCounty.h"
#import "PBTaxPlace.h"
#import "PBTaxState.h"
@protocol PBTaxCounty;
@class PBTaxCounty;
@protocol PBTaxPlace;
@class PBTaxPlace;
@protocol PBTaxState;
@class PBTaxState;



@protocol PBIPDTaxJurisdiction
@end

@interface PBIPDTaxJurisdiction : PBObject


@property(nonatomic) PBTaxState* state;

@property(nonatomic) PBTaxCounty* county;

@property(nonatomic) PBTaxPlace* place;

@end
