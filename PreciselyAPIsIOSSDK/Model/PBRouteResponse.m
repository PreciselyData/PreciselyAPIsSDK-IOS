#import "PBRouteResponse.h"

@implementation PBRouteResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"directionsStyle": @"directionsStyle", @"distance": @"distance", @"distanceUnit": @"distanceUnit", @"language": @"language", @"timeUnit": @"timeUnit", @"time": @"time", @"geometry": @"geometry", @"routeDirections": @"routeDirections", @"intermediatePoints": @"intermediatePoints" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"directionsStyle", @"distance", @"distanceUnit", @"language", @"timeUnit", @"time", @"geometry", @"routeDirections", @"intermediatePoints"];
  return [optionalProperties containsObject:propertyName];
}

@end
