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


#import "PBFireEvent.h"
@protocol PBFireEvent;
@class PBFireEvent;



@protocol PBFireEventsResponse
@end

@interface PBFireEventsResponse : PBObject


@property(nonatomic) NSArray<PBFireEvent>* event;

@end
