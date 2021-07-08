#import <Foundation/Foundation.h>
#import "PBDemographics.h"
#import "PBDemographicsAdvancedRequest.h"
#import "PBSegmentation.h"
#import "PBApi.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* OpenAPI spec version: 11.0.1
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/


@interface PBDemographicsServiceApi: NSObject <PBApi>

extern NSString* kPBDemographicsServiceApiErrorDomain;
extern NSInteger kPBDemographicsServiceApiMissingParamErrorCode;

+(instancetype) sharedAPI;

/// Demographics Advanced Endpoint
/// Demographics Advanced Endpoint will return the aggregated values of the selected demographics variables of the regions falling inside a user provided geometry or travel time/distance boundaries. All the intersecting demographic boundaries will be snapped completely, and user will have option to request these boundaries in response.  
///
/// @param body  (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBDemographics*
-(NSNumber*) getDemographicsAdvancedWithBody: (PBDemographicsAdvancedRequest*) body
    completionHandler: (void (^)(PBDemographics* output, NSError* error)) handler;


/// Demographics Basic
/// Demographics Basic Endpoint will return the aggregated values of the selected demographics variables of the regions falling inside the search radius. All the intersecting demographic boundaries will be snapped completely and user will have option to request these boundaries in response.  
///
/// @param address Address to be searched (optional)
/// @param longitude Longitude of the location (optional)
/// @param latitude Latitude of the location (optional)
/// @param searchRadius Radius within which demographics details are required. Max. value is 52800 Feet or 10 miles (optional)
/// @param searchRadiusUnit Radius unit such as Feet, Kilometers, Miles or Meters  (optional)
/// @param travelTime Travel Time based on ‘travelMode’ within which demographics details are required. Max. value is 1 hour. (optional)
/// @param travelTimeUnit minutes,hours,seconds,milliseconds. Default is meters.Default is minutes. (optional)
/// @param travelDistance Travel Distance based on ‘travelMode’ within which demographics details are required. Max. value is 10 miles. (optional)
/// @param travelDistanceUnit feet,kilometers,miles,meters.  Default is feet. (optional)
/// @param travelMode Default is driving. (optional)
/// @param country 3 digit ISO country code (Used in case address is mentioned). (optional)
/// @param profile Applicable on ranged variables. Returns top sorted result based on the input value. (optional)
/// @param filter If Y, demographic boundaries are returned in response. (optional)
/// @param includeGeometry  (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBDemographics*
-(NSNumber*) getDemographicsBasicWithAddress: (NSString*) address
    longitude: (NSString*) longitude
    latitude: (NSString*) latitude
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    travelMode: (NSString*) travelMode
    country: (NSString*) country
    profile: (NSString*) profile
    filter: (NSString*) filter
    includeGeometry: (NSString*) includeGeometry
    completionHandler: (void (^)(PBDemographics* output, NSError* error)) handler;


/// Demographics By Address.
/// Provides the demographic details around a specified address. GeoLife 'byaddress' service accepts address as an input to return a specific population segment's age group, ethnicity, income, purchasing behaviour, commuter patterns and more.
///
/// @param address The address to be searched.
/// @param country 3 letter ISO code of the country to be searched.Allowed values USA,CAN,GBR,AUS. (optional)
/// @param profile Retrieves the sorted demographic data on the basis of pre-defined profiles that can display the top 3 or top 5 results (by address) either in ascending or descending order.Allowed values Top5Ascending,Top5Descending,Top3Ascending,Top3Descending (optional)
/// @param filter The &#39;filter&#39; parameter retrieves the demographic data based upon specified input themes. (optional)
/// @param valueFormat The &#39;valueFormat&#39; parameter is applicable for few ranged variables where percent &amp; count both are available and filter response based on the input value. (optional) (default to PercentAsAvailable)
/// @param variableLevel The &#39;variableLevel&#39; retrieves demographic facts in response based on the input value (optional) (default to Key)
/// 
///  code:200 message:"successful operation"
///
/// @return PBDemographics*
-(NSNumber*) getDemographicsByAddressV2WithAddress: (NSString*) address
    country: (NSString*) country
    profile: (NSString*) profile
    filter: (NSString*) filter
    valueFormat: (NSString*) valueFormat
    variableLevel: (NSString*) variableLevel
    completionHandler: (void (^)(PBDemographics* output, NSError* error)) handler;


