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

#import "PBValidateMailingAddressInputRowUserFields.h"


@protocol PBValidateMailingAddressPremiumOutput
@end

@interface PBValidateMailingAddressPremiumOutput : PBObject

/* These fields are returned, unmodified, in the user_fields section of the response. [optional]
 */
@property(nonatomic) NSArray<PBValidateMailingAddressInputRowUserFields>* userFields;
/* Reports the success or failure of the match attempt. [optional]
 */
@property(nonatomic) NSString* status;
/* Reason for failure, if there is one. [optional]
 */
@property(nonatomic) NSString* statusCode;
/* Description of the problem, if there is one. [optional]
 */
@property(nonatomic) NSString* statusDescription;
/* The level of confidence assigned to the address being returned. [optional]
 */
@property(nonatomic) NSString* confidence;
/* Type of address record. [optional]
 */
@property(nonatomic) NSString* recordType;
/* Code indicating the default match. [optional]
 */
@property(nonatomic) NSString* recordTypeDefault;
/* Indicates which address component had multiple matches. [optional]
 */
@property(nonatomic) NSString* multipleMatches;
/* Mentions the address component that could not be validated, in case no match is found. [optional]
 */
@property(nonatomic) NSString* couldNotValidate;
/* The category of address matching available. [optional]
 */
@property(nonatomic) NSString* countryLevel;
/* The type of address data being returned. [optional]
 */
@property(nonatomic) NSString* addressFormat;
/* The first line of the validated address. [optional]
 */
@property(nonatomic) NSString* addressLine1;
/* The second line of the validated address. [optional]
 */
@property(nonatomic) NSString* addressLine2;
/* The third line of the validated address. [optional]
 */
@property(nonatomic) NSString* addressLine3;
/* The fourth line of the validated address. [optional]
 */
@property(nonatomic) NSString* addressLine4;
/* The validated city name. [optional]
 */
@property(nonatomic) NSString* city;
/* The validated state or province abbreviation. [optional]
 */
@property(nonatomic) NSString* stateProvince;
/* The validated ZIP Code or postal code. [optional]
 */
@property(nonatomic) NSString* postalCode;
/* The 5-digit ZIP Code. [optional]
 */
@property(nonatomic) NSString* postalCodeBase;
/* The 4-digit add-on part of the ZIP Code. [optional]
 */
@property(nonatomic) NSString* postalCodeAddOn;
/* The country in the format determined by what you selected. [optional]
 */
@property(nonatomic) NSString* country;
/* Input data that could not be matched to a particular address component. [optional]
 */
@property(nonatomic) NSString* additionalInputData;
/* The validated firm or company name. [optional]
 */
@property(nonatomic) NSString* firmName;
/* House number. [optional]
 */
@property(nonatomic) NSString* houseNumber;
/* Leading directional. [optional]
 */
@property(nonatomic) NSString* leadingDirectional;
/* Street name. [optional]
 */
@property(nonatomic) NSString* streetName;
/* Street suffix. [optional]
 */
@property(nonatomic) NSString* streetSuffix;
/* Trailing directional. [optional]
 */
@property(nonatomic) NSString* trailingDirectional;
/* Apartment designator (such as STE or APT). [optional]
 */
@property(nonatomic) NSString* apartmentLabel;
/* Apartment number. [optional]
 */
@property(nonatomic) NSString* apartmentNumber;
/* Secondary apartment designator. [optional]
 */
@property(nonatomic) NSString* apartmentLabel2;
/* Secondary apartment number. [optional]
 */
@property(nonatomic) NSString* apartmentNumber2;
/* Rural Route/Highway Contract indicator. [optional]
 */
@property(nonatomic) NSString* rRHC;
/* Post office box number. [optional]
 */
@property(nonatomic) NSString* pOBox;
/* Private mailbox indicator. [optional]
 */
@property(nonatomic) NSString* privateMailbox;
/* The type of private mailbox. [optional]
 */
@property(nonatomic) NSString* privateMailboxType;
/* House number. [optional]
 */
@property(nonatomic) NSString* houseNumberInput;
/* Leading directional. [optional]
 */
@property(nonatomic) NSString* leadingDirectionalInput;
/* Street name. [optional]
 */
@property(nonatomic) NSString* streetNameInput;
/* Street suffix. [optional]
 */
@property(nonatomic) NSString* streetSuffixInput;
/* Trailing directional. [optional]
 */
@property(nonatomic) NSString* trailingDirectionalInput;
/* Apartment designator (such as STE or APT). [optional]
 */
@property(nonatomic) NSString* apartmentLabelInput;
/* Apartment number. [optional]
 */
@property(nonatomic) NSString* apartmentNumberInput;
/* Rural Route/Highway Contract indicator. [optional]
 */
@property(nonatomic) NSString* rRHCInput;
/* Post office box number. [optional]
 */
@property(nonatomic) NSString* pOBoxInput;
/* Private mailbox indicator. [optional]
 */
