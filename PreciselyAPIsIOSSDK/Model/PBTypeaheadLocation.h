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


#import "PBAddress.h"
#import "PBDistance.h"
#import "PBGeometry.h"
#import "PBMatch.h"
#import "PBPlace.h"
#import "PBPoi.h"
#import "PBTypeaheadRange.h"
@protocol PBAddress;
@class PBAddress;
@protocol PBDistance;
@class PBDistance;
@protocol PBGeometry;
@class PBGeometry;
@protocol PBMatch;
@class PBMatch;
@protocol PBPlace;
@class PBPlace;
@protocol PBPoi;
@class PBPoi;
@protocol PBTypeaheadRange;
@class PBTypeaheadRange;



@protocol PBTypeaheadLocation
@end

@interface PBTypeaheadLocation : PBObject


@property(nonatomic) NSString* dataset;

@property(nonatomic) PBMatch* match;

@property(nonatomic) PBAddress* address;

@property(nonatomic) PBPoi* poi;

@property(nonatomic) PBDistance* distance;

@property(nonatomic) NSString* unitTemp;

@property(nonatomic) NSString* valueTemp;

@property(nonatomic) PBGeometry* geometry;

@property(nonatomic) NSNumber* totalUnitCount;

@property(nonatomic) NSArray<PBTypeaheadRange>* ranges;

@property(nonatomic) PBPlace* place;

@end
