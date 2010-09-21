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

@class Location;
@class Photo;
@class News;
@class Category;

@interface Incident : NSObject {

@public 
	NSString *identifier;
	NSString *title;
	NSString *description;
	NSDate *date;
	
	BOOL active;
	BOOL verified;
	
	NSArray *news;
	NSArray *photos;
	NSArray *categories;
	
	Location *location;
	
	NSString *locationID;
	NSString *locationName;
	NSString *locationLatitude;
	NSString *locationLongitude;
}

@property(nonatomic,retain) NSString *identifier;
@property(nonatomic,retain) NSString *title;
@property(nonatomic,retain) NSString *description;
@property(nonatomic,retain) NSDate *date;

@property(nonatomic,assign) BOOL active;
@property(nonatomic,assign) BOOL verified;

@property(nonatomic,retain) NSArray *news;
@property(nonatomic,retain) NSArray *photos;
@property(nonatomic,retain) NSArray *categories;

@property(nonatomic,retain) Location *location;

@property(nonatomic,retain) NSString *locationID;
@property(nonatomic,retain) NSString *locationName;
@property(nonatomic,retain) NSString *locationLatitude;
@property(nonatomic,retain) NSString *locationLongitude;

- (id)initWithDictionary:(NSDictionary *)dictionary mediaDictionary:(NSDictionary *)media;
- (id)initWithDefaultValues;

- (BOOL) matchesString:(NSString *)string;
- (NSString *) getDateString;

- (void) addPhoto:(Photo *)photo;
- (void) addNews:(News *)news;
- (void) addCategory:(Category *)category;
- (void) removeCategory:(Category *)category;
- (BOOL) hasCategory:(Category *)category;

@end
