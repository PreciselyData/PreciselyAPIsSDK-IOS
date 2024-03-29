#import "PBRangeVariable.h"

@implementation PBRangeVariable

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"count": @"count", @"order": @"order", @"name": @"name", @"alias": @"alias", @"_description": @"description", @"baseVariable": @"baseVariable", @"year": @"year", @"field": @"field" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"count", @"order", @"name", @"alias", @"_description", @"baseVariable", @"year", ];
  return [optionalProperties containsObject:propertyName];
}

@end
