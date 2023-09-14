#import "PBParcelV2.h"

@implementation PBParcelV2

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"preciselyId": @"preciselyId", @"parentPreciselyId": @"parentPreciselyId", @"address": @"address", @"taxApn": @"taxApn", @"taxAccountNumber": @"taxAccountNumber", @"propLinkId": @"propLinkId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"preciselyId", @"parentPreciselyId", @"address", @"taxApn", @"taxAccountNumber", @"propLinkId"];
  return [optionalProperties containsObject:propertyName];
}

@end
