#import "PBValidateEmailAddressOutput.h"

@implementation PBValidateEmailAddressOutput

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"user_fields": @"userFields", @"EMAIL": @"eMAIL", @"FINDING": @"fINDING", @"COMMENT": @"cOMMENT", @"COMMENT_CODE": @"cOMMENTCODE", @"SUGG_EMAIL": @"sUGGEMAIL", @"SUGG_COMMENT": @"sUGGCOMMENT", @"ERROR_RESPONSE": @"eRRORRESPONSE", @"ERROR": @"eRROR", @"Status": @"status", @"Status.Code": @"statusCode", @"Status.Description": @"statusDescription" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"userFields", @"eMAIL", @"fINDING", @"cOMMENT", @"cOMMENTCODE", @"sUGGEMAIL", @"sUGGCOMMENT", @"eRRORRESPONSE", @"eRROR", @"status", @"statusCode", @"statusDescription"];
  return [optionalProperties containsObject:propertyName];
}

@end
