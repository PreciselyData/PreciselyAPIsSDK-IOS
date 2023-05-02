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


#import "PBDemographicsGeometry.h"
@protocol PBDemographicsGeometry;
@class PBDemographicsGeometry;



@protocol PBBoundary
@end

@interface PBBoundary : PBObject


@property(nonatomic) NSString* boundaryId;

@property(nonatomic) NSString* boundaryType;

@property(nonatomic) NSString* boundaryRef;

@property(nonatomic) PBDemographicsGeometry* geometry;

@property(nonatomic) NSString* url;

@end
