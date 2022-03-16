#import "PBGetCityStateProvinceAPIOptions.h"

@implementation PBGetCityStateProvinceAPIOptions

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.outputVanityCity = @"N";
    self.performCanadianProcessing = @"Y";
    self.maximumResults = @"10";
    self.performUSProcessing = @"Y";
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"OutputVanityCity": @"outputVanityCity", @"PerformCanadianProcessing": @"performCanadianProcessing", @"MaximumResults": @"maximumResults", @"PerformUSProcessing": @"performUSProcessing" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"outputVanityCity", @"performCanadianProcessing", @"maximumResults", @"performUSProcessing"];
  return [optionalProperties containsObject:propertyName];
}

@end
