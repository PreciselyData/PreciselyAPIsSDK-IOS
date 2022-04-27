#import <Foundation/Foundation.h>
#import <ISO8601/ISO8601.h>
#import <AFNetworking/AFNetworking.h>
#import "PBJSONResponseSerializer.h"
#import "PBJSONRequestSerializer.h"
#import "PBQueryParamCollection.h"
#import "PBConfiguration.h"
#import "PBResponseDeserializer.h"
#import "PBSanitizer.h"
#import "PBLogger.h"

/**
* Precisely APIs
* Enhance & enrich your data, applications, business processes, and workflows with rich location, information, and identify APIs.
*
* OpenAPI spec version: 11.9.3
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

#import "PBAHJ.h"
#import "PBAHJList.h"
#import "PBAHJPlusPSAPResponse.h"
#import "PBAHJmailingAddress.h"
#import "PBAbsenteeOwner.h"
#import "PBAccuracy.h"
#import "PBAddress.h"
#import "PBAddressTime.h"
#import "PBAddressType.h"
#import "PBAddressesByBoundaryRequest.h"
#import "PBAddressesCount.h"
#import "PBAddressesDTO.h"
#import "PBAddressesPreferences.h"
#import "PBAddressesResponse.h"
#import "PBAge.h"
#import "PBAgeTheme.h"
#import "PBArea.h"
#import "PBAreaCodeInfo.h"
#import "PBAssetsAndWealthTheme.h"
#import "PBAttitudesAndMotivationTheme.h"
#import "PBAutomobileTheme.h"
#import "PBBaseFloodElevation.h"
#import "PBBasementType.h"
#import "PBBasicBoundary.h"
#import "PBBasicBoundaryAddress.h"
#import "PBBoundaries.h"
#import "PBBoundary.h"
#import "PBBoundaryBuffer.h"
#import "PBBoundaryPoint.h"
#import "PBBufferRelation.h"
#import "PBBuildgCondition.h"
#import "PBBuildgFeaturesSqft.h"
#import "PBBuildgSqFtSource.h"
#import "PBBuildgStyle.h"
#import "PBBuildgType.h"
#import "PBBuildingSqftSource.h"
#import "PBBusinessId.h"
#import "PBCaExemptions.h"
#import "PBCandidate.h"
#import "PBCandidateRange.h"
#import "PBCandidateRangeUnit.h"
#import "PBCarrier.h"
#import "PBCarrierRouteAddressRequest.h"
#import "PBCarrierRouteBoundaries.h"
#import "PBCarrierRoutePreference.h"
#import "PBCarrierRouteResponse.h"
#import "PBCarrierRouteResponseList.h"
#import "PBCategory.h"
#import "PBCategoryMetadata.h"
#import "PBCbsa.h"
#import "PBCensus.h"
#import "PBCenter.h"
#import "PBChannelPreferencesTheme.h"
#import "PBCity.h"
#import "PBCommonAddress.h"
#import "PBCommonGeometry.h"
#import "PBCommonState.h"
#import "PBCommunity.h"
#import "PBCommuterPatternsTheme.h"
#import "PBConfiguredDictionaryResponse.h"
#import "PBConsistencyCode.h"
#import "PBConstruction.h"
#import "PBContactDetails.h"
#import "PBContactPerson.h"
#import "PBCoolingType.h"
#import "PBCost.h"
#import "PBCosts.h"
#import "PBCountrySupport.h"
#import "PBCounty.h"
#import "PBCoverage.h"
#import "PBCrimeBoundary.h"
#import "PBCrimeIndexTheme.h"
#import "PBCrimeRiskByAddressRequest.h"
#import "PBCrimeRiskByLocationRequest.h"
#import "PBCrimeRiskLocationResponse.h"
#import "PBCrimeRiskLocationResponseList.h"
#import "PBCrimeRiskPreferences.h"
#import "PBCrimeRiskResponse.h"
#import "PBCrimeRiskResponseList.h"
#import "PBCrs.h"
#import "PBCustomObject.h"
#import "PBCustomObjectMember.h"
#import "PBCustomPreferences.h"
#import "PBDateTimeEarthQuake.h"
#import "PBDemographics.h"
#import "PBDemographicsAdvancedPreferences.h"
#import "PBDemographicsAdvancedRequest.h"
#import "PBDemographicsThemes.h"
#import "PBDemographicsThemesV2.h"
#import "PBDepth.h"
#import "PBDeviceStatusNetwork.h"
#import "PBDictionary.h"
#import "PBDirectionGeometry.h"
#import "PBDistance.h"
#import "PBDistanceToBorder.h"
#import "PBDistanceToFloodHazardAddressRequest.h"
#import "PBDistanceToFloodHazardLocationRequest.h"
#import "PBDistanceToFloodHazardLocationResponse.h"
#import "PBDistanceToFloodHazardResponse.h"
#import "PBDistrictType.h"
#import "PBDomesticUltimateBusiness.h"
#import "PBEarthquakeEvent.h"
#import "PBEarthquakeEventsResponse.h"
#import "PBEarthquakeHistory.h"
#import "PBEarthquakeLocation.h"
#import "PBEarthquakeRiskByAddressRequest.h"
#import "PBEarthquakeRiskByLocationRequest.h"
#import "PBEarthquakeRiskLocationResponse.h"
#import "PBEarthquakeRiskLocationResponseList.h"
#import "PBEarthquakeRiskPreferences.h"
#import "PBEarthquakeRiskResponse.h"
#import "PBEarthquakeRiskResponseList.h"
#import "PBEducation.h"
#import "PBEducationTheme.h"
#import "PBEducationalAttainmentTheme.h"
#import "PBEmail.h"
#import "PBEmployeeCount.h"
#import "PBEmployment.h"
#import "PBEmploymentTheme.h"
#import "PBEnd.h"
#import "PBErrorCode.h"
#import "PBErrorInfo.h"
#import "PBEthnicityTheme.h"
#import "PBEventsCount.h"
#import "PBExpenditureTheme.h"
#import "PBExteriorWalls.h"
#import "PBField.h"
#import "PBFieldV2.h"
#import "PBFieldsMatching.h"
#import "PBFinancialProductsTheme.h"
#import "PBFireDepartment.h"
#import "PBFireDepartmentContactDetails.h"
#import "PBFireEvent.h"
#import "PBFireEventsResponse.h"
#import "PBFireHistory.h"
#import "PBFireRiskByAddressRequest.h"
#import "PBFireRiskByLocationRequest.h"
#import "PBFireRiskLocationResponse.h"
#import "PBFireRiskLocationResponseList.h"
#import "PBFireRiskResponse.h"
#import "PBFireRiskResponseList.h"
#import "PBFireShed.h"
#import "PBFireStation.h"
#import "PBFireStationContactDetails.h"
#import "PBFireStations.h"
#import "PBFireStationsLocation.h"
#import "PBFloodBoundary.h"
#import "PBFloodHazardPreferences.h"
#import "PBFloodRiskByAddressRequest.h"
#import "PBFloodRiskByLocationRequest.h"
#import "PBFloodRiskLocationResponse.h"
#import "PBFloodRiskLocationResponseList.h"
#import "PBFloodRiskPreferences.h"
#import "PBFloodRiskResponse.h"
#import "PBFloodRiskResponseList.h"
#import "PBFloodZone.h"
#import "PBFoundation.h"
#import "PBFreeOrReducedPriceLunches.h"
#import "PBGarageType.h"
#import "PBGenderTheme.h"
#import "PBGeoEnrichMetadataResponse.h"
#import "PBGeoEnrichResponse.h"
#import "PBGeoLocationAccessPoint.h"
#import "PBGeoLocationCountry.h"
#import "PBGeoLocationFixedLine.h"
#import "PBGeoLocationFixedLineCountry.h"
#import "PBGeoLocationIpAddr.h"
#import "PBGeoLocationPlace.h"
#import "PBGeoLocationState.h"
#import "PBGeoPos.h"
#import "PBGeoPostGeometry.h"
#import "PBGeoRiskBoundaries.h"
#import "PBGeoRiskCrimeTheme.h"
#import "PBGeoRiskGeometry.h"
#import "PBGeoRiskLocations.h"
#import "PBGeoRouteResponse.h"
#import "PBGeoTaxLocations.h"
#import "PBGeoTaxRateLocations.h"
#import "PBGeoZoneGeometry.h"
#import "PBGeocodeAddress.h"
#import "PBGeocodeCapabilitiesResponse.h"
#import "PBGeocodeCustomPreferences.h"
#import "PBGeocodePreferences.h"
#import "PBGeocodeRequest.h"
#import "PBGeocodeRequestAddress.h"
#import "PBGeocodeServiceResponse.h"
#import "PBGeocodeServiceResponseList.h"
#import "PBGeometry.h"
#import "PBGeosearchLocation.h"
#import "PBGeosearchLocations.h"
#import "PBGetCityStateProvinceAPIInput.h"
#import "PBGetCityStateProvinceAPIInputRow.h"
#import "PBGetCityStateProvinceAPIOptions.h"
#import "PBGetCityStateProvinceAPIOutput.h"
#import "PBGetCityStateProvinceAPIRequest.h"
#import "PBGetCityStateProvinceAPIResponse.h"
#import "PBGetPostalCodesAPIInput.h"
#import "PBGetPostalCodesAPIInputRow.h"
#import "PBGetPostalCodesAPIOptions.h"
#import "PBGetPostalCodesAPIOutput.h"
#import "PBGetPostalCodesAPIRequest.h"
#import "PBGetPostalCodesAPIResponse.h"
#import "PBGlobalUltimateBusiness.h"
#import "PBGradeLevelsTaught.h"
#import "PBGreatschools.h"
#import "PBGrid.h"
#import "PBHealthTheme.h"
#import "PBHeatingType.h"
#import "PBHouseholdSizeTheme.h"
#import "PBHouseholdsTheme.h"
#import "PBHousingTheme.h"
#import "PBIPDTaxByAddressBatchRequest.h"
#import "PBIPDTaxJurisdiction.h"
#import "PBIncomeTheme.h"
#import "PBIncomeThemeV2.h"
#import "PBIndexVariable.h"
#import "PBIndividualValueVariable.h"
#import "PBIndividualValueVariableV2.h"
#import "PBInputParameter.h"
#import "PBInterest.h"
#import "PBIntermediatePoints.h"
#import "PBIntersection.h"
#import "PBIntersectionResponse.h"
#import "PBIpInfo.h"
#import "PBIpd.h"
#import "PBKeyLookupRequest.h"
#import "PBKeys.h"
#import "PBLandUse.h"
#import "PBLatLongFields.h"
#import "PBLifeStyleTheme.h"
#import "PBLocation.h"
#import "PBLocationTime.h"
#import "PBMagnitude.h"
#import "PBMaritalStatusTheme.h"
#import "PBMatch.h"
#import "PBMatchedAddress.h"
#import "PBMatrix.h"
#import "PBMcd.h"
#import "PBNetwork.h"
#import "PBOperation.h"
#import "PBOrganizationType.h"
#import "PBOutputParameter.h"
#import "PBOwners.h"
#import "PBPBKeyAddressRequest.h"
#import "PBPBKeyResponse.h"
#import "PBPBKeyResponseList.h"
#import "PBPOIBoundaryAddressRequest.h"
#import "PBPOIBoundaryLocationRequest.h"
#import "PBPOIBoundaryLocations.h"
#import "PBPOIBoundaryResponse.h"
#import "PBPOIByGeometryRequest.h"
#import "PBPOIPlaces.h"
#import "PBPSAPResponse.h"
#import "PBParcel.h"
#import "PBParcelBoundary.h"
#import "PBParentBusiness.h"
#import "PBPbKey.h"
#import "PBPhoneVerification.h"
#import "PBPhoto.h"
#import "PBPlaceByLocations.h"
#import "PBPlaceByLocationsLocation.h"
#import "PBPlaceLocation.h"
#import "PBPlaceLocationName.h"
#import "PBPoi.h"
#import "PBPoiBoundary.h"
#import "PBPoiBoundaryPreferences.h"
#import "PBPoiClassification.h"
#import "PBPoiContactDetails.h"
#import "PBPoiCount.h"
#import "PBPoiCountRequest.h"
#import "PBPoints.h"
#import "PBPois.h"
#import "PBPolygonGeometry.h"
#import "PBPopulationTheme.h"
#import "PBPreferencTimeZone.h"
#import "PBPreferences.h"
#import "PBPrimaryZone.h"
#import "PBProfile.h"
#import "PBProfiles.h"
#import "PBProperties.h"
#import "PBPropertyAttributes.h"
#import "PBPropertyInfoAddressRequest.h"
#import "PBPropertyInfoPreferences.h"
#import "PBPropertyInfoResponse.h"
#import "PBPropertyInfoResponses.h"
#import "PBProxy.h"
#import "PBPurchasingBehaviorTheme.h"
#import "PBRaceAndEthnicityTheme.h"
#import "PBRaceTheme.h"
#import "PBRangeVariable.h"
#import "PBRangeVariableV2.h"
#import "PBRate.h"
#import "PBRateCenterResponse.h"
#import "PBReturnFieldsDescriptor.h"
#import "PBReverseGeocodeRequest.h"
#import "PBRisk.h"
#import "PBRiskAddress.h"
#import "PBRoad.h"
#import "PBRoofCoverType.h"
#import "PBRoofFrameType.h"
#import "PBRoofShapeType.h"
#import "PBRoofType.h"
#import "PBRouteBoundary.h"
#import "PBRouteDelivery.h"
#import "PBRouteDirection.h"
#import "PBRouteDirections.h"
#import "PBRouteGeometry.h"
#import "PBSalesTax.h"
#import "PBSalesTaxRate.h"
#import "PBSalesVolume.h"
#import "PBSchool.h"
#import "PBSchoolDistrict.h"
#import "PBSchoolProfile.h"
#import "PBSchoolRanking.h"
#import "PBSchoolsNearByResponse.h"
#import "PBSegmentation.h"
#import "PBSegmentationThemes.h"
#import "PBShoreLineDistance.h"
#import "PBSic.h"
#import "PBSicMetadata.h"
#import "PBSiteDetails.h"
#import "PBSpecialPurposeDistrict.h"
#import "PBSpecialPurposeDistrictTax.h"
#import "PBSpecialPurposeDistrictTaxRate.h"
#import "PBSpeedLimit.h"
#import "PBSpeedRoad.h"
#import "PBStart.h"
#import "PBStartEndPoint.h"
#import "PBStatus.h"
#import "PBStories.h"
#import "PBStudentEthnicity.h"
#import "PBSupplyAndDemandTheme.h"
#import "PBSupportLevel.h"
#import "PBTaxAddress.h"
#import "PBTaxAddressRequest.h"
#import "PBTaxBatchLocationResponse.h"
#import "PBTaxBatchResponse.h"
#import "PBTaxCounty.h"
#import "PBTaxDistrictResponse.h"
#import "PBTaxDistrictResponseList.h"
#import "PBTaxExemption.h"
#import "PBTaxJurisdiction.h"
#import "PBTaxLocationPreferences.h"
#import "PBTaxLocationRequest.h"
#import "PBTaxLocationResponses.h"
#import "PBTaxPlace.h"
#import "PBTaxRateAddress.h"
#import "PBTaxRateAddressRequest.h"
#import "PBTaxRateBatchLocationResponse.h"
#import "PBTaxRateBatchResponse.h"
#import "PBTaxRateLocationRequest.h"
#import "PBTaxRateLocationResponses.h"
#import "PBTaxRateResponse.h"
#import "PBTaxRateResponses.h"
#import "PBTaxResponse.h"
#import "PBTaxResponses.h"
#import "PBTaxState.h"
#import "PBTime.h"
#import "PBTimezone.h"
#import "PBTimezoneAddressRequest.h"
#import "PBTimezoneLocation.h"
#import "PBTimezoneLocationRequest.h"
#import "PBTimezoneLocationResponse.h"
#import "PBTimezoneResponse.h"
#import "PBTopic.h"
#import "PBTravelBoundaries.h"
#import "PBTravelBoundary.h"
#import "PBTravelCostMatrixResponse.h"
#import "PBType.h"
#import "PBTypeaheadRange.h"
#import "PBTypeaheadUnit.h"
#import "PBUnit.h"
#import "PBUrl.h"
#import "PBUseTax.h"
#import "PBUseTaxRate.h"
#import "PBVacancy.h"
#import "PBValidateEmailAddressAPIRequest.h"
#import "PBValidateEmailAddressAPIResponse.h"
#import "PBValidateEmailAddressInput.h"
#import "PBValidateEmailAddressInputRow.h"
#import "PBValidateEmailAddressOptions.h"
#import "PBValidateEmailAddressOutput.h"
#import "PBValidateMailingAddressInput.h"
#import "PBValidateMailingAddressInputRow.h"
#import "PBValidateMailingAddressInputRowUserFields.h"
#import "PBValidateMailingAddressOptions.h"
#import "PBValidateMailingAddressOutput.h"
#import "PBValidateMailingAddressPremiumInput.h"
#import "PBValidateMailingAddressPremiumInputRow.h"
#import "PBValidateMailingAddressPremiumOptions.h"
#import "PBValidateMailingAddressPremiumOutput.h"
#import "PBValidateMailingAddressPremiumRequest.h"
#import "PBValidateMailingAddressPremiumResponse.h"
#import "PBValidateMailingAddressProInput.h"
#import "PBValidateMailingAddressProInputRow.h"
#import "PBValidateMailingAddressProOptions.h"
#import "PBValidateMailingAddressProOutput.h"
#import "PBValidateMailingAddressProRequest.h"
#import "PBValidateMailingAddressProResponse.h"
#import "PBValidateMailingAddressRequest.h"
#import "PBValidateMailingAddressResponse.h"
#import "PBValidateMailingAddressUSCANAPIInput.h"
#import "PBValidateMailingAddressUSCANAPIInputRow.h"
#import "PBValidateMailingAddressUSCANAPIOptions.h"
#import "PBValidateMailingAddressUSCANAPIOutput.h"
#import "PBValidateMailingAddressUSCANAPIRequest.h"
#import "PBValidateMailingAddressUSCANAPIResponse.h"
#import "PBWaterBody.h"
#import "PBWaterBodyLocationResponse.h"
#import "PBWaterBodyResponse.h"



@class PBConfiguration;

/**
 * A key for `NSError` user info dictionaries.
 *
 * The corresponding value is the parsed response body for an HTTP error.
 */
