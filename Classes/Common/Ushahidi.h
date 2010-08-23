/*****************************************************************************
 ** Copyright (c) 2010 Ushahidi Inc
 ** All rights reserved
 ** Contact: team@ushahidi.com
 ** Website: http://www.ushahidi.com
 **
 ** GNU Lesser General Public License Usage
 ** This file may be used under the terms of the GNU Lesser
 ** General Public License version 3 as published by the Free Software
 ** Foundation and appearing in the file LICENSE.LGPL included in the
 ** packaging of this file. Please review the following information to
 ** ensure the GNU Lesser General Public License version 3 requirements
 ** will be met: http://www.gnu.org/licenses/lgpl.html.
 **
 **
 ** If you have questions regarding the use of this file, please contact
 ** Ushahidi developers at team@ushahidi.com.
 **
 *****************************************************************************/

#import <Foundation/Foundation.h>
#import "ASIHTTPRequest.h"
#import "ASIFormDataRequest.h"

@protocol UshahidiDelegate;

@class API;

@interface Ushahidi : NSObject<ASIHTTPRequestDelegate> {

@public
	
@private
	API *api;
	NSString *domain;

	NSMutableDictionary *instances;
	NSMutableDictionary *countries;
	NSMutableDictionary *categories;
	NSMutableDictionary *locations;
	NSMutableDictionary *incidents;
	NSMutableDictionary *delegates;
}

+ (Ushahidi *) sharedUshahidi;

- (void) save;
- (void) loadForDomain:(NSString *)domain;

- (NSArray *) getInstancesWithDelegate:(id<UshahidiDelegate>)delegate;

- (NSArray *) getCategoriesWithDelegate:(id<UshahidiDelegate>)delegate;
- (void) getCategoryByID:(NSString *)categoryID withDelegate:(id<UshahidiDelegate>)delegate;

- (NSArray *) getCountriesWithDelegate:(id<UshahidiDelegate>)delegate;
- (void) getCountryByID:(NSString *)countryId withDelegate:(id<UshahidiDelegate>)delegate;
- (void) getCountryByISO:(NSString *)countryISO withDelegate:(id<UshahidiDelegate>)delegate;
- (void) getCountryByName:(NSString *)countryName withDelegate:(id<UshahidiDelegate>)delegate;

- (NSArray *) getLocationsWithDelegate:(id<UshahidiDelegate>)delegate;
- (void) getLocationByID:(NSString *)locationID withDelegate:(id<UshahidiDelegate>)delegate;
- (NSArray *) getLocationsByCountryID:(NSString *)countryID withDelegate:(id<UshahidiDelegate>)delegate;

- (NSArray *) getIncidentsWithDelegate:(id<UshahidiDelegate>)delegate;
- (void) getIncidentsCountWithDelegate:(id<UshahidiDelegate>)delegate;
- (void) getGeoGraphicMidPointWithDelegate:(id<UshahidiDelegate>)delegate;
- (NSArray *) getIncidentsByCategoryID:(NSString *)categoryID withDelegate:(id<UshahidiDelegate>)delegate;
- (NSArray *) getIncidentsByCategoryName:(NSString *)categoryName withDelegate:(id<UshahidiDelegate>)delegate;
- (NSArray *) getIncidentsByLocationID:(NSString *)locationID withDelegate:(id<UshahidiDelegate>)delegate;
- (NSArray *) getIncidentsByLocationName:(NSString *)locationName withDelegate:(id<UshahidiDelegate>)delegate;
- (NSArray *) getIncidentsBySinceID:(NSString *)sinceID withDelegate:(id<UshahidiDelegate>)delegate;

@end
			 
@protocol UshahidiDelegate <NSObject>

@optional

- (void) downloadedFromUshahidi:(Ushahidi *)ushahidi apiKey:(NSString *)apiKey error:(NSError *)error;
- (void) downloadedFromUshahidi:(Ushahidi *)ushahidi instances:(NSArray *)instances error:(NSError *)error;
- (void) downloadedFromUshahidi:(Ushahidi *)ushahidi categories:(NSArray *)categories error:(NSError *)error;
- (void) downloadedFromUshahidi:(Ushahidi *)ushahidi countries:(NSArray *)countries error:(NSError *)error;
- (void) downloadedFromUshahidi:(Ushahidi *)ushahidi locations:(NSArray *)locations error:(NSError *)error;
- (void) downloadedFromUshahidi:(Ushahidi *)ushahidi incidents:(NSArray *)incidents error:(NSError *)error;

@end
