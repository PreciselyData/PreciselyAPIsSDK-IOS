#import <Foundation/Foundation.h>
#import "PBObject.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* The version of the OpenAPI document: 16.0.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "PBCandidateRange.h"
#import "PBFieldsMatching.h"
#import "PBGeoPos.h"
#import "PBGeocodeAddress.h"
@protocol PBCandidateRange;
@class PBCandidateRange;
@protocol PBFieldsMatching;
@class PBFieldsMatching;
@protocol PBGeoPos;
@class PBGeoPos;
@protocol PBGeocodeAddress;
@class PBGeocodeAddress;



@protocol PBCandidate
@end

@interface PBCandidate : PBObject


@property(nonatomic) NSNumber* precisionLevel;

@property(nonatomic) NSString* formattedStreetAddress;

@property(nonatomic) NSString* formattedLocationAddress;

@property(nonatomic) NSString* identifier;

@property(nonatomic) NSString* precisionCode;

@property(nonatomic) NSString* sourceDictionary;

@property(nonatomic) PBFieldsMatching* matching;

@property(nonatomic) PBGeoPos* geometry;

@property(nonatomic) PBGeocodeAddress* address;

@property(nonatomic) NSArray<PBCandidateRange>* ranges;

@end
