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


#import "PBAddressesPreferences.h"
#import "PBGeometry.h"
@protocol PBAddressesPreferences;
@class PBAddressesPreferences;
@protocol PBGeometry;
@class PBGeometry;



@protocol PBAddressesByBoundaryRequest
@end

@interface PBAddressesByBoundaryRequest : PBObject


@property(nonatomic) PBAddressesPreferences* preferences;

@property(nonatomic) PBGeometry* geometry;

@property(nonatomic) NSString* geometryAsText;

@property(nonatomic) NSNumber* latitude;

@property(nonatomic) NSNumber* longitude;

@property(nonatomic) NSString* travelTime;

@property(nonatomic) NSString* travelTimeUnit;

@property(nonatomic) NSString* travelDistance;

@property(nonatomic) NSString* travelDistanceUnit;

@property(nonatomic) NSString* travelMode;

@end
