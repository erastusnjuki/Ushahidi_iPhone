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

#import "showIncidentDetails.h"
#import "showLocation.h"
#import "photosViewController.h"

@implementation showIncidentDetails
@synthesize dict;

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

- (void)viewWillAppear:(BOOL)animated
{
	
	NSArray *arrMedia = [dict objectForKey:@"media"];
	mediacount = [arrMedia count];
	[btn_Photo setTitle:[NSString stringWithFormat:@"Photos (%d)",mediacount] forState:normal];
	
	NSMutableDictionary *dict1 = [dict objectForKey:@"incident"];	
	event.text = [dict1 objectForKey:@"incidenttitle"];
	place.text = [dict1 objectForKey:@"locationname"];
	date.text = [dict1 objectForKey:@"incidentdate"];
	tv.text = [dict1 objectForKey:@"incidentdescription"];
	NSString *ts = [dict1 objectForKey:@"incidentverified"];
	
	if([ts isEqualToString:@"1"])
	{
		verified.text = @"YES";
		[verified setTextColor:[UIColor greenColor]];
	}
	else
	{
		verified.text = @"NO";
		[verified setTextColor:[UIColor redColor]];
	}
}

-(IBAction)btn_Photo_Clicked:(id)sender
{
	photosViewController *ph = [[photosViewController alloc] initWithNibName:@"photosViewController" bundle:nil];
	ph.photoDict = [[NSMutableDictionary alloc] init];
	ph.photoDict = dict;
	[self.navigationController pushViewController:ph animated:YES];
}


-(IBAction)mapButton_Clicked:(id)sender
{
	showLocation *shLoc = [[showLocation alloc] initWithNibName:@"showLocation" bundle:nil];
	shLoc.dictForLocation = [[NSMutableDictionary alloc] init];
	shLoc.dictForLocation = dict;
	[self.navigationController pushViewController:shLoc animated:YES];
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
   
	[super viewDidLoad];
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
