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


#import "PBAddress.h"
#import "PBSchool.h"
#import "PBSchoolDistrict.h"
@protocol PBAddress;
@class PBAddress;
@protocol PBSchool;
@class PBSchool;
@protocol PBSchoolDistrict;
@class PBSchoolDistrict;



@protocol PBSchoolsNearByResponse
@end

@interface PBSchoolsNearByResponse : PBObject


@property(nonatomic) PBAddress* matchedAddress;

@property(nonatomic) NSArray<PBSchool>* school;

@property(nonatomic) PBSchoolDistrict* schoolDistrict;

@end
