#import "PBIdentity.h"

@implementation PBIdentity

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"fullName": @"fullName", @"ageRange": @"ageRange", @"gender": @"gender", @"location": @"location", @"coreId": @"coreId", @"pbKey": @"pbKey", @"details": @"details" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"fullName", @"ageRange", @"gender", @"location", @"coreId", @"pbKey", @"details"];
  return [optionalProperties containsObject:propertyName];
}

@end
