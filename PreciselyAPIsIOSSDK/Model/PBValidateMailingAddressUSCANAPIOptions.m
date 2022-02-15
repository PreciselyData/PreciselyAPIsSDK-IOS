#import "PBValidateMailingAddressUSCANAPIOptions.h"

@implementation PBValidateMailingAddressUSCANAPIOptions

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.outputAddressBlocks = @"Y";
    self.performUSProcessing = @"Y";
    self.performDPV = @"N";
    self.outputFormattedOnFail = @"N";
    self.outputPostalCodeSeparator = @"Y";
    self.outputCountryFormat = @"E";
    self.keepMultimatch = @"N";
    self.outputCasing = @"M";
    self.maximumResults = @"10";
    self.outputRecordType = @"A";
    self.outputFieldLevelReturnCodes = @"N";
    self.dPVDetermineNoStat = @"N";
    self.streetMatchingStrictness = @"M";
    self.canFrenchApartmentLabel = @"Appartement";
    self.outputAbbreviatedAlias = @"N";
    self.dPVSuccessfulStatusCondition = @"A";
    self.standardAddressPMBLine = @"N";
    self.firmMatchingStrictness = @"M";
    self.canRuralRouteFormat = @"A";
    self.canPreferHouseNum = @"N";
    self.outputPreferredAlias = @"N";
    self.directionalMatchingStrictness = @"M";
    self.extractFirm = @"N";
    self.failOnCMRAMatch = @"N";
    self.canNonCivicFormat = @"A";
    self.canSSLVRFlg = @"N";
    self.outputStreetNameAlias = @"Y";
    self.performEWS = @"N";
    self.canOutputCityFormat = @"D";
    self.dualAddressLogic = @"N";
    self.performSuiteLink = @"N";
    self.canStandardAddressFormat = @"D";
    self.outputPreferredCity = @"Z";
    self.outputMultinationalCharacters = @"N";
    self.canDeliveryOfficeFormat = @"I";
    self.performLACSLink = @"Y";
    self.canDualAddressLogic = @"D";
    self.extractUrb = @"N";
    self.standardAddressFormat = @"C";
    self.canFrenchFormat = @"C";
    self.dPVDetermineVacancy = @"N";
    self.canEnglishApartmentLabel = @"Apt";
    self.suppressZplusPhantomCarrierR777 = @"N";
    self.canOutputCityAlias = @"N";
    self.outputShortCityName = @"N";
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"outputAddressBlocks": @"OutputAddressBlocks", @"performUSProcessing": @"PerformUSProcessing", @"performDPV": @"PerformDPV", @"outputFormattedOnFail": @"OutputFormattedOnFail", @"outputPostalCodeSeparator": @"OutputPostalCodeSeparator", @"outputCountryFormat": @"OutputCountryFormat", @"keepMultimatch": @"KeepMultimatch", @"outputCasing": @"OutputCasing", @"maximumResults": @"MaximumResults", @"outputRecordType": @"OutputRecordType", @"outputFieldLevelReturnCodes": @"OutputFieldLevelReturnCodes", @"dPVDetermineNoStat": @"DPVDetermineNoStat", @"streetMatchingStrictness": @"StreetMatchingStrictness", @"canFrenchApartmentLabel": @"CanFrenchApartmentLabel", @"outputAbbreviatedAlias": @"OutputAbbreviatedAlias", @"dPVSuccessfulStatusCondition": @"DPVSuccessfulStatusCondition", @"standardAddressPMBLine": @"StandardAddressPMBLine", @"firmMatchingStrictness": @"FirmMatchingStrictness", @"canRuralRouteFormat": @"CanRuralRouteFormat", @"canPreferHouseNum": @"CanPreferHouseNum", @"outputPreferredAlias": @"OutputPreferredAlias", @"directionalMatchingStrictness": @"DirectionalMatchingStrictness", @"extractFirm": @"ExtractFirm", @"failOnCMRAMatch": @"FailOnCMRAMatch", @"canNonCivicFormat": @"CanNonCivicFormat", @"canSSLVRFlg": @"CanSSLVRFlg", @"outputStreetNameAlias": @"OutputStreetNameAlias", @"performEWS": @"PerformEWS", @"canOutputCityFormat": @"CanOutputCityFormat", @"dualAddressLogic": @"DualAddressLogic", @"performSuiteLink": @"PerformSuiteLink", @"canStandardAddressFormat": @"CanStandardAddressFormat", @"outputPreferredCity": @"OutputPreferredCity", @"outputMultinationalCharacters": @"OutputMultinationalCharacters", @"canDeliveryOfficeFormat": @"CanDeliveryOfficeFormat", @"performLACSLink": @"PerformLACSLink", @"canDualAddressLogic": @"CanDualAddressLogic", @"extractUrb": @"ExtractUrb", @"standardAddressFormat": @"StandardAddressFormat", @"canFrenchFormat": @"CanFrenchFormat", @"dPVDetermineVacancy": @"DPVDetermineVacancy", @"canEnglishApartmentLabel": @"CanEnglishApartmentLabel", @"suppressZplusPhantomCarrierR777": @"SuppressZplusPhantomCarrierR777", @"canOutputCityAlias": @"CanOutputCityAlias", @"outputShortCityName": @"OutputShortCityName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"outputAddressBlocks", @"performUSProcessing", @"performDPV", @"outputFormattedOnFail", @"outputPostalCodeSeparator", @"outputCountryFormat", @"keepMultimatch", @"outputCasing", @"maximumResults", @"outputRecordType", @"outputFieldLevelReturnCodes", @"dPVDetermineNoStat", @"streetMatchingStrictness", @"canFrenchApartmentLabel", @"outputAbbreviatedAlias", @"dPVSuccessfulStatusCondition", @"standardAddressPMBLine", @"firmMatchingStrictness", @"canRuralRouteFormat", @"canPreferHouseNum", @"outputPreferredAlias", @"directionalMatchingStrictness", @"extractFirm", @"failOnCMRAMatch", @"canNonCivicFormat", @"canSSLVRFlg", @"outputStreetNameAlias", @"performEWS", @"canOutputCityFormat", @"dualAddressLogic", @"performSuiteLink", @"canStandardAddressFormat", @"outputPreferredCity", @"outputMultinationalCharacters", @"canDeliveryOfficeFormat", @"performLACSLink", @"canDualAddressLogic", @"extractUrb", @"standardAddressFormat", @"canFrenchFormat", @"dPVDetermineVacancy", @"canEnglishApartmentLabel", @"suppressZplusPhantomCarrierR777", @"canOutputCityAlias", @"outputShortCityName"];
  return [optionalProperties containsObject:propertyName];
}

@end
