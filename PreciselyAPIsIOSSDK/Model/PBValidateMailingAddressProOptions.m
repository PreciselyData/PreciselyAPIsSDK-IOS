#import "PBValidateMailingAddressProOptions.h"

@implementation PBValidateMailingAddressProOptions

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    self.outputAddressBlocks = @"Y";
    self.keepMultimatch = @"N";
    self.outputCountryFormat = @"E";
    self.outputScript = @"InputScript";
    self.outputCasing = @"M";
    self.maximumResults = @"10";
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"OutputAddressBlocks": @"outputAddressBlocks", @"KeepMultimatch": @"keepMultimatch", @"OutputCountryFormat": @"outputCountryFormat", @"OutputScript": @"outputScript", @"OutputCasing": @"outputCasing", @"MaximumResults": @"maximumResults" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"outputAddressBlocks", @"keepMultimatch", @"outputCountryFormat", @"outputScript", @"outputCasing", @"maximumResults"];
  return [optionalProperties containsObject:propertyName];
}

@end
