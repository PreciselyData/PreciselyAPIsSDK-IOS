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


#import "PBEarthquakeEvent.h"
@protocol PBEarthquakeEvent;
@class PBEarthquakeEvent;



@protocol PBEarthquakeEventsResponse
@end

@interface PBEarthquakeEventsResponse : PBObject


@property(nonatomic) NSArray<PBEarthquakeEvent>* earthuakeEvents;

@property(nonatomic) NSArray<PBEarthquakeEvent>* event;

@end
