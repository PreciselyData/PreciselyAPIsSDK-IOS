#import <Foundation/Foundation.h>
#import "PBObject.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* The version of the OpenAPI document: 12.0.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "PBName.h"
@protocol PBName;
@class PBName;



@protocol PBPlace
@end

@interface PBPlace : PBObject


@property(nonatomic) NSArray<PBName>* name;

@property(nonatomic) NSString* levelName;

@property(nonatomic) NSString* level;

@end
