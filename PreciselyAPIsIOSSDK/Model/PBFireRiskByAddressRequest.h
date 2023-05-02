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


#import "PBRiskAddress.h"
#import "PBRiskPreferences.h"
@protocol PBRiskAddress;
@class PBRiskAddress;
@protocol PBRiskPreferences;
@class PBRiskPreferences;



@protocol PBFireRiskByAddressRequest
@end

@interface PBFireRiskByAddressRequest : PBObject


@property(nonatomic) NSArray<PBRiskAddress>* addresses;

@property(nonatomic) PBRiskPreferences* preferences;

@end
