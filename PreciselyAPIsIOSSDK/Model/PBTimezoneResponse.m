#import "PBTimezoneResponse.h"

@implementation PBTimezoneResponse

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"objectId": @"objectId", @"timezoneName": @"timezoneName", @"zoneType": @"zoneType", @"utcOffset": @"utcOffset", @"dstOffset": @"dstOffset", @"timestamp": @"timestamp", @"matchedAddress": @"matchedAddress", @"country": @"country", @"tzValidFrom": @"tzValidFrom", @"tzValidUntill": @"tzValidUntill", @"dstRule": @"dstRule", @"dstValidFrom": @"dstValidFrom", @"dstValidUntill": @"dstValidUntill", @"dstStartDateFormat": @"dstStartDateFormat", @"dstEndDateFormat": @"dstEndDateFormat", @"dstStartDate": @"dstStartDate", @"dstStartTime": @"dstStartTime", @"dstEndTime": @"dstEndTime", @"dstEndDate": @"dstEndDate" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"objectId", @"timezoneName", @"zoneType", @"utcOffset", @"dstOffset", @"timestamp", @"matchedAddress", @"country", @"tzValidFrom", @"tzValidUntill", @"dstRule", @"dstValidFrom", @"dstValidUntill", @"dstStartDateFormat", @"dstEndDateFormat", @"dstStartDate", @"dstStartTime", @"dstEndTime", @"dstEndDate"];
  return [optionalProperties containsObject:propertyName];
}

@end
