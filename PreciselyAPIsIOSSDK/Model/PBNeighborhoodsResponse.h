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


#import "PBLocation.h"
@protocol PBLocation;
@class PBLocation;



@protocol PBNeighborhoodsResponse
@end

@interface PBNeighborhoodsResponse : PBObject


@property(nonatomic) NSArray<PBLocation>* location;

@end
