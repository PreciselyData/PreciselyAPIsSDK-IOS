#import <Foundation/Foundation.h>
#import "PBErrorInfo.h"
#import "PBTypeaheadLocations.h"
#import "PBApi.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* The version of the OpenAPI document: 18.1.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface PBAddressAutocompleteEnterpriseServiceApi: NSObject <PBApi>

extern NSString* kPBAddressAutocompleteEnterpriseServiceApiErrorDomain;
extern NSInteger kPBAddressAutocompleteEnterpriseServiceApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(PBApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// 
/// 
///
/// @param searchText The input to be searched.
/// @param transactionId transactionId.
/// @param latitude Latitude of the location. We need to make sure that either Lat/Lng or Country is provided to API (optional)
/// @param longitude Longitude of the location. We need to make sure that either Lat/Lng or Country is provided to API (optional)
/// @param searchRadius Radius range within which search is performed. (optional)
/// @param searchRadiusUnit Radius unit such as Feet, Kilometers, Miles or Meters. (optional)
/// @param maxCandidates Maximum number of POIs that can be retrieved. (optional)
/// @param country Country ISO code. We need to make sure that either Lat/Lng or Country is provided to API (optional)
/// @param matchOnAddressNumber Option so that we force api to match on address number (optional)
/// @param autoDetectLocation Option to allow API to detect origin of API request automatically (optional)
/// @param ipAddress  (optional)
/// @param areaName1 State province of the input to be searched (optional)
/// @param areaName3 City of the input to be searched (optional)
/// @param postCode Postal Code of the input to be searched (optional)
/// @param returnAdminAreasOnly if value set &#39;Y&#39; then it will only do a matching on postcode or areaName1, areaName2, areaName3 and areaName4 fields in the data (optional)
/// @param includeRangesDetails if value set &#39;Y&#39; then display all unit info of ranges, if value set &#39;N&#39; then don&#39;t show ranges (optional)
/// @param searchType Preference to control search type of interactive requests. (optional)
/// @param searchOnAddressNumber Preference to search on address number. (optional)
/// @param searchOnUnitInfo Preference to search on unit info. (optional)
/// @param searchOnPOBox Specifies whether to enable search for matching on PO Box. (optional)
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBTypeaheadLocations*
-(NSURLSessionTask*) listLocationsWithSearchText: (NSString*) searchText
    transactionId: (NSString*) transactionId
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
    searchOnAddressNumber: (NSString*) searchOnAddressNumber
    searchOnUnitInfo: (NSString*) searchOnUnitInfo
    searchOnPOBox: (NSString*) searchOnPOBox
    completionHandler: (void (^)(PBTypeaheadLocations* output, NSError* error)) handler;


/// 
/// 
///
/// @param selectedAddress Selected Address to be searched.
/// @param transactionId transactionId.
/// @param country Country ISO code. We need to make sure that either Lat/Lng or Country is provided to API (optional)
/// 
///  code:200 message:"OK"
///
/// @return NSObject*
-(NSURLSessionTask*) listSelectWithSelectedAddress: (NSString*) selectedAddress
    transactionId: (NSString*) transactionId
    country: (NSString*) country
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler;



@end
