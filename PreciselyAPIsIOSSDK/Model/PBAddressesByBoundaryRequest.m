#import "PBAddressesByBoundaryRequest.h"

@implementation PBAddressesByBoundaryRequest

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"preferences": @"preferences", @"geometry": @"geometry", @"geometryAsText": @"geometryAsText", @"latitude": @"latitude", @"longitude": @"longitude", @"travelTime": @"travelTime", @"travelTimeUnit": @"travelTimeUnit", @"travelDistance": @"travelDistance", @"travelDistanceUnit": @"travelDistanceUnit", @"travelMode": @"travelMode" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"preferences", @"geometry", @"geometryAsText", @"latitude", @"longitude", @"travelTime", @"travelTimeUnit", @"travelDistance", @"travelDistanceUnit", @"travelMode"];
  return [optionalProperties containsObject:propertyName];
}

@end
