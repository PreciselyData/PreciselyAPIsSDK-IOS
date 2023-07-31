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


#import "PBAddress.h"
#import "PBAreaCodeInfo.h"
#import "PBCounty.h"
#import "PBGeometry.h"
#import "PBMatch.h"
@protocol PBAddress;
@class PBAddress;
@protocol PBAreaCodeInfo;
@class PBAreaCodeInfo;
@protocol PBCounty;
@class PBCounty;
@protocol PBGeometry;
@class PBGeometry;
@protocol PBMatch;
@class PBMatch;



@protocol PBRateCenterResponse
@end

@interface PBRateCenterResponse : PBObject


@property(nonatomic) NSString* _id;

@property(nonatomic) NSString* name;

@property(nonatomic) NSString* alternateName;

@property(nonatomic) NSString* areaName1;

@property(nonatomic) PBGeometry* geometry;

@property(nonatomic) NSArray<PBAreaCodeInfo>* areaCodeInfoList;

@property(nonatomic) PBAddress* matchedAddress;

@property(nonatomic) PBMatch* match;

@property(nonatomic) PBCounty* county;

@property(nonatomic) NSNumber* count;

@property(nonatomic) NSString* productCode;

@end
