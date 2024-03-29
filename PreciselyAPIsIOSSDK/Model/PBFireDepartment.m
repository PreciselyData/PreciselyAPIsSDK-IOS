#import "PBFireDepartment.h"

@implementation PBFireDepartment

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"name": @"name", @"type": @"type", @"numberOfStations": @"numberOfStations", @"administrativeOfficeOnly": @"administrativeOfficeOnly", @"contactDetails": @"contactDetails" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"type", @"numberOfStations", @"administrativeOfficeOnly", @"contactDetails"];
  return [optionalProperties containsObject:propertyName];
}

@end
