#import <Foundation/Foundation.h>
#import "PBObject.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* The version of the OpenAPI document: 16.0.1
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "PBEarthquakeEventsResponse.h"
@protocol PBEarthquakeEventsResponse;
@class PBEarthquakeEventsResponse;



@protocol PBEarthquakeHistory
@end

@interface PBEarthquakeHistory : PBObject


@property(nonatomic) NSString* stateCode;

@property(nonatomic) NSString* county;

@property(nonatomic) NSString* postCode;

@property(nonatomic) PBEarthquakeEventsResponse* events;

@end
