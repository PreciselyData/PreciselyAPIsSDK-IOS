#import "PBGetCityStateProvinceAPIOutput.h"

@implementation PBGetCityStateProvinceAPIOutput

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"user_fields": @"userFields", @"PostalCode": @"postalCode", @"City": @"city", @"City.Type": @"cityType", @"StateProvince": @"stateProvince", @"Status": @"status", @"Status.Code": @"statusCode", @"Status.Description": @"statusDescription" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"userFields", @"postalCode", @"city", @"cityType", @"stateProvince", @"status", @"statusCode", @"statusDescription"];
  return [optionalProperties containsObject:propertyName];
}

@end
