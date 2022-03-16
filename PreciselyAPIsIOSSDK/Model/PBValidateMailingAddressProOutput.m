#import "PBValidateMailingAddressProOutput.h"

@implementation PBValidateMailingAddressProOutput

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"user_fields": @"userFields", @"AddressLine1": @"addressLine1", @"AddressLine2": @"addressLine2", @"FirmName": @"firmName", @"ChangeScore": @"changeScore", @"Locality": @"locality", @"Suburb": @"suburb", @"AddressType": @"addressType", @"Deliverability": @"deliverability", @"AddressQuality": @"addressQuality", @"CouldNotValidate": @"couldNotValidate", @"City": @"city", @"PostalCode": @"postalCode", @"Country": @"country", @"StateProvince": @"stateProvince", @"BlockAddress": @"blockAddress", @"AdditionalInputData": @"additionalInputData", @"PostalCode.Base": @"postalCodeBase", @"PostalCode.AddOn": @"postalCodeAddOn", @"Status": @"status", @"Status.Code": @"statusCode", @"Status.Description": @"statusDescription" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"userFields", @"addressLine1", @"addressLine2", @"firmName", @"changeScore", @"locality", @"suburb", @"addressType", @"deliverability", @"addressQuality", @"couldNotValidate", @"city", @"postalCode", @"country", @"stateProvince", @"blockAddress", @"additionalInputData", @"postalCodeBase", @"postalCodeAddOn", @"status", @"statusCode", @"statusDescription"];
  return [optionalProperties containsObject:propertyName];
}

@end
