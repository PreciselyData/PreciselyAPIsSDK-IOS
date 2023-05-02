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


#import "PBErrorCode.h"
@protocol PBErrorCode;
@class PBErrorCode;



@protocol PBErrorInfo
@end

@interface PBErrorInfo : PBObject


@property(nonatomic) NSArray<PBErrorCode>* errors;

@end
