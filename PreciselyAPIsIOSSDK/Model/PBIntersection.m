#import "PBIntersection.h"

@implementation PBIntersection

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"distance": @"distance", @"driveTime": @"driveTime", @"driveDistance": @"driveDistance", @"geometry": @"geometry", @"roads": @"roads" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"distance", @"driveTime", @"driveDistance", @"geometry", @"roads"];
  return [optionalProperties containsObject:propertyName];
}

@end
