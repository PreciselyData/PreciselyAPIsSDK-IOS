#import "PBTypeaheadLocation.h"

@implementation PBTypeaheadLocation

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"dataset": @"dataset", @"match": @"match", @"address": @"address", @"poi": @"poi", @"distance": @"distance", @"unitTemp": @"unitTemp", @"valueTemp": @"valueTemp", @"geometry": @"geometry", @"totalUnitCount": @"totalUnitCount", @"ranges": @"ranges", @"place": @"place" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"dataset", @"match", @"address", @"poi", @"distance", @"unitTemp", @"valueTemp", @"geometry", @"totalUnitCount", @"ranges", @"place"];
  return [optionalProperties containsObject:propertyName];
}

@end
