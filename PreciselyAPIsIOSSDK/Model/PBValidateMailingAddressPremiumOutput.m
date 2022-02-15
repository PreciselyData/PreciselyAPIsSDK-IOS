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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"userFields": @"user_fields", @"status": @"Status", @"statusCode": @"Status.Code", @"statusDescription": @"Status.Description", @"confidence": @"Confidence", @"recordType": @"RecordType", @"recordTypeDefault": @"RecordType.Default", @"multipleMatches": @"MultipleMatches", @"couldNotValidate": @"CouldNotValidate", @"countryLevel": @"CountryLevel", @"addressFormat": @"AddressFormat", @"addressLine1": @"AddressLine1", @"addressLine2": @"AddressLine2", @"addressLine3": @"AddressLine3", @"addressLine4": @"AddressLine4", @"city": @"City", @"stateProvince": @"StateProvince", @"postalCode": @"PostalCode", @"postalCodeBase": @"PostalCode.Base", @"postalCodeAddOn": @"PostalCode.AddOn", @"country": @"Country", @"additionalInputData": @"AdditionalInputData", @"firmName": @"FirmName", @"houseNumber": @"HouseNumber", @"leadingDirectional": @"LeadingDirectional", @"streetName": @"StreetName", @"streetSuffix": @"StreetSuffix", @"trailingDirectional": @"TrailingDirectional", @"apartmentLabel": @"ApartmentLabel", @"apartmentNumber": @"ApartmentNumber", @"apartmentLabel2": @"ApartmentLabel2", @"apartmentNumber2": @"ApartmentNumber2", @"rRHC": @"RRHC", @"pOBox": @"POBox", @"privateMailbox": @"PrivateMailbox", @"privateMailboxType": @"PrivateMailbox.Type", @"houseNumberInput": @"HouseNumber.Input", @"leadingDirectionalInput": @"LeadingDirectional.Input", @"streetNameInput": @"StreetName.Input", @"streetSuffixInput": @"StreetSuffix.Input", @"trailingDirectionalInput": @"TrailingDirectional.Input", @"apartmentLabelInput": @"ApartmentLabel.Input", @"apartmentNumberInput": @"ApartmentNumber.Input", @"rRHCInput": @"RRHC.Input", @"pOBoxInput": @"POBox.Input", @"privateMailboxInput": @"PrivateMailbox.Input", @"privateMailboxTypeInput": @"PrivateMailbox.Type.Input", @"cityInput": @"City.Input", @"stateProvinceInput": @"StateProvince.Input", @"postalCodeInput": @"PostalCode.Input", @"countryInput": @"Country.Input", @"firmNameInput": @"FirmName.Input", @"houseNumberResult": @"HouseNumber.Result", @"leadingDirectionalResult": @"LeadingDirectional.Result", @"streetResult": @"Street.Result", @"streetNameResult": @"StreetName.Result", @"streetNameAliasType": @"StreetName.Alias.Type", @"streetSuffixResult": @"StreetSuffix.Result", @"trailingDirectionalResult": @"TrailingDirectional.Result", @"apartmentLabelResult": @"ApartmentLabel.Result", @"apartmentNumberResult": @"ApartmentNumber.Result", @"apartmentLabel2Result": @"ApartmentLabel2.Result", @"apartmentNumber2Result": @"ApartmentNumber2.Result", @"rRHCResult": @"RRHC.Result", @"rRHCType": @"RRHC.Type", @"pOBoxResult": @"POBox.Result", @"cityResult": @"City.Result", @"stateProvinceResult": @"StateProvince.Result", @"postalCodeResult": @"PostalCode.Result", @"postalCodeCityResult": @"PostalCodeCity.Result", @"addressRecordResult": @"AddressRecord.Result", @"postalCodeSource": @"PostalCode.Source", @"postalCodeType": @"PostalCode.Type", @"countryResult": @"Country.Result", @"firmNameResult": @"FirmName.Result", @"streetNamePreferredAliasResult": @"StreetNamePreferredAlias.Result", @"streetNameAbbreviatedAliasResult": @"StreetNameAbbreviatedAlias.Result", @"addressLine5": @"AddressLine5", @"addressQuality": @"AddressQuality", @"deliverability": @"Deliverability", @"addressType": @"AddressType", @"locality": @"Locality", @"changeScore": @"ChangeScore", @"suburb": @"Suburb", @"blockAddress": @"BlockAddress", @"latitude": @"Latitude", @"longitude": @"Longitude" }];
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
