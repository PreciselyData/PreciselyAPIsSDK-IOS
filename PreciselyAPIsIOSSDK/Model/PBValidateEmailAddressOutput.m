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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"userFields": @"user_fields", @"eMAIL": @"EMAIL", @"fINDING": @"FINDING", @"cOMMENT": @"COMMENT", @"cOMMENTCODE": @"COMMENT_CODE", @"sUGGEMAIL": @"SUGG_EMAIL", @"sUGGCOMMENT": @"SUGG_COMMENT", @"eRRORRESPONSE": @"ERROR_RESPONSE", @"eRROR": @"ERROR", @"status": @"Status", @"statusCode": @"Status.Code", @"statusDescription": @"Status.Description" }];
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
