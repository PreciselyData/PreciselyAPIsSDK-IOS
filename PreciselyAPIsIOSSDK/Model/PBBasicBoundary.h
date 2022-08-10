#import <Foundation/Foundation.h>
#import "PBObject.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* The version of the OpenAPI document: 12.0.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "PBBoundaryPoint.h"
#import "PBDistance.h"
#import "PBZonesAddress.h"
#import "PBZonesBoundaryGeometry.h"
@protocol PBBoundaryPoint;
@class PBBoundaryPoint;
@protocol PBDistance;
@class PBDistance;
@protocol PBZonesAddress;
@class PBZonesAddress;
@protocol PBZonesBoundaryGeometry;
@class PBZonesBoundaryGeometry;



@protocol PBBasicBoundary
@end

@interface PBBasicBoundary : PBObject


@property(nonatomic) PBBoundaryPoint* center;

@property(nonatomic) PBDistance* distance;

@property(nonatomic) PBZonesBoundaryGeometry* geometry;

@property(nonatomic) PBZonesAddress* matchedAddress;

@end
