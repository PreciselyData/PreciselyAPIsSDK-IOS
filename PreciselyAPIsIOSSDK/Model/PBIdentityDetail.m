#import "PBIdentityDetail.h"

@implementation PBIdentityDetail

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"name": @"name", @"age": @"age", @"demographics": @"demographics", @"photos": @"photos", @"profiles": @"profiles", @"urls": @"urls", @"education": @"education", @"employment": @"employment" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"age", @"demographics", @"photos", @"profiles", @"urls", @"education", @"employment"];
  return [optionalProperties containsObject:propertyName];
}

@end
