#import <Foundation/Foundation.h>
#import "PBObject.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* The version of the OpenAPI document: 18.1.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "PBAddressType.h"
#import "PBGeometry.h"
@protocol PBAddressType;
@class PBAddressType;
@protocol PBGeometry;
@class PBGeometry;



@protocol PBAddressesDTO
@end

@interface PBAddressesDTO : PBObject


@property(nonatomic) NSString* pbKey;

@property(nonatomic) NSString* addressNumber;

@property(nonatomic) NSString* streetName;

@property(nonatomic) NSString* unitType;

@property(nonatomic) NSString* unitValue;

@property(nonatomic) PBAddressType* type;

@property(nonatomic) NSString* areaName1;

@property(nonatomic) NSString* areaName2;

@property(nonatomic) NSString* areaName3;

@property(nonatomic) NSString* areaName4;

@property(nonatomic) NSString* postCode;

@property(nonatomic) NSString* postCodeExt;

@property(nonatomic) NSString* country;

@property(nonatomic) PBGeometry* geometry;

@property(nonatomic) NSString* propertyType;

@property(nonatomic) NSString* propertyTypeDescription;

@property(nonatomic) NSString* parentPbKey;

@property(nonatomic) NSString* geoId;

@end
