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


#import "PBCenter.h"
#import "PBZonesAddress.h"
#import "PBZonesPoi.h"
#import "PBZonesPoiGeometry.h"
@protocol PBCenter;
@class PBCenter;
@protocol PBZonesAddress;
@class PBZonesAddress;
@protocol PBZonesPoi;
@class PBZonesPoi;
@protocol PBZonesPoiGeometry;
@class PBZonesPoiGeometry;



@protocol PBPoiBoundary
@end

@interface PBPoiBoundary : PBObject


@property(nonatomic) NSString* objectId;

@property(nonatomic) PBCenter* center;

@property(nonatomic) NSString* countyfips;

@property(nonatomic) PBZonesPoiGeometry* geometry;

@property(nonatomic) NSArray<PBZonesPoi>* poiList;

@property(nonatomic) PBZonesAddress* matchedAddress;

@property(nonatomic) NSString* _id;

@end
