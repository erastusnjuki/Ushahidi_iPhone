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

@class TextTableCell;
@class SubtitleTableCell;
@class SearchTableCell;
@class TextFieldTableCell;
@class TextViewTableCell;
@class TextViewTableCell;
@class BooleanTableCell;
@class CheckBoxTableCell;
@class ImageTableCell;
@class MapTableCell;
@class DateTableCell;

@protocol TextTableCellDelegate;
@protocol SearchTableCellDelegate;
@protocol TextFieldTableCellDelegate;
@protocol TextViewTableCellDelegate;
@protocol BooleanTableCellDelegate;
@protocol CheckBoxTableCellDelegate;
@protocol MapTableCellDelegate;
@protocol DateTableCellDelegate;

@interface TableCellFactory : NSObject {

}

+ (UITableViewCell *) getDefaultTableCellForTable:(UITableView *)tableView;

+ (UITableViewCell *) getDefaultTableCellForTable:(UITableView *)tableView
									   identifier:(NSString *)cellIdentifier;


+ (SubtitleTableCell *) getSubtitleTableCellWithDefaultImage:(UIImage *)defaultImage 
													   table:(UITableView *)tableView;

+ (SubtitleTableCell *) getSubtitleTableCellWithDefaultImage:(UIImage *)defaultImage 
													   table:(UITableView *)tableView
												  identifier:(NSString *)cellIdentifier;


+ (TextTableCell *) getTextTableCellWithDelegate:(id<TextTableCellDelegate>)delegate
											table:(UITableView *)tableView;

+ (TextTableCell *) getTextTableCellWithDelegate:(id<TextTableCellDelegate>)delegate
											table:(UITableView *)tableView
									   identifier:(NSString *)cellIdentifier;


+ (TextFieldTableCell *) getTextFieldTableCellWithDelegate:(id<TextFieldTableCellDelegate>)delegate
													 table:(UITableView *)tableView;

+ (TextFieldTableCell *) getTextFieldTableCellWithDelegate:(id<TextFieldTableCellDelegate>)delegate
													 table:(UITableView *)tableView
												identifier:(NSString *)cellIdentifier;

+ (TextViewTableCell *) getTextViewTableCellWithDelegate:(id<TextViewTableCellDelegate>)delegate
												   table:(UITableView *)tableView;

+ (TextViewTableCell *) getTextViewTableCellWithDelegate:(id<TextViewTableCellDelegate>)delegate
												   table:(UITableView *)tableView
											  identifier:(NSString *)cellIdentifier;


+ (SearchTableCell *) getSearchTableCellWithDelegate:(id<SearchTableCellDelegate>)delegate 
											   table:(UITableView *)tableView;

+ (SearchTableCell *) getSearchTableCellWithDelegate:(id<SearchTableCellDelegate>)delegate 
											   table:(UITableView *)tableView
										  identifier:(NSString *)cellIdentifier;


+ (BooleanTableCell *) getBooleanTableCellWithDelegate:(id<BooleanTableCellDelegate>)delegate
												 table:(UITableView *)tableView;

+ (BooleanTableCell *) getBooleanTableCellWithDelegate:(id<BooleanTableCellDelegate>)delegate
												 table:(UITableView *)tableView
											identifier:(NSString *)cellIdentifier;


+ (CheckBoxTableCell *) getCheckBoxTableCellWithDelegate:(id<CheckBoxTableCellDelegate>)delegate
												   table:(UITableView *)tableView;

+ (CheckBoxTableCell *) getCheckBoxTableCellWithDelegate:(id<CheckBoxTableCellDelegate>)delegate
												   table:(UITableView *)tableView
											  identifier:(NSString *)cellIdentifier;

+ (ImageTableCell *) getImageTableCellWithImage:(UIImage *)image 
										  table:(UITableView *)tableView;

+ (ImageTableCell *) getImageTableCellWithImage:(UIImage *)image 
										  table:(UITableView *)tableView
									 identifier:(NSString *)cellIdentifier;


+ (MapTableCell *) getMapTableCellWithDelegate:(id<MapTableCellDelegate>)delegate
										 table:(UITableView *)tableView;

+ (MapTableCell *) getMapTableCellWithDelegate:(id<MapTableCellDelegate>)delegate
										 table:(UITableView *)tableView
									identifier:(NSString *)cellIdentifier;

+ (DateTableCell *) getDateTableCellWithDelegate:(id<DateTableCellDelegate>)delegate
										   table:(UITableView *)tableView;

+ (DateTableCell *) getDateTableCellWithDelegate:(id<DateTableCellDelegate>)delegate
										   table:(UITableView *)tableView
									  identifier:(NSString *)cellIdentifier;

@end
