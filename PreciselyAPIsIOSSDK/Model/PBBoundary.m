#import "PBBoundary.h"

@implementation PBBoundary

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"boundaryId": @"boundaryId", @"boundaryType": @"boundaryType", @"boundaryRef": @"boundaryRef", @"geometry": @"geometry", @"url": @"url" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"boundaryId", @"boundaryType", @"boundaryRef", @"geometry", @"url"];
  return [optionalProperties containsObject:propertyName];
}

@end
