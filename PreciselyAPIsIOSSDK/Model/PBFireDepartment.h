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


#import "PBFireStationContactDetails.h"
@protocol PBFireStationContactDetails;
@class PBFireStationContactDetails;



@protocol PBFireDepartment
@end

@interface PBFireDepartment : PBObject


@property(nonatomic) NSString* name;

@property(nonatomic) NSString* type;

@property(nonatomic) NSNumber* numberOfStations;

@property(nonatomic) NSNumber* administrativeOfficeOnly;

@property(nonatomic) PBFireStationContactDetails* contactDetails;

@end
