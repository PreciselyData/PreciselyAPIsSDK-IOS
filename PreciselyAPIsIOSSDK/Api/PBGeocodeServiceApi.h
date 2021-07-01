#import <Foundation/Foundation.h>
#import "PBGeocodeServiceResponse.h"
#import "PBGeocodeRequest.h"
#import "PBGeocodeServiceResponseList.h"
#import "PBGeocodeCapabilitiesResponse.h"
#import "PBConfiguredDictionaryResponse.h"
#import "PBPBKeyResponse.h"
#import "PBPBKeyAddressRequest.h"
#import "PBPBKeyResponseList.h"
#import "PBKeyLookupRequest.h"
#import "PBReverseGeocodeRequest.h"
#import "PBApi.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* OpenAPI spec version: 11.0.0
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


@interface PBGeocodeServiceApi: NSObject <PBApi>

extern NSString* kPBGeocodeServiceApiErrorDomain;
extern NSInteger kPBGeocodeServiceApiMissingParamErrorCode;

+(instancetype) sharedAPI;

/// Get Forward Geocode
/// This service accepts an address and returns the location coordinates corresponding to that address. Premium offers the best accuracy and is a high precision geocoder leveraging Master Location Data - geocodes to Street or building level.
///
/// @param datapackBundle value of datapackBundle
/// @param country Country name or ISO code. (optional) (default to USA)
/// @param placeName Building name, place name, Point of Interest (POI), company or firm name associated with the input address. (optional)
/// @param mainAddress Single line input, treated as collection of field elements. (optional) (default to 4750 Walnut St., Boulder CO, 80301)
/// @param lastLine The last line of the address. (optional)
/// @param areaName1 Specifies the largest geographical area, typically a state or province. (optional)
/// @param areaName2 Specifies the secondary geographic area, typically a county or district. (optional)
/// @param areaName3 Specifies a city or town name. (optional)
/// @param areaName4 Specifies a city subdivision or locality. (optional)
/// @param postalCode The postal code in the appropriate format for the country. (optional)
/// @param matchMode Match modes determine the leniency used to make a match between the input address and the reference data. (optional) (default to Standard)
/// @param fallbackGeo Specifies whether to attempt to determine a geographic region centroid when an address-level geocode cannot be determined. (optional) (default to true)
/// @param fallbackPostal Specifies whether to attempt to determine a post code centroid when an address-level geocode cannot be determined. (optional) (default to true)
/// @param maxCands The maximum number of candidates to return. (optional) (default to 1)
/// @param streetOffset Indicates the offset distance from the street segments to use in street-level geocoding. (optional) (default to 7)
/// @param streetOffsetUnits Specifies the unit of measurement for the street offset. (optional) (default to METERS)
/// @param cornerOffset Specifies the distance to offset the street end points in street-level matching. (optional) (default to 7)
/// @param cornerOffsetUnits Specifies the unit of measurement for the corner offset. (optional) (default to METERS)
/// 
///  code:200 message:"successful operation"
///
/// @return PBGeocodeServiceResponse*
-(NSNumber*) geocodeWithDatapackBundle: (NSString*) datapackBundle
    country: (NSString*) country
    placeName: (NSString*) placeName
    mainAddress: (NSString*) mainAddress
    lastLine: (NSString*) lastLine
    areaName1: (NSString*) areaName1
    areaName2: (NSString*) areaName2
    areaName3: (NSString*) areaName3
    areaName4: (NSString*) areaName4
    postalCode: (NSNumber*) postalCode
    matchMode: (NSString*) matchMode
    fallbackGeo: (NSNumber*) fallbackGeo
    fallbackPostal: (NSNumber*) fallbackPostal
    maxCands: (NSNumber*) maxCands
    streetOffset: (NSNumber*) streetOffset
    streetOffsetUnits: (NSString*) streetOffsetUnits
    cornerOffset: (NSNumber*) cornerOffset
    cornerOffsetUnits: (NSString*) cornerOffsetUnits
    completionHandler: (void (^)(PBGeocodeServiceResponse* output, NSError* error)) handler;


/// Post Forward Geocode
/// This is a Batch offering for geocode service. It accepts a single address or a list of addresses and returns location coordinates.
///
/// @param body Geocode Request Object
/// @param datapackBundle value of datapackBundle
/// 
///  code:200 message:"successful operation"
///
/// @return PBGeocodeServiceResponseList*
-(NSNumber*) geocodeBatchWithBody: (PBGeocodeRequest*) body
    datapackBundle: (NSString*) datapackBundle
    completionHandler: (void (^)(PBGeocodeServiceResponseList* output, NSError* error)) handler;


