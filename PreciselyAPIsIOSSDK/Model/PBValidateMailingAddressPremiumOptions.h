#import <Foundation/Foundation.h>
#import "PBObject.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* OpenAPI spec version: 10.5.0
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/



@protocol PBValidateMailingAddressPremiumOptions
@end

@interface PBValidateMailingAddressPremiumOptions : PBObject

/* Specifies whether to return a formatted version of the address as it would be printed on a physical mail piece. [optional]
 */
@property(nonatomic) NSString* outputAddressBlocks;
/* Specifies whether to return multiple address for those input addresses that have more than one possible match. [optional]
 */
@property(nonatomic) NSString* keepMultimatch;
/* Specifies the format to use for the country name returned in the Country output field. [optional]
 */
@property(nonatomic) NSString* outputCountryFormat;
/* Specifies the type of output record you get. [optional]
 */
@property(nonatomic) NSString* outputRecordType;
/* Specifies whether to include field-level result indicators. [optional]
 */
@property(nonatomic) NSString* outputFieldLevelReturnCodes;
/* Specifies the alphabet or script in which the output should be returned. [optional]
 */
@property(nonatomic) NSString* outputScript;
/* Specify the casing of the output data. [optional]
 */
@property(nonatomic) NSString* outputCasing;
/* A number between 1 and 10 that indicates the maximum number of addresses to return. [optional]
 */
@property(nonatomic) NSString* maximumResults;

@end
