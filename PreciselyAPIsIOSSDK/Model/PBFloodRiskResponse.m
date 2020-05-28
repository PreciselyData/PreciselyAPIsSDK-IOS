#import "PBFloodRiskResponse.h"

@implementation PBFloodRiskResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"objectId": @"objectId", @"state": @"state", @"floodZone": @"floodZone", @"community": @"community", @"boundary": @"boundary", @"matchedAddress": @"matchedAddress" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"objectId", @"state", @"floodZone", @"community", @"boundary", @"matchedAddress"];
  return [optionalProperties containsObject:propertyName];
}

@end