extern NSString *const PBResponseObjectErrorKey;

@interface PBApiClient : AFHTTPSessionManager

@property(nonatomic, assign) NSURLRequestCachePolicy cachePolicy;
@property(nonatomic, assign) NSTimeInterval timeoutInterval;
@property(nonatomic, readonly) NSOperationQueue* queue;

/// In order to ensure the HTTPResponseHeaders are correct, it is recommended to initialize one PBApiClient instance per thread.
@property(nonatomic, readonly) NSDictionary* HTTPResponseHeaders;

@property(nonatomic, strong) id<PBResponseDeserializer> responseDeserializer;

@property(nonatomic, strong) id<PBSanitizer> sanitizer;
/**
 * Clears Cache
 */
+(void)clearCache;

/**
 * Turns on cache
 *
 * @param enabled If the cached is enable, must be `YES` or `NO`
 */
+(void)setCacheEnabled:(BOOL) enabled;

/**
 * Gets the request queue size
 *
 * @return The size of `queuedRequests` static variable.
 */
+(NSUInteger)requestQueueSize;

/**
 * Sets the client unreachable
 *
 * @param state off line state, must be `YES` or `NO`
 */
+(void) setOfflineState:(BOOL) state;

/**
 * Gets if the client is unreachable
 *
 * @return The client offline state
 */
