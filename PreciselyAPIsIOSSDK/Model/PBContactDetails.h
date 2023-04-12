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


#import "PBAddress.h"
@protocol PBAddress;
@class PBAddress;



@protocol PBContactDetails
@end

@interface PBContactDetails : PBObject


@property(nonatomic) PBAddress* address;

@property(nonatomic) NSString* phone;

@property(nonatomic) NSString* fax;

@property(nonatomic) NSString* countryAccessCode;

@property(nonatomic) NSString* email;

@property(nonatomic) NSString* url;

@end
