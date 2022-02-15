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


#import "PBCensus.h"
#import "PBLatLongFields.h"
#import "PBSalesTax.h"
#import "PBTaxJurisdiction.h"
#import "PBTaxRateMatchedAddress.h"
#import "PBUseTax.h"
@protocol PBCensus;
@class PBCensus;
@protocol PBLatLongFields;
@class PBLatLongFields;
@protocol PBSalesTax;
@class PBSalesTax;
@protocol PBTaxJurisdiction;
@class PBTaxJurisdiction;
@protocol PBTaxRateMatchedAddress;
@class PBTaxRateMatchedAddress;
@protocol PBUseTax;
@class PBUseTax;



@protocol PBTaxRateResponse
@end

@interface PBTaxRateResponse : PBObject


@property(nonatomic) NSString* objectId;

@property(nonatomic) NSString* vendorName;

@property(nonatomic) NSString* gnisCode;

@property(nonatomic) NSNumber* confidence;

@property(nonatomic) PBTaxJurisdiction* jurisdiction;

@property(nonatomic) PBTaxRateMatchedAddress* matchedAddress;

@property(nonatomic) PBSalesTax* salesTax;

@property(nonatomic) PBUseTax* useTax;

@property(nonatomic) PBCensus* census;

@property(nonatomic) PBLatLongFields* latLongFields;

@property(nonatomic) PBTaxRateMatchedAddress* address;

@end
