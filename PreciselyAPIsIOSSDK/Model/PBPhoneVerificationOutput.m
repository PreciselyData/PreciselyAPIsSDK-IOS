#import "PBPhoneVerificationOutput.h"

@implementation PBPhoneVerificationOutput

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"mNC": @"MNC", @"mCC": @"MCC", @"carrierName": @"CarrierName", @"phoneType": @"PhoneType", @"phoneNumberFormatted": @"PhoneNumberFormatted", @"countryCode": @"CountryCode", @"phoneNumber": @"PhoneNumber", @"resultCode": @"ResultCode", @"userFields": @"user_fields" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"mNC", @"mCC", @"carrierName", @"phoneType", @"phoneNumberFormatted", @"countryCode", @"phoneNumber", @"resultCode", @"userFields"];
  return [optionalProperties containsObject:propertyName];
}

@end