+(BOOL) getOfflineState;

/**
 * Sets the client reachability, this may be overridden by the reachability manager if reachability changes
 *
 * @param The client reachability.
 */
+(void) setReachabilityStatus:(AFNetworkReachabilityStatus) status;

/**
 * Gets the client reachability
 *
 * @return The client reachability.
 */
+(AFNetworkReachabilityStatus) getReachabilityStatus;

/**
 * Gets the next request id
 *
 * @return The next executed request id.
 */
+(NSNumber*) nextRequestId;

/**
 * Generates request id and add it to the queue
 *
 * @return The next executed request id.
 */
+(NSNumber*) queueRequest;

/**
 * Removes request id from the queue
 *
 * @param requestId The request which will be removed.
 */
+(void) cancelRequest:(NSNumber*)requestId;

/**
 * Customizes the behavior when the reachability changed
 *
 * @param changeBlock The block will be executed when the reachability changed.
 */
+(void) setReachabilityChangeBlock:(void(^)(int))changeBlock;

/**
 * Sets the api client reachability strategy
 */
- (void)configureCacheReachibility;

/**
 * Sets header for request
 *
 * @param value The header value
 * @param forKey The header key
 */
-(void)setHeaderValue:(NSString*) value
               forKey:(NSString*) forKey;

