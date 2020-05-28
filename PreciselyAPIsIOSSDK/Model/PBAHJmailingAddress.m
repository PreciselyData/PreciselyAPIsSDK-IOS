#import "PBAHJmailingAddress.h"

@implementation PBAHJmailingAddress

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"formattedAddress": @"formattedAddress", @"mainAddressLine": @"mainAddressLine", @"addressLastLine": @"addressLastLine", @"placeName": @"placeName", @"areaName1": @"areaName1", @"areaName2": @"areaName2", @"areaName3": @"areaName3", @"areaName4": @"areaName4", @"postCode": @"postCode", @"postCodeExt": @"postCodeExt", @"country": @"country", @"addressNumber": @"addressNumber", @"streetName": @"streetName", @"unitType": @"unitType", @"unitValue": @"unitValue" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"formattedAddress", @"mainAddressLine", @"addressLastLine", @"placeName", @"areaName1", @"areaName2", @"areaName3", @"areaName4", @"postCode", @"postCodeExt", @"country", @"addressNumber", @"streetName", @"unitType", @"unitValue"];
  return [optionalProperties containsObject:propertyName];
}

@end
