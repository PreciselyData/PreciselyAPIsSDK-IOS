#import "PBTypeaheadUnit.h"

@implementation PBTypeaheadUnit

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"unitInfo": @"unitInfo", @"formattedUnitAddress": @"formattedUnitAddress", @"postalVerified": @"postalVerified" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"unitInfo", @"formattedUnitAddress", @"postalVerified"];
  return [optionalProperties containsObject:propertyName];
}

@end
