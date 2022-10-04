#import "PBOwners.h"

@implementation PBOwners

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"ownerId": @"ownerId", @"firstName": @"firstName", @"middleName": @"middleName", @"lastName": @"lastName", @"ownerName": @"ownerName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"ownerId", @"firstName", @"middleName", @"lastName", @"ownerName"];
  return [optionalProperties containsObject:propertyName];
}

@end
