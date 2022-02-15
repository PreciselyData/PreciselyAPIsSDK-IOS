#import <Foundation/Foundation.h>
#import "PBErrorInfo.h"
#import "PBGeocodeRequest.h"
#import "PBGeocodeServiceResponse.h"
#import "PBGeocodeServiceResponseList.h"
#import "PBKeyLookupRequest.h"
#import "PBPBKeyAddressRequest.h"
#import "PBPBKeyResponse.h"
#import "PBPBKeyResponseList.h"
#import "PBReverseGeocodeRequest.h"
#import "PBApi.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* The version of the OpenAPI document: 11.9.2
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface PBGeocodeServiceApi: NSObject <PBApi>

extern NSString* kPBGeocodeServiceApiErrorDomain;
extern NSInteger kPBGeocodeServiceApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(PBApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Get Forward Geocode(Basic/Premium/Advanced)
/// This service accepts an address and returns the location coordinates corresponding to that address. Premium offers the best accuracy and is a high precision geocoder leveraging Master Location Data - geocodes to Street or building level. Advanced offers advanced accuracy and geocodes to Street level.Basic offering will geocode to a Place or Postal level. Good accuracy.
///
/// @param datapackBundle datapackBundle
/// @param country Country name or ISO code. (optional) (default to @"USA")
/// @param mainAddress Single line input, treated as collection of field elements. (optional) (default to @"4750 Walnut St., Boulder CO, 80301")
/// @param matchMode Match modes determine the leniency used to make a match between the input address and the reference data. (optional) (default to @"Standard")
/// @param fallbackGeo Specifies whether to attempt to determine a geographic region centroid when an address-level geocode cannot be determined. (optional) (default to @"true")
/// @param fallbackPostal Specifies whether to attempt to determine a post code centroid when an address-level geocode cannot be determined. (optional) (default to @"true")
/// @param maxCands The maximum number of candidates to return. (optional) (default to @"1")
/// @param streetOffset Indicates the offset distance from the street segments to use in street-level geocoding. (optional) (default to @"7")
/// @param streetOffsetUnits Specifies the unit of measurement for the street offset. (optional) (default to @"METERS")
/// @param cornerOffset Specifies the distance to offset the street end points in street-level matching. (optional) (default to @"7")
/// @param cornerOffsetUnits Specifies the unit of measurement for the corner offset. (optional) (default to @"METERS")
/// @param removeAccentMarks Specifies whether to Suppress accents and other diacritical marks. (optional) (default to @"false")
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBGeocodeServiceResponse*
-(NSURLSessionTask*) geocodeWithDatapackBundle: (NSString*) datapackBundle
    country: (NSString*) country
    mainAddress: (NSString*) mainAddress
    matchMode: (NSString*) matchMode
    fallbackGeo: (NSString*) fallbackGeo
    fallbackPostal: (NSString*) fallbackPostal
    maxCands: (NSString*) maxCands
    streetOffset: (NSString*) streetOffset
    streetOffsetUnits: (NSString*) streetOffsetUnits
    cornerOffset: (NSString*) cornerOffset
    cornerOffsetUnits: (NSString*) cornerOffsetUnits
    removeAccentMarks: (NSString*) removeAccentMarks
    completionHandler: (void (^)(PBGeocodeServiceResponse* output, NSError* error)) handler;


/// Post Forward Geocode
/// This is a Batch offering for geocode service. It accepts a single address or a list of addresses and returns location coordinates
///
/// @param datapackBundle 
/// @param geocodeRequest 
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBGeocodeServiceResponseList*
-(NSURLSessionTask*) geocodeBatchWithDatapackBundle: (NSString*) datapackBundle
    geocodeRequest: (PBGeocodeRequest*) geocodeRequest
    completionHandler: (void (^)(PBGeocodeServiceResponseList* output, NSError* error)) handler;


/// Get PreciselyID By Address
/// This service accepts an address and returns the corresponding PreciselyID
///
/// @param address The address to be searched.
/// @param country 3 letter ISO code of the country to be searched. (optional)
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBPBKeyResponse*
-(NSURLSessionTask*) getPBKeyWithAddress: (NSString*) address
    country: (NSString*) country
    completionHandler: (void (^)(PBPBKeyResponse* output, NSError* error)) handler;


/// Post PreciselyID By Address
/// This is a Batch offering for 'PreciselyID By Address' service. It accepts a single address or a list of addresses and returns the corresponding PreciselyID.
///
/// @param pBKeyAddressRequest 
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBPBKeyResponseList*
-(NSURLSessionTask*) getPBKeysWithPBKeyAddressRequest: (PBPBKeyAddressRequest*) pBKeyAddressRequest
    completionHandler: (void (^)(PBPBKeyResponseList* output, NSError* error)) handler;


/// Get Key Lookup
/// This service accepts a PreciselyID and returns the corresponding address associated with that PreciselyID.
///
/// @param key PreciselyID which maps to a unique address.
/// @param type Specifies the key type - PreciselyID and GNAF_PID for Aus.
/// @param country 3 letter ISO code of the country to be searched. (optional)
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBGeocodeServiceResponse*
-(NSURLSessionTask*) keyLookupWithKey: (NSString*) key
    type: (NSString*) type
    country: (NSString*) country
    completionHandler: (void (^)(PBGeocodeServiceResponse* output, NSError* error)) handler;


/// Post Key Lookup
/// This service accepts batches of PreciselyID's and returns the corresponding address associated with those PreciselyID's.
///
/// @param keyLookupRequest 
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBGeocodeServiceResponseList*
-(NSURLSessionTask*) keyLookupBatchWithKeyLookupRequest: (PBKeyLookupRequest*) keyLookupRequest
    completionHandler: (void (^)(PBGeocodeServiceResponseList* output, NSError* error)) handler;


/// Post Reverse Geocode
/// This is a Batch offering for geocode service. It accepts a single address or a list of addresses and returns location coordinates
///
/// @param datapackBundle 
/// @param reverseGeocodeRequest 
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBGeocodeServiceResponseList*
-(NSURLSessionTask*) reverseGeocodBatchWithDatapackBundle: (NSString*) datapackBundle
    reverseGeocodeRequest: (PBReverseGeocodeRequest*) reverseGeocodeRequest
    completionHandler: (void (^)(PBGeocodeServiceResponseList* output, NSError* error)) handler;


/// Get Reverse Geocode(Basic/Premium/Advanced)
/// This service accepts location coordinate and returns an address.
///
/// @param datapackBundle datapackBundle
/// @param x Longitude of the location. (default to @"-105.240976")
/// @param y Latitude of the location. (default to @"40.018301")
/// @param country Country name or ISO code. (optional)
/// @param coordSysName Coordinate system to convert geometry to in format codespace:code. (optional) (default to @"EPSG:4326")
/// @param distance Radius in which search is performed. (optional) (default to @"Radius in which search is performed.")
/// @param distanceUnits Unit of measurement. (optional) (default to @"METERS")
/// 
///  code:200 message:"OK",
///  code:400 message:"Bad Request",
///  code:500 message:"Internal Server Error"
///
/// @return PBGeocodeServiceResponse*
-(NSURLSessionTask*) reverseGeocodeWithDatapackBundle: (NSString*) datapackBundle
    x: (NSString*) x
    y: (NSString*) y
    country: (NSString*) country
    coordSysName: (NSString*) coordSysName
    distance: (NSString*) distance
    distanceUnits: (NSString*) distanceUnits
    completionHandler: (void (^)(PBGeocodeServiceResponse* output, NSError* error)) handler;



@end
