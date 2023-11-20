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


#import "PBIntermediatePoints.h"
#import "PBRouteDirection.h"
#import "PBRouteGeometry.h"
@protocol PBIntermediatePoints;
@class PBIntermediatePoints;
@protocol PBRouteDirection;
@class PBRouteDirection;
@protocol PBRouteGeometry;
@class PBRouteGeometry;



@protocol PBRouteResponse
@end

@interface PBRouteResponse : PBObject


@property(nonatomic) NSString* directionsStyle;

@property(nonatomic) NSNumber* distance;

@property(nonatomic) NSString* distanceUnit;

@property(nonatomic) NSString* language;

@property(nonatomic) NSString* timeUnit;

@property(nonatomic) NSNumber* time;

@property(nonatomic) PBRouteGeometry* geometry;

@property(nonatomic) NSArray<PBRouteDirection>* routeDirections;

@property(nonatomic) PBIntermediatePoints* intermediatePoints;

@end
