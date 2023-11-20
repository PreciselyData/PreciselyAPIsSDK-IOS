#import <Foundation/Foundation.h>
#import "PBObject.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* The version of the OpenAPI document: 17.1.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "PBGeometry.h"
@protocol PBGeometry;
@class PBGeometry;



@protocol PBPOIByGeometryRequest
@end

@interface PBPOIByGeometryRequest : PBObject


@property(nonatomic) NSString* name;

@property(nonatomic) NSString* type;

@property(nonatomic) NSString* categoryCode;

@property(nonatomic) NSString* sicCode;

@property(nonatomic) NSString* maxCandidates;

@property(nonatomic) NSString* fuzzyOnName;

@property(nonatomic) NSString* page;

@property(nonatomic) NSString* matchMode;

@property(nonatomic) NSString* specificMatchOn;

@property(nonatomic) PBGeometry* geometry;

@property(nonatomic) NSString* geometryAsText;

@end
