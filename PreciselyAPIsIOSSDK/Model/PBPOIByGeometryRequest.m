#import "PBPOIByGeometryRequest.h"

@implementation PBPOIByGeometryRequest

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"name": @"name", @"type": @"type", @"categoryCode": @"categoryCode", @"sicCode": @"sicCode", @"maxCandidates": @"maxCandidates", @"fuzzyOnName": @"fuzzyOnName", @"page": @"page", @"matchMode": @"matchMode", @"specificMatchOn": @"specificMatchOn", @"geometry": @"geometry", @"geometryAsText": @"geometryAsText" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"name", @"type", @"categoryCode", @"sicCode", @"maxCandidates", @"fuzzyOnName", @"page", @"matchMode", @"specificMatchOn", @"geometry", @"geometryAsText"];
  return [optionalProperties containsObject:propertyName];
}

@end
