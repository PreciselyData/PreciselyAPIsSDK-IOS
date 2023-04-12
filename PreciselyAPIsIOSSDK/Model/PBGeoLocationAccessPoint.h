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


#import "PBAccuracy.h"
#import "PBGeolocationGeometry.h"
@protocol PBAccuracy;
@class PBAccuracy;
@protocol PBGeolocationGeometry;
@class PBGeolocationGeometry;



@protocol PBGeoLocationAccessPoint
@end

@interface PBGeoLocationAccessPoint : PBObject


@property(nonatomic) PBGeolocationGeometry* geometry;

@property(nonatomic) PBAccuracy* accuracy;

@end
