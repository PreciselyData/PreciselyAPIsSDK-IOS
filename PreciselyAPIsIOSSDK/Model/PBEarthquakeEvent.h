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


#import "PBDepth.h"
#import "PBEarthquakeDateTime.h"
#import "PBEarthquakeLocation.h"
#import "PBMagnitude.h"
@protocol PBDepth;
@class PBDepth;
@protocol PBEarthquakeDateTime;
@class PBEarthquakeDateTime;
@protocol PBEarthquakeLocation;
@class PBEarthquakeLocation;
@protocol PBMagnitude;
@class PBMagnitude;



@protocol PBEarthquakeEvent
@end

@interface PBEarthquakeEvent : PBObject


@property(nonatomic) PBEarthquakeDateTime* dateTime;

@property(nonatomic) NSNumber* seismicRegionNumber;

@property(nonatomic) PBDepth* depth;

@property(nonatomic) PBMagnitude* magnitude;

@property(nonatomic) NSString* cause;

@property(nonatomic) NSString* culturalEffect;

@property(nonatomic) NSNumber* intensity;

@property(nonatomic) NSString* diastrophism;

@property(nonatomic) NSString* miscPhenomena;

@property(nonatomic) PBEarthquakeLocation* location;

@end
