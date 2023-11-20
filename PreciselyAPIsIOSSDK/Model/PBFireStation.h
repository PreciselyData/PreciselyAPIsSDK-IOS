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


#import "PBDistance.h"
#import "PBFireDepartment.h"
#import "PBFireStationContactDetails.h"
#import "PBGeometry.h"
#import "PBTime.h"
@protocol PBDistance;
@class PBDistance;
@protocol PBFireDepartment;
@class PBFireDepartment;
@protocol PBFireStationContactDetails;
@class PBFireStationContactDetails;
@protocol PBGeometry;
@class PBGeometry;
@protocol PBTime;
@class PBTime;



@protocol PBFireStation
@end

@interface PBFireStation : PBObject


@property(nonatomic) NSString* numWithinDepartment;

@property(nonatomic) NSString* locationReference;

@property(nonatomic) PBDistance* travelDistance;

@property(nonatomic) PBTime* travelTime;

@property(nonatomic) PBFireStationContactDetails* contactDetails;

@property(nonatomic) PBFireDepartment* fireDepartment;

@property(nonatomic) PBGeometry* geometry;

@end
