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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"pbKey": @"pbKey", @"propApn": @"propApn", @"propType": @"propType", @"propSqFt": @"propSqFt", @"buildgSqFt": @"buildgSqFt", @"buildgSqFtSource": @"buildgSqFtSource", @"landUse": @"landUse", @"construction": @"construction", @"roofCoverType": @"roofCoverType", @"subdivision": @"subdivision", @"geometry": @"geometry", @"builtYear": @"builtYear", @"bedrooms": @"bedrooms", @"baths": @"baths", @"pool": @"pool", @"fireplace": @"fireplace", @"mobileHome": @"mobileHome", @"heatingType": @"heatingType", @"coolingType": @"coolingType", @"assessedValue": @"assessedValue", @"marketValue": @"marketValue", @"appraisedValue": @"appraisedValue", @"taxAmount": @"taxAmount", @"taxExemptions": @"taxExemptions", @"caExemptions": @"caExemptions", @"salesDate": @"salesDate", @"priorSaleDate": @"priorSaleDate", @"priorSalesPrice": @"priorSalesPrice", @"stories": @"stories", @"livingSqFt": @"livingSqFt", @"roofFrameType": @"roofFrameType", @"foundation": @"foundation", @"buildgCondition": @"buildgCondition", @"buildgCount": @"buildgCount", @"buildgUnitNo": @"buildgUnitNo", @"buildgFeaturesSqFt": @"buildgFeaturesSqFt", @"businessName": @"businessName", @"taxAddress": @"taxAddress", @"vacancy": @"vacancy", @"owners": @"owners", @"appraisedValueImp": @"appraisedValueImp", @"assessedValueImp": @"assessedValueImp", @"buildgType": @"buildgType", @"basementType": @"basementType", @"effectiveBuiltYear": @"effectiveBuiltYear", @"exteriorWalls": @"exteriorWalls", @"garageType": @"garageType", @"lastUpdated": @"lastUpdated", @"marketValueImp": @"marketValueImp", @"absenteeOwner": @"absenteeOwner", @"parkingSqFt": @"parkingSqFt", @"replacementCost": @"replacementCost", @"roofShapeType": @"roofShapeType", @"buildgStyle": @"buildgStyle", @"basementSqFt": @"basementSqFt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"pbKey", @"propApn", @"propType", @"propSqFt", @"buildgSqFt", @"buildgSqFtSource", @"landUse", @"construction", @"roofCoverType", @"subdivision", @"geometry", @"builtYear", @"bedrooms", @"baths", @"pool", @"fireplace", @"mobileHome", @"heatingType", @"coolingType", @"assessedValue", @"marketValue", @"appraisedValue", @"taxAmount", @"taxExemptions", @"caExemptions", @"salesDate", @"priorSaleDate", @"priorSalesPrice", @"stories", @"livingSqFt", @"roofFrameType", @"foundation", @"buildgCondition", @"buildgCount", @"buildgUnitNo", @"buildgFeaturesSqFt", @"businessName", @"taxAddress", @"vacancy", @"owners", @"appraisedValueImp", @"assessedValueImp", @"buildgType", @"basementType", @"effectiveBuiltYear", @"exteriorWalls", @"garageType", @"lastUpdated", @"marketValueImp", @"absenteeOwner", @"parkingSqFt", @"replacementCost", @"roofShapeType", @"buildgStyle", @"basementSqFt"];
  return [optionalProperties containsObject:propertyName];
}

@end
