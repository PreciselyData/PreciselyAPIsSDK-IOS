#import "PBTaxRateResponse.h"

@implementation PBTaxRateResponse

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"objectId": @"objectId", @"confidence": @"confidence", @"jurisdiction": @"jurisdiction", @"matchedAddress": @"matchedAddress", @"salesTax": @"salesTax", @"useTax": @"useTax", @"latLongFields": @"latLongFields" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"objectId", @"confidence", @"jurisdiction", @"matchedAddress", @"salesTax", @"useTax", @"latLongFields"];
  return [optionalProperties containsObject:propertyName];
}

@end
