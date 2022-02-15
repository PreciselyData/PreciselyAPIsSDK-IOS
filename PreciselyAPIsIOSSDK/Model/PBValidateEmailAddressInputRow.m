#import "PBValidateEmailAddressInputRow.h"

@implementation PBValidateEmailAddressInputRow

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"userFields": @"user_fields", @"rtc": @"rtc", @"bogus": @"bogus", @"role": @"role", @"emps": @"emps", @"fccwireless": @"fccwireless", @"language": @"language", @"complain": @"complain", @"disposable": @"disposable", @"atc": @"atc", @"emailAddress": @"emailAddress", @"rtcTimeout": @"rtc_timeout" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"userFields", @"rtc", @"bogus", @"role", @"emps", @"fccwireless", @"language", @"complain", @"disposable", @"atc", @"emailAddress", @"rtcTimeout"];
  return [optionalProperties containsObject:propertyName];
}

@end
