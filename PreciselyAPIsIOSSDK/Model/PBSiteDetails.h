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


#import "PBAHJmailingAddress.h"
@protocol PBAHJmailingAddress;
@class PBAHJmailingAddress;



@protocol PBSiteDetails
@end

@interface PBSiteDetails : PBObject


@property(nonatomic) NSString* phone;

@property(nonatomic) NSString* fax;

@property(nonatomic) NSString* contactName;

@property(nonatomic) NSString* email;

@property(nonatomic) PBAHJmailingAddress* address;

@end