@property(nonatomic) NSString* privateMailboxInput;
/* The type of private mailbox. [optional]
 */
@property(nonatomic) NSString* privateMailboxTypeInput;
/* Validated city name. [optional]
 */
@property(nonatomic) NSString* cityInput;
/* Validated state or province name. [optional]
 */
@property(nonatomic) NSString* stateProvinceInput;
/* Validated postal code. [optional]
 */
@property(nonatomic) NSString* postalCodeInput;
/* Country. Format is determined by what you selected in OutputCountryFormat. [optional]
 */
@property(nonatomic) NSString* countryInput;
/* The validated firm or company name. [optional]
 */
@property(nonatomic) NSString* firmNameInput;
/* The field-level result indicator for HouseNumber. [optional]
 */
@property(nonatomic) NSString* houseNumberResult;
/* The field-level result indicator for LeadingDirectional. [optional]
 */
@property(nonatomic) NSString* leadingDirectionalResult;
/* The field-level result indicator for Street. [optional]
 */
@property(nonatomic) NSString* streetResult;
/* The field-level result indicator for StreetName. [optional]
 */
@property(nonatomic) NSString* streetNameResult;
/* The field-level result indicator for StreetName Alias. [optional]
 */
@property(nonatomic) NSString* streetNameAliasType;
/* The field-level result indicator for StreetSuffix. [optional]
 */
@property(nonatomic) NSString* streetSuffixResult;
/* The field-level result indicator for TrailingDirectional. [optional]
 */
@property(nonatomic) NSString* trailingDirectionalResult;
/* The field-level result indicator for ApartmentLabel. [optional]
 */
@property(nonatomic) NSString* apartmentLabelResult;
/* The field-level result indicator for ApartmentNumber. [optional]
 */
@property(nonatomic) NSString* apartmentNumberResult;
/* The field-level result indicator for ApartmentLabel2. [optional]
 */
@property(nonatomic) NSString* apartmentLabel2Result;
/* The field-level result indicator for ApartmentNumber2. [optional]
 */
@property(nonatomic) NSString* apartmentNumber2Result;
/* The field-level result indicator for RRHC. [optional]
 */
@property(nonatomic) NSString* rRHCResult;
/* The field-level result indicator for RRHC Type. [optional]
 */
@property(nonatomic) NSString* rRHCType;
/* The field-level result indicator for POBox. [optional]
 */
@property(nonatomic) NSString* pOBoxResult;
/* The field-level result indicator for City. [optional]
 */
@property(nonatomic) NSString* cityResult;
/* The field-level result indicator for StateProvince. [optional]
 */
@property(nonatomic) NSString* stateProvinceResult;
/* The field-level result indicator for PostalCode. [optional]
 */
@property(nonatomic) NSString* postalCodeResult;
/* The field-level result indicator for PostalCodeCity. [optional]
 */
@property(nonatomic) NSString* postalCodeCityResult;
/* The field-level result indicator for AddressRecord. [optional]
 */
@property(nonatomic) NSString* addressRecordResult;
/* The field-level result indicator for PostalCode Source. [optional]
 */
@property(nonatomic) NSString* postalCodeSource;
/* Indicates the type of postal code returned. [optional]
 */
@property(nonatomic) NSString* postalCodeType;
/* The validated firm or company name. [optional]
 */
@property(nonatomic) NSString* countryResult;
/* Indicates if the firm name got validated. [optional]
 */
@property(nonatomic) NSString* firmNameResult;
/* Indicates the result of preferred alias processing. [optional]
 */
@property(nonatomic) NSString* streetNamePreferredAliasResult;
/* Indicates the result of abbreviated alias processing. [optional]
 */
@property(nonatomic) NSString* streetNameAbbreviatedAliasResult;
/* The fifth line of the validated address. [optional]
 */
@property(nonatomic) NSString* addressLine5;
/* A two character code indicating overall quality of the resulting address. [optional]
 */
@property(nonatomic) NSString* addressQuality;
/* An estimate of confidence that an item mailed or shipped to this address would be successfully delivered. [optional]
 */
@property(nonatomic) NSString* deliverability;
/* A single letter code that indicates the type of address. [optional]
 */
@property(nonatomic) NSString* addressType;
/* A locality is a village in rural areas or it may be a suburb in urban areas. [optional]
 */
@property(nonatomic) NSString* locality;
/* A value of 0 and 100 that reflects how much the address has changed to make it valid. [optional]
 */
@property(nonatomic) NSString* changeScore;
/* The validated firm or company name. [optional]
 */
@property(nonatomic) NSString* suburb;
/* It is the formatted address, as it would appear on a physical mail piece. [optional]
 */
@property(nonatomic) NSString* blockAddress;
/* Seven-digit number in degrees, calculated to four decimal places. [optional]
 */
@property(nonatomic) NSString* latitude;
/* Seven-digit number in degrees, calculated to four decimal places. [optional]
 */
@property(nonatomic) NSString* longitude;

@end
