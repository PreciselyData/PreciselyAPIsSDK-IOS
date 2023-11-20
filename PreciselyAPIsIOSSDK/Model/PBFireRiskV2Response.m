#import "PBFireRiskV2Response.h"

@implementation PBFireRiskV2Response

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"objectId": @"objectId", @"state": @"state", @"noharmId": @"noharmId", @"noharmCls": @"noharmCls", @"noharmModel": @"noharmModel", @"riskDesc": @"riskDesc", @"risk50": @"risk50", @"severity": @"severity", @"frequency": @"frequency", @"community": @"community", @"damage": @"damage", @"mitigation": @"mitigation", @"severityGroupElements": @"severityGroupElements", @"frequencyGroupElements": @"frequencyGroupElements", @"communityGroupElements": @"communityGroupElements", @"damageGroupElements": @"damageGroupElements", @"mitigationGroupElements": @"mitigationGroupElements", @"geometry": @"geometry", @"matchedAddress": @"matchedAddress" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"objectId", @"state", @"noharmId", @"noharmCls", @"noharmModel", @"riskDesc", @"risk50", @"severity", @"frequency", @"community", @"damage", @"mitigation", @"severityGroupElements", @"frequencyGroupElements", @"communityGroupElements", @"damageGroupElements", @"mitigationGroupElements", @"geometry", @"matchedAddress"];
  return [optionalProperties containsObject:propertyName];
}

@end