/// Demographics By Boundaryids.
/// This endpoint will allow the user to request demographics details by census boundary id. Multiple comma separated boundary ids will be accepted. 
///
/// @param boundaryIds Accepts comma separated multiple boundary ids. (optional)
/// @param profile Applicable on ranged variables. Returns top sorted result based on the input value. (optional)
/// @param filter Accept the comma separated theme names and filter response based on value. Maximum 10 can be provided. (optional)
/// @param valueFormat Applicable for few ranged variables where percent &amp; count both are available and filter response based on the input value. (optional)
/// @param variableLevel Retrieves demographic facts in response based on the input value. (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBDemographics*
-(NSNumber*) getDemographicsByBoundaryIdsWithBoundaryIds: (NSString*) boundaryIds
    profile: (NSString*) profile
    filter: (NSString*) filter
    valueFormat: (NSString*) valueFormat
    variableLevel: (NSString*) variableLevel
    completionHandler: (void (^)(PBDemographics* output, NSError* error)) handler;


/// Demographics By Location.
/// Provides the demographic details around a specified location. GeoLife 'bylocation' service accepts longitude and latitude as an input to return a specific population segment's age group, ethnicity, income, purchasing behaviour, commuter patterns and more.
///
/// @param longitude Longitude of the location.
/// @param latitude Latitude of the location.
/// @param profile Retrieves the sorted demographic data on the basis of pre-defined profiles that can display the top 3 or top 5 results (by location) either in ascending or descending order.Allowed values Top5Ascending,Top5Descending,Top3Ascending,Top3Descending (optional)
/// @param filter The &#39;filter&#39; parameter retrieves the demographic data based upon specified input themes. (optional)
/// @param valueFormat The &#39;valueFormat&#39; parameter is applicable for few ranged variables where percent &amp; count both are available and filter response based on the input value. (optional) (default to PercentAsAvailable)
/// @param variableLevel The &#39;variableLevel&#39; retrieves demographic facts in response based on the input value (optional) (default to Key)
/// 
///  code:200 message:"successful operation"
///
/// @return PBDemographics*
-(NSNumber*) getDemographicsByLocationV2WithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    profile: (NSString*) profile
    filter: (NSString*) filter
    valueFormat: (NSString*) valueFormat
    variableLevel: (NSString*) variableLevel
    completionHandler: (void (^)(PBDemographics* output, NSError* error)) handler;


/// Segmentation By Address.
/// Provides the segmentation details around a specified address. GeoLife 'Segmentation by Address' service accepts address as an input to return the lifestyle characteristics of households in terms of their family status, children characteristics, income behaviors, financial preferences and interests.
///
/// @param address The address to be searched.
/// @param country 3 letter ISO code of the country to be searched.Allowed values USA,CAN,GBR,FRA,ITA,AUS,DEU. (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBSegmentation*
-(NSNumber*) getSegmentationByAddressWithAddress: (NSString*) address
    country: (NSString*) country
    completionHandler: (void (^)(PBSegmentation* output, NSError* error)) handler;


/// Segmentation By Location.
/// Provides the segmentation details around a specified location. GeoLife 'segmentation bylocation' service accepts longitude and latitude as an input to return the lifestyle characteristics of households in terms of their family status, children characteristics, income behaviors, financial preferences and interests.
///
/// @param longitude Longitude of the location.
/// @param latitude Latitude of the location.
/// 
///  code:200 message:"successful operation"
///
/// @return PBSegmentation*
-(NSNumber*) getSegmentationByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    completionHandler: (void (^)(PBSegmentation* output, NSError* error)) handler;



@end
