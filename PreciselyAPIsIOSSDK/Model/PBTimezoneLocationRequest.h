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


#import "PBLocationTime.h"
@protocol PBLocationTime;
@class PBLocationTime;



@protocol PBTimezoneLocationRequest
@end

@interface PBTimezoneLocationRequest : PBObject


@property(nonatomic) NSArray<PBLocationTime>* locationTime;

@end
