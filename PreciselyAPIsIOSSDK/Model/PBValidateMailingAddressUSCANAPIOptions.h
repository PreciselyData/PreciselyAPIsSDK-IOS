#import <Foundation/Foundation.h>
#import "PBObject.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* The version of the OpenAPI document: 12.0.1
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol PBValidateMailingAddressUSCANAPIOptions
@end

@interface PBValidateMailingAddressUSCANAPIOptions : PBObject

/* Specifies whether to return a formatted version of the address. [optional]
 */
@property(nonatomic) NSString* outputAddressBlocks;
/* Specifies whether or not to process U.S. addresses. [optional]
 */
@property(nonatomic) NSString* performUSProcessing;
/* Delivery Point Validation (DPV®) validates that a specific address exists [optional]
 */
@property(nonatomic) NSString* performDPV;
/* Specifies whether to return a formatted address when an address cannot be validated. [optional]
 */
@property(nonatomic) NSString* outputFormattedOnFail;
/* Specifies whether to use separators (spaces or hyphens) in ZIP™ Codes or Canadian postal codes. [optional]
 */
@property(nonatomic) NSString* outputPostalCodeSeparator;
/* Specifies the format to use for the country name returned in the Country output field. [optional]
 */
@property(nonatomic) NSString* outputCountryFormat;
/* Indicates whether to return multiple address for input addresses that have more than one possible matches. [optional]
 */
@property(nonatomic) NSString* keepMultimatch;
/* Specifies the casing of the output address. M for mixed case and U for upper case. [optional]
 */
@property(nonatomic) NSString* outputCasing;
/* Specifies a number between 1 and 10 that indicates the maximum number of addresses to be returned. [optional]
 */
@property(nonatomic) NSString* maximumResults;
/* Specifies the type of the output record. [optional]
 */
@property(nonatomic) NSString* outputRecordType;
/* Identifies which output addresses are candidate addresses as value if Y for OutputFieldLevelReturnCodes. [optional]
 */
@property(nonatomic) NSString* outputFieldLevelReturnCodes;
/* Determines the no stat status of an address which means it exists but cannot receive mails. [optional]
 */
@property(nonatomic) NSString* dPVDetermineNoStat;
/* Specifies the algorithm to determe if an input address matches in the postal database. [optional]
 */
@property(nonatomic) NSString* streetMatchingStrictness;
/* Specifies the default apartment label for the output if there is no apartment label in the input address. This is specific to French address.  [optional]
 */
@property(nonatomic) NSString* canFrenchApartmentLabel;
/* Specifies whether to use a street's abbreviated alias in the output if the output address line is longer than 31 characters. [optional]
 */
@property(nonatomic) NSString* outputAbbreviatedAlias;
/* Selecting the match condition where a DPV result does NOT cause a record to fail. [optional]
 */
@property(nonatomic) NSString* dPVSuccessfulStatusCondition;
/* Specifies where Private Mailbox (PMB) information is placed. [optional]
 */
@property(nonatomic) NSString* standardAddressPMBLine;
/* Specifies the algorithm to determining if an input address matches in the postal database. [optional]
 */
@property(nonatomic) NSString* firmMatchingStrictness;
/* Specifies where to place rural route delivery information. [optional]
 */
@property(nonatomic) NSString* canRuralRouteFormat;
/* Specifies whether to select a house number of postal code in case of conflict. [optional]
 */
@property(nonatomic) NSString* canPreferHouseNum;
/* Specifies whether to use a street's preferred alias in the output. [optional]
 */
@property(nonatomic) NSString* outputPreferredAlias;
/* Specifies the algorithm to determine if an input address matches in the postal database. [optional]
 */
@property(nonatomic) NSString* directionalMatchingStrictness;
/* Specifies whether to extract the firm name from AddressLine1 through AddressLine4 and place it in the FirmName output field. [optional]
 */
@property(nonatomic) NSString* extractFirm;
/* Specifies whether to consider Treat Commercial Mail Receiving Agency (CMRA) matches as failures? [optional]
 */
@property(nonatomic) NSString* failOnCMRAMatch;
/* Specifies whether or not non-civic keywords are abbreviated in the output.  [optional]
 */
@property(nonatomic) NSString* canNonCivicFormat;
/* Changes the civic and/or suite information to match the LVR or single-single record. [optional]
 */
@property(nonatomic) NSString* canSSLVRFlg;
/* Specifies how to handle street name aliases used in the input. This is specific to US. [optional]
 */
@property(nonatomic) NSString* outputStreetNameAlias;
/* Specifies the Early Warning System (EWS) that uses the USPS EWS File to validate addresses that are not in the ZIP + 4 database. [optional]
 */
@property(nonatomic) NSString* performEWS;
/* Specifies whether to use the long, medium, or short version of the city if the city has a long name. [optional]
 */
@property(nonatomic) NSString* canOutputCityFormat;
/* Specifies how to return a match if multiple non-blank address lines are present or multiple address types are on the same address line. (U.S. addresses only.) [optional]
 */
@property(nonatomic) NSString* dualAddressLogic;
/* Specifies whether to perform SuiteLink processing. [optional]
 */
@property(nonatomic) NSString* performSuiteLink;
/* Specifies where to place secondary address information in the output address. [optional]
 */
@property(nonatomic) NSString* canStandardAddressFormat;
/* Specifies whether the preferred last line city name should be stored. [optional]
 */
@property(nonatomic) NSString* outputPreferredCity;
/* Specifies whether to return multinational characters, including diacritical marks such as umlauts or accents. [optional]
 */
@property(nonatomic) NSString* outputMultinationalCharacters;
/* Specifies where to place station information. [optional]
 */
@property(nonatomic) NSString* canDeliveryOfficeFormat;
/* Facilitates the conversion of rural route address converting into street-style address using the LACS. [optional]
 */
@property(nonatomic) NSString* performLACSLink;
/* Specifies whether ValidateMailingAddressUSCAN should return a street match or a PO Box/non-civic match when the address contains both civic and non-civic information. [optional]
 */
@property(nonatomic) NSString* canDualAddressLogic;
/* Specifies whether to extract the urbanization name from AddressLine1 through AddressLine4 and place it in the USUrbanName output field.  [optional]
 */
@property(nonatomic) NSString* extractUrb;
/* Specifies where to place secondary address information for U.S. addresses. [optional]
 */
@property(nonatomic) NSString* standardAddressFormat;
/* Specifies how to determine the language (English or French) to use to format the address and directional. [optional]
 */
@property(nonatomic) NSString* canFrenchFormat;
/* Determines if the location has been unoccupied for at least 90 days. [optional]
 */
@property(nonatomic) NSString* dPVDetermineVacancy;
/* Specifies the default apartment label to use in the output if there is no apartment label in the input address. rhis is specific to English addresses. [optional]
 */
@property(nonatomic) NSString* canEnglishApartmentLabel;
/* Specifies whether to supress addresses with Carrier Route R777. [optional]
 */
@property(nonatomic) NSString* suppressZplusPhantomCarrierR777;
/* Specifies whether or not to return the city alias when the alias is in the input address. [optional]
 */
@property(nonatomic) NSString* canOutputCityAlias;
/* Specifies how to format city names that have short city name or non-mailing city name alternatives. [optional]
 */
@property(nonatomic) NSString* outputShortCityName;

@end
