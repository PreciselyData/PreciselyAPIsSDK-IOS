#import <Foundation/Foundation.h>
#import "PBObject.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* The version of the OpenAPI document: 15.0.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "PBCity.h"
#import "PBConsistencyCode.h"
#import "PBGeoLocationCountry.h"
#import "PBGeoLocationState.h"
@protocol PBCity;
@class PBCity;
@protocol PBConsistencyCode;
@class PBConsistencyCode;
@protocol PBGeoLocationCountry;
@class PBGeoLocationCountry;
@protocol PBGeoLocationState;
@class PBGeoLocationState;



@protocol PBGeoLocationPlace
@end

@interface PBGeoLocationPlace : PBObject


@property(nonatomic) NSString* continent;

@property(nonatomic) PBGeoLocationCountry* country;

@property(nonatomic) PBConsistencyCode* consistencyCode;

@property(nonatomic) NSString* region;

@property(nonatomic) PBGeoLocationState* state;

@property(nonatomic) PBCity* city;

@property(nonatomic) NSString* postCode;

@property(nonatomic) NSString* postCodeConfidence;

@end
