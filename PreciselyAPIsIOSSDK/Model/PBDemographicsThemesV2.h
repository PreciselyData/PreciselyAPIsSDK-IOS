#import <Foundation/Foundation.h>
#import "PBObject.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* The version of the OpenAPI document: 16.0.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "PBAssetsAndWealthTheme.h"
#import "PBEducationTheme.h"
#import "PBEmploymentTheme.h"
#import "PBExpenditureTheme.h"
#import "PBHealthTheme.h"
#import "PBHouseholdsTheme.h"
#import "PBHousingTheme.h"
#import "PBIncomeTheme.h"
#import "PBPopulationTheme.h"
#import "PBRaceAndEthnicityTheme.h"
#import "PBSupplyAndDemandTheme.h"
@protocol PBAssetsAndWealthTheme;
@class PBAssetsAndWealthTheme;
@protocol PBEducationTheme;
@class PBEducationTheme;
@protocol PBEmploymentTheme;
@class PBEmploymentTheme;
@protocol PBExpenditureTheme;
@class PBExpenditureTheme;
@protocol PBHealthTheme;
@class PBHealthTheme;
@protocol PBHouseholdsTheme;
@class PBHouseholdsTheme;
@protocol PBHousingTheme;
@class PBHousingTheme;
@protocol PBIncomeTheme;
@class PBIncomeTheme;
@protocol PBPopulationTheme;
@class PBPopulationTheme;
@protocol PBRaceAndEthnicityTheme;
@class PBRaceAndEthnicityTheme;
@protocol PBSupplyAndDemandTheme;
@class PBSupplyAndDemandTheme;



@protocol PBDemographicsThemesV2
@end

@interface PBDemographicsThemesV2 : PBObject


@property(nonatomic) NSString* boundaryId;

@property(nonatomic) PBPopulationTheme* populationTheme;

@property(nonatomic) PBRaceAndEthnicityTheme* raceAndEthnicityTheme;

@property(nonatomic) PBHealthTheme* healthTheme;

@property(nonatomic) PBEducationTheme* educationTheme;

@property(nonatomic) PBIncomeTheme* incomeTheme;

@property(nonatomic) PBAssetsAndWealthTheme* assetsAndWealthTheme;

@property(nonatomic) PBHouseholdsTheme* householdsTheme;

@property(nonatomic) PBHousingTheme* housingTheme;

@property(nonatomic) PBEmploymentTheme* employmentTheme;

@property(nonatomic) PBExpenditureTheme* expenditureTheme;

@property(nonatomic) PBSupplyAndDemandTheme* supplyAndDemandTheme;

@end
