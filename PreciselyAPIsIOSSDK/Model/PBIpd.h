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


#import "PBBoundaryBuffer.h"
#import "PBDistrictType.h"
#import "PBRate.h"
@protocol PBBoundaryBuffer;
@class PBBoundaryBuffer;
@protocol PBDistrictType;
@class PBDistrictType;
@protocol PBRate;
@class PBRate;



@protocol PBIpd
@end

@interface PBIpd : PBObject


@property(nonatomic) NSString* _id;

@property(nonatomic) NSString* districtName;

@property(nonatomic) PBDistrictType* districtType;

@property(nonatomic) NSString* taxCodeDescription;

@property(nonatomic) NSString* effectiveDate;

@property(nonatomic) NSString* expirationDate;

@property(nonatomic) PBBoundaryBuffer* boundaryBuffer;

@property(nonatomic) NSArray<PBRate>* rates;

@end
