#import <Foundation/Foundation.h>
#import "PBObject.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* The version of the OpenAPI document: 18.1.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "PBBusinessId.h"
#import "PBContactDetails.h"
#import "PBDistance.h"
#import "PBDomesticUltimateBusiness.h"
#import "PBEmployeeCount.h"
#import "PBGeometry.h"
#import "PBGlobalUltimateBusiness.h"
#import "PBParentBusiness.h"
#import "PBPoiClassification.h"
#import "PBSalesVolume.h"
@protocol PBBusinessId;
@class PBBusinessId;
@protocol PBContactDetails;
@class PBContactDetails;
@protocol PBDistance;
@class PBDistance;
@protocol PBDomesticUltimateBusiness;
@class PBDomesticUltimateBusiness;
@protocol PBEmployeeCount;
@class PBEmployeeCount;
@protocol PBGeometry;
@class PBGeometry;
@protocol PBGlobalUltimateBusiness;
@class PBGlobalUltimateBusiness;
@protocol PBParentBusiness;
@class PBParentBusiness;
@protocol PBPoiClassification;
@class PBPoiClassification;
@protocol PBSalesVolume;
@class PBSalesVolume;



@protocol PBPoi
@end

@interface PBPoi : PBObject


@property(nonatomic) NSString* _id;

@property(nonatomic) NSString* poiId;

@property(nonatomic) NSString* name;

@property(nonatomic) NSString* pbkey;

@property(nonatomic) NSString* parentPbkey;

@property(nonatomic) NSString* geocodeConfidence;

@property(nonatomic) NSString* brandName;

@property(nonatomic) NSString* tradeName;

@property(nonatomic) NSString* franchiseName;

@property(nonatomic) NSString* open24Hours;

@property(nonatomic) PBDistance* distance;

@property(nonatomic) PBBusinessId* businessId;

@property(nonatomic) NSString* relevanceScore;

@property(nonatomic) PBContactDetails* contactDetails;

@property(nonatomic) PBPoiClassification* poiClassification;

@property(nonatomic) NSArray<PBSalesVolume>* salesVolume;

@property(nonatomic) PBEmployeeCount* employeeCount;

@property(nonatomic) NSString* yearStart;

@property(nonatomic) NSString* goodsAgentCode;

@property(nonatomic) NSString* goodsAgentCodeDescription;

@property(nonatomic) NSString* legalStatusCode;

@property(nonatomic) NSString* organizationStatusCode;

@property(nonatomic) NSString* organizationStatusCodeDescription;

@property(nonatomic) NSString* subsidaryIndicator;

@property(nonatomic) NSString* subsidaryIndicatorDescription;

@property(nonatomic) PBParentBusiness* parentBusiness;

@property(nonatomic) PBDomesticUltimateBusiness* domesticUltimateBusiness;

@property(nonatomic) NSString* globalUltimateIndicator;

@property(nonatomic) PBGlobalUltimateBusiness* globalUltimateBusiness;

@property(nonatomic) NSString* familyMembers;

@property(nonatomic) NSString* hierarchyCode;

@property(nonatomic) NSString* tickerSymbol;

@property(nonatomic) NSString* exchangeName;

@property(nonatomic) NSString* ceoName;

@property(nonatomic) NSString* ceoTitle;

@property(nonatomic) PBGeometry* geometry;

@end
