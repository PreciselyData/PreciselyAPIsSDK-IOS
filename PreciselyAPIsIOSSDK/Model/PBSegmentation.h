#import <Foundation/Foundation.h>
#import "PBObject.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* The version of the OpenAPI document: 12.0.1
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "PBBoundaries.h"
#import "PBSegmentationThemes.h"
@protocol PBBoundaries;
@class PBBoundaries;
@protocol PBSegmentationThemes;
@class PBSegmentationThemes;



@protocol PBSegmentation
@end

@interface PBSegmentation : PBObject


@property(nonatomic) PBBoundaries* boundaries;

@property(nonatomic) PBSegmentationThemes* themes;

@end
