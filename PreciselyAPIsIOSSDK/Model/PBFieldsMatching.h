#import <Foundation/Foundation.h>
#import "PBObject.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* The version of the OpenAPI document: 18.0.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol PBFieldsMatching
@end

@interface PBFieldsMatching : PBObject


@property(nonatomic) NSNumber* matchOnAddressNumber;

@property(nonatomic) NSNumber* matchOnPostCode1;

@property(nonatomic) NSNumber* matchOnPostCode2;

@property(nonatomic) NSNumber* matchOnAreaName1;

@property(nonatomic) NSNumber* matchOnAreaName2;

@property(nonatomic) NSNumber* matchOnAreaName3;

@property(nonatomic) NSNumber* matchOnAreaName4;

@property(nonatomic) NSNumber* matchOnAllStreetFields;

@property(nonatomic) NSNumber* matchOnStreetName;

@property(nonatomic) NSNumber* matchOnStreetType;

@property(nonatomic) NSNumber* matchOnStreetDirectional;

@property(nonatomic) NSNumber* matchOnPlaceName;

@property(nonatomic) NSNumber* matchOnInputFields;

@end
