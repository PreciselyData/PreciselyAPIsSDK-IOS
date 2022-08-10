#import "PBFormattedTaxAddress.h"

@implementation PBFormattedTaxAddress

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"mainAddressLine": @"mainAddressLine", @"addressNumber": @"addressNumber", @"streetPreDirection": @"streetPreDirection", @"streetName": @"streetName", @"streetType": @"streetType", @"streetPostDirection": @"streetPostDirection", @"unitType": @"unitType", @"unitValue": @"unitValue", @"city": @"city", @"state": @"state", @"postCode1": @"postCode1", @"postCode2": @"postCode2" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"mainAddressLine", @"addressNumber", @"streetPreDirection", @"streetName", @"streetType", @"streetPostDirection", @"unitType", @"unitValue", @"city", @"state", @"postCode1", @"postCode2"];
  return [optionalProperties containsObject:propertyName];
}

@end
