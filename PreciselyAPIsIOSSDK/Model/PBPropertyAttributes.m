#import "PBPropertyAttributes.h"

@implementation PBPropertyAttributes

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"pbKey": @"pbKey", @"propApn": @"propApn", @"propType": @"propType", @"propSqFt": @"propSqFt", @"buildgSqFt": @"buildgSqFt", @"buildgSqSource": @"buildgSqSource", @"landUse": @"landUse", @"construction": @"construction", @"roofCoverType": @"roofCoverType", @"subdivision": @"subdivision", @"geometry": @"geometry", @"builtYear": @"builtYear", @"bedrooms": @"bedrooms", @"baths": @"baths", @"pool": @"pool", @"firePlace": @"firePlace", @"mobileHome": @"mobileHome", @"heatingType": @"heatingType", @"coolingType": @"coolingType", @"assessedValue": @"assessedValue", @"marketValue": @"marketValue", @"appraisedValue": @"appraisedValue", @"taxAmount": @"taxAmount", @"taxExemptions": @"taxExemptions", @"caExemptions": @"caExemptions", @"stories": @"stories", @"salesDate": @"salesDate", @"priorSaleDate": @"priorSaleDate", @"priorSalesPrice": @"priorSalesPrice", @"livingSqft": @"livingSqft", @"roofFrameType": @"roofFrameType", @"foundation": @"foundation", @"buildgCondition": @"buildgCondition", @"buildgCount": @"buildgCount", @"buildgUnitNo": @"buildgUnitNo", @"buildgFeaturesSqft": @"buildgFeaturesSqft", @"businessName": @"businessName", @"taxAddress": @"taxAddress", @"vacancy": @"vacancy", @"owners": @"owners", @"appraisedValueImp": @"appraisedValueImp", @"assessedValueImp": @"assessedValueImp", @"buildgType": @"buildgType", @"basementType": @"basementType", @"effectiveBuiltYear": @"effectiveBuiltYear", @"exteriorWalls": @"exteriorWalls", @"garageType": @"garageType", @"lastUpdated": @"lastUpdated", @"marketValueImp": @"marketValueImp", @"absenteeOwner": @"absenteeOwner", @"parkingSqFt": @"parkingSqFt", @"replacementCost": @"replacementCost", @"roofShapeType": @"roofShapeType", @"buildgStyle": @"buildgStyle", @"basementSqFt": @"basementSqFt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"pbKey", @"propApn", @"propType", @"propSqFt", @"buildgSqFt", @"buildgSqSource", @"landUse", @"construction", @"roofCoverType", @"subdivision", @"geometry", @"builtYear", @"bedrooms", @"baths", @"pool", @"firePlace", @"mobileHome", @"heatingType", @"coolingType", @"assessedValue", @"marketValue", @"appraisedValue", @"taxAmount", @"taxExemptions", @"caExemptions", @"stories", @"salesDate", @"priorSaleDate", @"priorSalesPrice", @"livingSqft", @"roofFrameType", @"foundation", @"buildgCondition", @"buildgCount", @"buildgUnitNo", @"buildgFeaturesSqft", @"businessName", @"taxAddress", @"vacancy", @"owners", @"appraisedValueImp", @"assessedValueImp", @"buildgType", @"basementType", @"effectiveBuiltYear", @"exteriorWalls", @"garageType", @"lastUpdated", @"marketValueImp", @"absenteeOwner", @"parkingSqFt", @"replacementCost", @"roofShapeType", @"buildgStyle", @"basementSqFt"];
  return [optionalProperties containsObject:propertyName];
}

@end
