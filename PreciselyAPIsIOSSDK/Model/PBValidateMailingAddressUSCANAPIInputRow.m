#import "PBValidateMailingAddressUSCANAPIInputRow.h"

@implementation PBValidateMailingAddressUSCANAPIInputRow

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"userFields": @"user_fields", @"addressLine1": @"AddressLine1", @"addressLine2": @"AddressLine2", @"addressLine3": @"AddressLine3", @"addressLine4": @"AddressLine4", @"firmName": @"FirmName", @"city": @"City", @"stateProvince": @"StateProvince", @"country": @"Country", @"postalCode": @"PostalCode", @"uSUrbanName": @"USUrbanName", @"canLanguage": @"CanLanguage" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"userFields", @"addressLine1", @"addressLine2", @"addressLine3", @"addressLine4", @"firmName", @"city", @"stateProvince", @"country", @"postalCode", @"uSUrbanName", @"canLanguage"];
  return [optionalProperties containsObject:propertyName];
}

@end