/**
 * Updates header parameters and query parameters for authentication
 *
 * @param headers The header parameter will be udpated, passed by pointer to pointer.
 * @param querys The query parameters will be updated, passed by pointer to pointer.
 * @param authSettings The authentication names NSArray.
 */
- (void) updateHeaderParams:(NSDictionary **)headers
                queryParams:(NSDictionary **)querys
           WithAuthSettings:(NSArray *)authSettings;

/**
 * Performs request
 *
 * @param path Request url.
 * @param method Request method.
 * @param pathParams Request path parameters.
 * @param queryParams Request query parameters.
 * @param body Request body.
 * @param headerParams Request header parameters.
 * @param authSettings Request authentication names.
 * @param requestContentType Request content-type.
 * @param responseContentType Response content-type.
 * @param completionBlock The block will be executed when the request completed.
 *
 * @return The request id.
 */
-(NSNumber*) requestWithPath:(NSString*) path
                      method:(NSString*) method
                  pathParams:(NSDictionary *) pathParams
                 queryParams:(NSDictionary*) queryParams
                  formParams:(NSDictionary *) formParams
                       files:(NSDictionary *) files
                        body:(id) body
                headerParams:(NSDictionary*) headerParams
                authSettings:(NSArray *) authSettings
          requestContentType:(NSString*) requestContentType
         responseContentType:(NSString*) responseContentType
                responseType:(NSString *) responseType
             completionBlock:(void (^)(id, NSError *))completionBlock;

/**
 * Custom security policy
 *
 * @return AFSecurityPolicy
 */
- (AFSecurityPolicy *) customSecurityPolicy;

/**
 * PBConfiguration return sharedConfig
 *
 * @return PBConfiguration
 */
- (PBConfiguration*) configuration;


@end
