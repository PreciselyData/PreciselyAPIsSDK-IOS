#import <Foundation/Foundation.h>
#import "PBGeosearchLocations.h"
#import "PBApi.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* OpenAPI spec version: 10.5.0
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


@interface PBTypeaheadServiceApi: NSObject <PBApi>

extern NSString* kPBTypeaheadServiceApiErrorDomain;
extern NSInteger kPBTypeaheadServiceApiMissingParamErrorCode;

+(instancetype) sharedAPI;

/// Typeahead Search
/// Performs search to retrieve list of places by input text and location vicinity.
///
/// @param searchText The input to be searched.
/// @param latitude Latitude of the location. Either the latitude or the longitude must be provided. (optional)
/// @param longitude Longitude of the location. Either the latitude or the longitude must be provided. (optional)
/// @param searchRadius Radius range within which search is performed. (optional)
/// @param searchRadiusUnit Radius unit such as Feet, Kilometers, Miles or Meters. (optional)
/// @param maxCandidates Maximum number of addresses that can be retrieved. (optional)
/// @param country Country ISO code. We need to make sure that either Lat/Lng or Country is provided to API (optional)
/// @param matchOnAddressNumber Option so that we force api to match on address number (optional)
/// @param autoDetectLocation Option to allow API to detect origin of API request automatically (optional) (default to true)
/// @param ipAddress  (optional)
/// @param areaName1 State province of the input to be searched (optional)
/// @param areaName3 City of the input to be searched (optional)
/// @param postCode Postal Code of the input to be searched (optional)
/// @param returnAdminAreasOnly if value set &#39;Y&#39; then it will only do a matching on postcode or areaName1, areaName2, areaName3 and areaName4 fields in the data (optional) (default to N)
/// @param includeRangesDetails if value set &#39;Y&#39; then display all unit info of ranges, if value set &#39;N&#39; then don&#39;t show ranges (optional) (default to Y)
/// @param searchType Preference to control search type of interactive requests. (optional) (default to ADDRESS)
/// 
///  code:200 message:"successful operation"
///
/// @return PBGeosearchLocations*
-(NSNumber*) searchWithSearchText: (NSString*) searchText
    latitude: (NSString*) latitude
    longitude: (NSString*) longitude
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    maxCandidates: (NSString*) maxCandidates
    country: (NSString*) country
    matchOnAddressNumber: (NSString*) matchOnAddressNumber
    autoDetectLocation: (NSString*) autoDetectLocation
    ipAddress: (NSString*) ipAddress
    areaName1: (NSString*) areaName1
    areaName3: (NSString*) areaName3
    postCode: (NSString*) postCode
    returnAdminAreasOnly: (NSString*) returnAdminAreasOnly
    includeRangesDetails: (NSString*) includeRangesDetails
    searchType: (NSString*) searchType
    completionHandler: (void (^)(PBGeosearchLocations* output, NSError* error)) handler;



@end
