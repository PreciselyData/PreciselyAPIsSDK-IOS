#import <Foundation/Foundation.h>
#import "PBErrorInfo.h"
#import "PBMetadataResponse.h"
#import "PBPOIByGeometryRequest.h"
#import "PBPlacesResponse.h"
#import "PBPoi.h"
#import "PBPoiCount.h"
#import "PBPoiCountRequest.h"
#import "PBApi.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* The version of the OpenAPI document: 16.0.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface PBPlacesServiceApi: NSObject <PBApi>

extern NSString* kPBPlacesServiceApiErrorDomain;
extern NSInteger kPBPlacesServiceApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(PBApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Category Code Metadata.
/// This service returns a list of Category codes & associated metadata which can then be used as inputs for querying the Points of Interest By Address or Location methods listed above.
///
/// @param categoryCode 4, 6, or 11 digits category code to filter the response. (optional)
/// @param level 1, 2, or 3. (optional)
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBMetadataResponse*
-(NSURLSessionTask*) getCategoryCodeMetadataWithCategoryCode: (NSString*) categoryCode
    level: (NSString*) level
    completionHandler: (void (^)(PBMetadataResponse* output, NSError* error)) handler;


/// Points Of Interest Details By Id
/// This service returns complete details of a chosen point of interest by an identifier. The identifier could be selected from Autocomplete API response.
///
/// @param _id POI unique Identifier.
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBPoi*
-(NSURLSessionTask*) getPOIByIdWithId: (NSString*) _id
    completionHandler: (void (^)(PBPoi* output, NSError* error)) handler;


/// Get POIs By Address.
/// This service accepts an address as input and returns nearby points-of-interest places around that address. Additional input features include retrieving data by name, type, standard industrial classifications and category codes, as well as geographic filtering by radius, travel times and travel distances. Response features include JSON/XML as well as CSV download.
///
/// @param address The address to be searched. (optional)
/// @param country Country ISO code. (optional)
/// @param name Specifies the name of the place (POI) to be searched. Also performs search on partially specified names. It requires minimum 3 characters to search. (optional)
/// @param type Filters the points of interest (POIs) by place types. (optional)
/// @param categoryCode Acts as a filter to narrow down and refine POI search results. The category codes are unique 4, 6, or 11 digit numeric values. (optional)
/// @param sicCode Acts as a filter to narrow down and refine POI search results. The SIC codes are unique 4 or 8 digit numerical values (optional)
/// @param maxCandidates Maximum number of POIs that can be retrieved (optional)
/// @param searchRadius Radius range within which search is performed. (optional)
/// @param searchRadiusUnit Radius unit such as Feet, Kilometers, Miles or Meters (default). (optional)
/// @param travelTime Travel time within which search is performed (POIs which can be reached within travel time). (optional)
/// @param travelTimeUnit Travel time unit such as minutes (default), hours, seconds or milliseconds. (optional)
/// @param travelDistance Travel distance within which search is performed (POIs which can be reached within travel distance). (optional)
/// @param travelDistanceUnit Travel distance unit such as Feet (default), Kilometers, Miles or Meters. (optional)
/// @param travelMode Mode of commute. (optional) (default to @"driving")
/// @param sortBy Whether to sort the results based on relevance (best match) or by nearest distance from input location. (optional)
/// @param fuzzyOnName Whether to allow fuzzy seacrh on name input. (optional)
/// @param page Specifies the page number of results where page size is the value of maxCandidates input in request. (optional)
/// @param matchMode Determine the leniency used to make a match between the input name and the reference data. (optional)
/// @param specificMatchOn Specifies the field for the Specific Match Mode. (optional)
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBPlacesResponse*
-(NSURLSessionTask*) getPOIsByAddressWithAddress: (NSString*) address
    country: (NSString*) country
    name: (NSString*) name
    type: (NSString*) type
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    maxCandidates: (NSString*) maxCandidates
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    travelMode: (NSString*) travelMode
    sortBy: (NSString*) sortBy
    fuzzyOnName: (NSString*) fuzzyOnName
    page: (NSString*) page
    matchMode: (NSString*) matchMode
    specificMatchOn: (NSString*) specificMatchOn
    completionHandler: (void (^)(PBPlacesResponse* output, NSError* error)) handler;


/// GET Points Of Interest By Area.
/// This service accepts city or postcode (alongwith country) and returns points-of-interest places within a city or postcode. Additional input features include retrieving data by name, type, standard industrial classifications and category codes, as well as geographic filtering by radius, travel times and travel distances. Response features include JSON/XML as well as CSV download.
///
/// @param areaName1 Specifies the largest geographical area, typically a state or province (optional)
/// @param areaName3 Specifies a city or town name (optional)
/// @param postcode1 Specifies the postcode(ZIP code) in the appropriate format for the country (optional)
/// @param postcode2 Specifies the postcode(ZIP code) extension (optional)
/// @param country Country ISO code (optional)
/// @param name Specifies the name of the place (POI) to be searched. Also performs search on partially specified names. It requires minimum 3 characters to search (optional)
/// @param type Filters the points of interest (POIs) by place types (optional)
/// @param categoryCode Acts as a filter to narrow down and refine POI search results. The category codes are unique 4, 6, or 11 digit numeric values (optional)
/// @param sicCode Acts as a filter to narrow down and refine POI search results. The SIC codes are unique 4 or 8 digit numerical values (optional)
/// @param maxCandidates Maximum number of POIs that can be retrieved (optional)
/// @param fuzzyOnName Whether to allow fuzzy seacrh on name input (optional)
/// @param page Specifies the page number of results where page size is the value of maxCandidates input in request (optional)
/// @param matchMode Determine the leniency used to make a match between the input name and the reference data (optional)
/// @param specificMatchOn Specifies the field for the Specific Match Mode (optional)
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBPlacesResponse*
-(NSURLSessionTask*) getPOIsByAreaWithAreaName1: (NSString*) areaName1
    areaName3: (NSString*) areaName3
    postcode1: (NSString*) postcode1
    postcode2: (NSString*) postcode2
    country: (NSString*) country
    name: (NSString*) name
    type: (NSString*) type
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    maxCandidates: (NSString*) maxCandidates
    fuzzyOnName: (NSString*) fuzzyOnName
    page: (NSString*) page
    matchMode: (NSString*) matchMode
    specificMatchOn: (NSString*) specificMatchOn
    completionHandler: (void (^)(PBPlacesResponse* output, NSError* error)) handler;


/// Points Of Interest By Boundary
/// Accepts a user-defined boundary as input and returns all Points of Interest within the boundary. Additionally, user can filter the response by name, type, standard industrial classifications and category codes.
///
/// @param pOIByGeometryRequest 
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBPlacesResponse*
-(NSURLSessionTask*) getPOIsByGeometryWithPOIByGeometryRequest: (PBPOIByGeometryRequest*) pOIByGeometryRequest
    completionHandler: (void (^)(PBPlacesResponse* output, NSError* error)) handler;


/// Get POIs By Location.
/// This service accepts latitude/longitude as input and returns nearby points-of-interest places around that location. Additional input features include retrieving data by name, type, standard industrial classifications and category codes, as well as geographic filtering by radius, travel times and travel distances. Response features include JSON/XML as well as CSV download
///
/// @param longitude Longitude of the location.
/// @param latitude Latitude of the location.
/// @param name Specifies the name of the place (POI) to be searched. Also performs search on partially specified names. It requires minimum 3 characters to search. (optional)
/// @param type Filters the points of interest (POIs) by place types. (optional)
/// @param categoryCode Acts as a filter to narrow down and refine POI search results. The category codes are unique 4, 6, or 11 digit numeric values. (optional)
/// @param sicCode Acts as a filter to narrow down and refine POI search results. The SIC codes are unique 4 or 8 digit numerical values (optional)
/// @param maxCandidates Maximum number of POIs that can be retrieved (optional)
/// @param searchRadius Radius range within which search is performed. (optional)
/// @param searchRadiusUnit Radius unit such as Feet, Kilometers, Miles or Meters (default). (optional)
/// @param travelTime Travel time within which search is performed (POIs which can be reached within travel time). (optional)
/// @param travelTimeUnit Travel time unit such as minutes (default), hours, seconds or milliseconds. (optional)
/// @param travelDistance Travel distance within which search is performed (POIs which can be reached within travel distance). (optional)
/// @param travelDistanceUnit Travel distance unit such as Feet (default), Kilometers, Miles or Meters. (optional)
/// @param travelMode Mode of commute. (optional)
/// @param sortBy Whether to sort the results based on relevance (best match) or by nearest distance from input location. (optional)
/// @param fuzzyOnName Whether to allow fuzzy seacrh on name input. (optional)
/// @param page Specifies the page number of results where page size is the value of maxCandidates input in request. (optional)
/// @param matchMode Determine the leniency used to make a match between the input name and the reference data. (optional)
/// @param specificMatchOn Specifies the field for the Specific Match Mode. (optional)
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBPlacesResponse*
-(NSURLSessionTask*) getPOIsByLocationWithLongitude: (NSString*) longitude
    latitude: (NSString*) latitude
    name: (NSString*) name
    type: (NSString*) type
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    maxCandidates: (NSString*) maxCandidates
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    travelMode: (NSString*) travelMode
    sortBy: (NSString*) sortBy
    fuzzyOnName: (NSString*) fuzzyOnName
    page: (NSString*) page
    matchMode: (NSString*) matchMode
    specificMatchOn: (NSString*) specificMatchOn
    completionHandler: (void (^)(PBPlacesResponse* output, NSError* error)) handler;


/// Points Of Interest Count
/// Accepts a user-defined boundary as input and returns the Count number of POIs within the boundary. Additionally, user can request the count of filtered POIs by name, type, standard industrial classifications and category codes within the given polygon.
///
/// @param contentType 
/// @param poiCountRequest 
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBPoiCount*
-(NSURLSessionTask*) getPOIsCountWithContentType: (NSString*) contentType
    poiCountRequest: (PBPoiCountRequest*) poiCountRequest
    completionHandler: (void (^)(PBPoiCount* output, NSError* error)) handler;


/// Get SIC Metadata
/// This service returns a list of standard industrial classification codes & associated metadata which can then be used as inputs for querying the Points of Interest By Address or Location methods listed above.
///
/// @param sicCode 4 or 8 digits SIC code to filter the response. (optional)
/// @param level 1 or 2. (optional)
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBMetadataResponse*
-(NSURLSessionTask*) getSICMetadataWithSicCode: (NSString*) sicCode
    level: (NSString*) level
    completionHandler: (void (^)(PBMetadataResponse* output, NSError* error)) handler;


/// Points Of Interest Autocomplete
/// This service accepts partial text input and returns matching points of interest, sorted by relevance or distance.
///
/// @param xForwardedFor  (optional)
/// @param longitude Longitude of the location. (optional)
/// @param latitude Latitude of the location. (optional)
/// @param searchText Free text which will accept a multi-word string. Combination of POI name and address is possible. (optional)
/// @param searchOnNameOnly  (optional) (default to @"N")
/// @param searchRadius Radius range within which search is performed. (optional)
/// @param searchRadiusUnit Radius unit such as Feet, Kilometers, Miles or Meters (default). (optional)
/// @param travelTime Travel time within which search is performed (POIs which can be reached within travel time). (optional)
/// @param travelTimeUnit Travel time unit such as minutes (default), hours, seconds or milliseconds. (optional)
/// @param travelDistance Travel distance within which search is performed (POIs which can be reached within travel distance). (optional)
/// @param travelDistanceUnit Travel distance unit such as Feet (default), Kilometers, Miles or Meters. (optional)
/// @param travelMode Mode of commute. (optional) (default to @"driving")
/// @param country Country ISO code. (optional)
/// @param areaName1 Specifies the largest geographical area, typically a state or province. (optional)
/// @param areaName3 Specifies a city or town name. (optional)
/// @param postcode1 Specifies the postcode(ZIP code) in the appropriate format for the country. (optional)
/// @param postcode2 Specifies the postcode(ZIP code) extension. (optional)
/// @param ipAddress IP address which will be used to auto detect the location in order to serve contextually relevant results. (optional)
/// @param autoDetectLocation Specifies whether to detect client&#39;s location using IP address. If IP address(below) is not provided and autoDetectLocation is set &#39;True&#39; then IP address will be picked from HTTP request automatically. (optional)
/// @param type Filters the points of interest (POIs) by place types. (optional)
/// @param categoryCode Acts as a filter to narrow down and refine POI search results. The category codes are unique 4, 6, or 11 digit numeric values. (optional)
/// @param sicCode Acts as a filter to narrow down and refine POI search results. The SIC codes are unique 4 or 8 digit numerical values. (optional)
/// @param maxCandidates Maximum number of POIs that can be retrieved. (optional)
/// @param sortBy sortBy (optional)
/// @param matchMode Determine the leniency used to make a match between the input name and the reference data. (optional)
/// @param specificMatchOn Specifies the field for the Specific Match Mode. (optional)
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBPlacesResponse*
-(NSURLSessionTask*) poisAutocompleteWithXForwardedFor: (NSString*) xForwardedFor
    longitude: (NSString*) longitude
    latitude: (NSString*) latitude
    searchText: (NSString*) searchText
    searchOnNameOnly: (NSString*) searchOnNameOnly
    searchRadius: (NSString*) searchRadius
    searchRadiusUnit: (NSString*) searchRadiusUnit
    travelTime: (NSString*) travelTime
    travelTimeUnit: (NSString*) travelTimeUnit
    travelDistance: (NSString*) travelDistance
    travelDistanceUnit: (NSString*) travelDistanceUnit
    travelMode: (NSString*) travelMode
    country: (NSString*) country
    areaName1: (NSString*) areaName1
    areaName3: (NSString*) areaName3
    postcode1: (NSString*) postcode1
    postcode2: (NSString*) postcode2
    ipAddress: (NSString*) ipAddress
    autoDetectLocation: (NSString*) autoDetectLocation
    type: (NSString*) type
    categoryCode: (NSString*) categoryCode
    sicCode: (NSString*) sicCode
    maxCandidates: (NSString*) maxCandidates
    sortBy: (NSString*) sortBy
    matchMode: (NSString*) matchMode
    specificMatchOn: (NSString*) specificMatchOn
    completionHandler: (void (^)(PBPlacesResponse* output, NSError* error)) handler;



@end
