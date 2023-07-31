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


#import "PBCensus.h"
#import "PBIPDTaxJurisdiction.h"
#import "PBIpd.h"
#import "PBLatLongFields.h"
#import "PBTaxRateMatchedAddress.h"
@protocol PBCensus;
@class PBCensus;
@protocol PBIPDTaxJurisdiction;
@class PBIPDTaxJurisdiction;
@protocol PBIpd;
@class PBIpd;
@protocol PBLatLongFields;
@class PBLatLongFields;
@protocol PBTaxRateMatchedAddress;
@class PBTaxRateMatchedAddress;



@protocol PBTaxDistrictResponse
@end

@interface PBTaxDistrictResponse : PBObject


@property(nonatomic) NSString* vendorName;

@property(nonatomic) NSString* objectId;

@property(nonatomic) NSNumber* confidence;

@property(nonatomic) PBIPDTaxJurisdiction* jurisdiction;

@property(nonatomic) NSNumber* numOfIpdsFound;

@property(nonatomic) NSArray<PBIpd>* ipds;

@property(nonatomic) PBTaxRateMatchedAddress* matchedAddress;

@property(nonatomic) PBCensus* census;

@property(nonatomic) PBLatLongFields* latLongFields;

@end