/// Get Capabilities
/// Get Capabilities  of Geocode API
///
/// @param datapackBundle value of datapackBundle
/// @param operation Geocode or ReverseGeocode Operation. (optional) (default to geocode)
/// @param country Country name or ISO code. (optional) (default to USA)
/// 
///  code:200 message:"successful operation"
///
/// @return PBGeocodeCapabilitiesResponse*
-(NSNumber*) getCapabilitiesWithDatapackBundle: (NSString*) datapackBundle
    operation: (NSString*) operation
    country: (NSString*) country
    completionHandler: (void (^)(PBGeocodeCapabilitiesResponse* output, NSError* error)) handler;


/// Get installed Dictionaries
/// Get installed Dictionaries
///
/// @param datapackBundle value of datapackBundle
/// @param country Three Letter ISO Country code (optional) (default to USA)
/// 
///  code:200 message:"successful operation"
///
/// @return PBConfiguredDictionaryResponse*
-(NSNumber*) getDictionariesWithDatapackBundle: (NSString*) datapackBundle
    country: (NSString*) country
    completionHandler: (void (^)(PBConfiguredDictionaryResponse* output, NSError* error)) handler;


/// Get PreciselyID By Address
/// This service accepts an address and returns the corresponding PreciselyID.
///
/// @param address free form address text
/// @param country Country ISO code. (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBPBKeyResponse*
-(NSNumber*) getPreciselyIDWithAddress: (NSString*) address
    country: (NSString*) country
    completionHandler: (void (^)(PBPBKeyResponse* output, NSError* error)) handler;


/// Post PreciselyID By Address
/// This is a Batch offering for 'PreciselyID By Address' service. It accepts a single address or a list of addresses and returns the corresponding PreciselyID.
///
/// @param body 
/// 
///  code:200 message:"successful operation"
///
/// @return PBPBKeyResponseList*
-(NSNumber*) getPreciselyIDsWithBody: (PBPBKeyAddressRequest*) body
    completionHandler: (void (^)(PBPBKeyResponseList* output, NSError* error)) handler;


/// Get Key Lookup
/// This service accepts a PreciselyID and returns the corresponding address associated with that PreciselyID.
///
/// @param key free form text
/// @param type  (optional)
/// @param country  (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBGeocodeServiceResponse*
-(NSNumber*) keyLookupWithKey: (NSString*) key
    type: (NSString*) type
    country: (NSString*) country
    completionHandler: (void (^)(PBGeocodeServiceResponse* output, NSError* error)) handler;


/// Post Key Lookup
/// This service accepts batches of PreciselyID's and returns the corresponding address associated with those PreciselyID's.
///
/// @param body  (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBGeocodeServiceResponseList*
-(NSNumber*) keyLookupBatchWithBody: (PBKeyLookupRequest*) body
    completionHandler: (void (^)(PBGeocodeServiceResponseList* output, NSError* error)) handler;


/// Post Reverse Geocode
/// It accepts a single location coordinate or a list of location coordinates and returns addresses.
///
/// @param datapackBundle value of datapackBundle
/// @param body Request for Reverse Geocode (optional)
/// 
///  code:200 message:"successful operation"
///
/// @return PBGeocodeServiceResponseList*
-(NSNumber*) reverseGeocodBatchWithDatapackBundle: (NSString*) datapackBundle
    body: (PBReverseGeocodeRequest*) body
    completionHandler: (void (^)(PBGeocodeServiceResponseList* output, NSError* error)) handler;


/// Get Reverse Geocode
/// This service accepts location coordinate and returns an address.
///
/// @param datapackBundle value of datapackBundle
/// @param x Longitude of the location. (default to -105.240976)
/// @param y Latitude of the location. (default to 40.018301)
/// @param country Country name or ISO code. (optional)
/// @param coordSysName Coordinate system to convert geometry to in format codespace:code. (optional) (default to EPSG:4326)
/// @param distance Radius in which search is performed. (optional) (default to 150)
/// @param distanceUnits Unit of measurement. (optional) (default to METERS)
/// 
///  code:200 message:"successful operation"
///
/// @return PBGeocodeServiceResponse*
-(NSNumber*) reverseGeocodeWithDatapackBundle: (NSString*) datapackBundle
    x: (NSNumber*) x
    y: (NSNumber*) y
    country: (NSString*) country
    coordSysName: (NSString*) coordSysName
    distance: (NSNumber*) distance
    distanceUnits: (NSString*) distanceUnits
    completionHandler: (void (^)(PBGeocodeServiceResponse* output, NSError* error)) handler;



@end
