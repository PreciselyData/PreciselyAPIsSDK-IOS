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

#import "PBFreeOrReducedPriceLunches.h"
#import "PBStudentEthnicity.h"


@protocol PBSchoolProfile
@end

@interface PBSchoolProfile : PBObject


@property(nonatomic) NSString* blueRibbon;

@property(nonatomic) NSString* internationalBaccalaureate;

@property(nonatomic) NSString* titleI;

@property(nonatomic) NSString* expensePerStudent;

@property(nonatomic) NSString* studentBelowPovertyPct;

@property(nonatomic) NSString* advancePlacementClasses;

@property(nonatomic) PBFreeOrReducedPriceLunches* freeOrReducedPriceLunches;

@property(nonatomic) PBStudentEthnicity* studentEthnicity;

@end
