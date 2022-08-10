#import "PBAddressesDTO.h"

@implementation PBAddressesDTO

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"pbKey": @"pbKey", @"addressNumber": @"addressNumber", @"streetName": @"streetName", @"unitType": @"unitType", @"unitValue": @"unitValue", @"type": @"type", @"areaName1": @"areaName1", @"areaName2": @"areaName2", @"areaName3": @"areaName3", @"areaName4": @"areaName4", @"postCode": @"postCode", @"postCodeExt": @"postCodeExt", @"country": @"country", @"geometry": @"geometry", @"propertyType": @"propertyType", @"propertyTypeDescription": @"propertyTypeDescription", @"parentPbKey": @"parentPbKey", @"geoId": @"geoId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"pbKey", @"addressNumber", @"streetName", @"unitType", @"unitValue", @"type", @"areaName1", @"areaName2", @"areaName3", @"areaName4", @"postCode", @"postCodeExt", @"country", @"geometry", @"propertyType", @"propertyTypeDescription", @"parentPbKey", @"geoId"];
  return [optionalProperties containsObject:propertyName];
}

@end
