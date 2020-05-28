#import "PBValidateMailingAddressPremiumOutput.h"

@implementation PBValidateMailingAddressPremiumOutput

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"user_fields": @"userFields", @"Status": @"status", @"Status.Code": @"statusCode", @"Status.Description": @"statusDescription", @"Confidence": @"confidence", @"RecordType": @"recordType", @"RecordType.Default": @"recordTypeDefault", @"MultipleMatches": @"multipleMatches", @"CouldNotValidate": @"couldNotValidate", @"CountryLevel": @"countryLevel", @"AddressFormat": @"addressFormat", @"AddressLine1": @"addressLine1", @"AddressLine2": @"addressLine2", @"AddressLine3": @"addressLine3", @"AddressLine4": @"addressLine4", @"City": @"city", @"StateProvince": @"stateProvince", @"PostalCode": @"postalCode", @"PostalCode.Base": @"postalCodeBase", @"PostalCode.AddOn": @"postalCodeAddOn", @"Country": @"country", @"AdditionalInputData": @"additionalInputData", @"FirmName": @"firmName", @"HouseNumber": @"houseNumber", @"LeadingDirectional": @"leadingDirectional", @"StreetName": @"streetName", @"StreetSuffix": @"streetSuffix", @"TrailingDirectional": @"trailingDirectional", @"ApartmentLabel": @"apartmentLabel", @"ApartmentNumber": @"apartmentNumber", @"ApartmentLabel2": @"apartmentLabel2", @"ApartmentNumber2": @"apartmentNumber2", @"RRHC": @"rRHC", @"POBox": @"pOBox", @"PrivateMailbox": @"privateMailbox", @"PrivateMailbox.Type": @"privateMailboxType", @"HouseNumber.Input": @"houseNumberInput", @"LeadingDirectional.Input": @"leadingDirectionalInput", @"StreetName.Input": @"streetNameInput", @"StreetSuffix.Input": @"streetSuffixInput", @"TrailingDirectional.Input": @"trailingDirectionalInput", @"ApartmentLabel.Input": @"apartmentLabelInput", @"ApartmentNumber.Input": @"apartmentNumberInput", @"RRHC.Input": @"rRHCInput", @"POBox.Input": @"pOBoxInput", @"PrivateMailbox.Input": @"privateMailboxInput", @"PrivateMailbox.Type.Input": @"privateMailboxTypeInput", @"City.Input": @"cityInput", @"StateProvince.Input": @"stateProvinceInput", @"PostalCode.Input": @"postalCodeInput", @"Country.Input": @"countryInput", @"FirmName.Input": @"firmNameInput", @"HouseNumber.Result": @"houseNumberResult", @"LeadingDirectional.Result": @"leadingDirectionalResult", @"Street.Result": @"streetResult", @"StreetName.Result": @"streetNameResult", @"StreetName.Alias.Type": @"streetNameAliasType", @"StreetSuffix.Result": @"streetSuffixResult", @"TrailingDirectional.Result": @"trailingDirectionalResult", @"ApartmentLabel.Result": @"apartmentLabelResult", @"ApartmentNumber.Result": @"apartmentNumberResult", @"ApartmentLabel2.Result": @"apartmentLabel2Result", @"ApartmentNumber2.Result": @"apartmentNumber2Result", @"RRHC.Result": @"rRHCResult", @"RRHC.Type": @"rRHCType", @"POBox.Result": @"pOBoxResult", @"City.Result": @"cityResult", @"StateProvince.Result": @"stateProvinceResult", @"PostalCode.Result": @"postalCodeResult", @"PostalCodeCity.Result": @"postalCodeCityResult", @"AddressRecord.Result": @"addressRecordResult", @"PostalCode.Source": @"postalCodeSource", @"PostalCode.Type": @"postalCodeType", @"Country.Result": @"countryResult", @"FirmName.Result": @"firmNameResult", @"StreetNamePreferredAlias.Result": @"streetNamePreferredAliasResult", @"StreetNameAbbreviatedAlias.Result": @"streetNameAbbreviatedAliasResult", @"AddressLine5": @"addressLine5", @"AddressQuality": @"addressQuality", @"Deliverability": @"deliverability", @"AddressType": @"addressType", @"Locality": @"locality", @"ChangeScore": @"changeScore", @"Suburb": @"suburb", @"BlockAddress": @"blockAddress", @"Latitude": @"latitude", @"Longitude": @"longitude" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"userFields", @"status", @"statusCode", @"statusDescription", @"confidence", @"recordType", @"recordTypeDefault", @"multipleMatches", @"couldNotValidate", @"countryLevel", @"addressFormat", @"addressLine1", @"addressLine2", @"addressLine3", @"addressLine4", @"city", @"stateProvince", @"postalCode", @"postalCodeBase", @"postalCodeAddOn", @"country", @"additionalInputData", @"firmName", @"houseNumber", @"leadingDirectional", @"streetName", @"streetSuffix", @"trailingDirectional", @"apartmentLabel", @"apartmentNumber", @"apartmentLabel2", @"apartmentNumber2", @"rRHC", @"pOBox", @"privateMailbox", @"privateMailboxType", @"houseNumberInput", @"leadingDirectionalInput", @"streetNameInput", @"streetSuffixInput", @"trailingDirectionalInput", @"apartmentLabelInput", @"apartmentNumberInput", @"rRHCInput", @"pOBoxInput", @"privateMailboxInput", @"privateMailboxTypeInput", @"cityInput", @"stateProvinceInput", @"postalCodeInput", @"countryInput", @"firmNameInput", @"houseNumberResult", @"leadingDirectionalResult", @"streetResult", @"streetNameResult", @"streetNameAliasType", @"streetSuffixResult", @"trailingDirectionalResult", @"apartmentLabelResult", @"apartmentNumberResult", @"apartmentLabel2Result", @"apartmentNumber2Result", @"rRHCResult", @"rRHCType", @"pOBoxResult", @"cityResult", @"stateProvinceResult", @"postalCodeResult", @"postalCodeCityResult", @"addressRecordResult", @"postalCodeSource", @"postalCodeType", @"countryResult", @"firmNameResult", @"streetNamePreferredAliasResult", @"streetNameAbbreviatedAliasResult", @"addressLine5", @"addressQuality", @"deliverability", @"addressType", @"locality", @"changeScore", @"suburb", @"blockAddress", @"latitude", @"longitude"];
  return [optionalProperties containsObject:propertyName];
}

@end
