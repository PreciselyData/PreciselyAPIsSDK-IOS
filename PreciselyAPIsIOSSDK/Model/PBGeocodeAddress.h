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





@protocol PBGeocodeAddress
@end

@interface PBGeocodeAddress : PBObject


@property(nonatomic) NSString* objectId;

@property(nonatomic) NSString* mainAddressLine;

@property(nonatomic) NSString* addressLastLine;

@property(nonatomic) NSString* placeName;

@property(nonatomic) NSString* areaName1;

@property(nonatomic) NSString* areaName2;

@property(nonatomic) NSString* areaName3;

@property(nonatomic) NSString* areaName4;

@property(nonatomic) NSString* postCode1;

@property(nonatomic) NSString* postCode2;

@property(nonatomic) NSString* country;

@property(nonatomic) NSString* addressNumber;

@property(nonatomic) NSString* streetName;

@property(nonatomic) NSString* unitType;

@property(nonatomic) NSString* unitValue;

@property(nonatomic) NSDictionary<NSString*, NSObject*>* customFields;

@end
