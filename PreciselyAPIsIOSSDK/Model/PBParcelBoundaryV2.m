#import "PBParcelBoundaryV2.h"

@implementation PBParcelBoundaryV2

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"objectId": @"objectId", @"parcelApn": @"parcelApn", @"geoId": @"geoId", @"center": @"center", @"countyfips": @"countyfips", @"parcelAreaSqFt": @"parcelAreaSqFt", @"geometry": @"geometry", @"parcelList": @"parcelList", @"adjacentParcelBoundary": @"adjacentParcelBoundary", @"matchedAddress": @"matchedAddress" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"objectId", @"parcelApn", @"geoId", @"center", @"countyfips", @"parcelAreaSqFt", @"geometry", @"parcelList", @"adjacentParcelBoundary", @"matchedAddress"];
  return [optionalProperties containsObject:propertyName];
}

@end
