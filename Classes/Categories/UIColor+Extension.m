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

#import "UIColor+Extension.h"

#define vendColor(r, g, b) static UIColor *ret; if (ret == nil) ret = [[UIColor colorWithRed:(CGFloat)r/255.0 green:(CGFloat)g/255.0 blue:(CGFloat)b/255.0 alpha:1.0] retain]; return ret

@implementation UIColor (Extension)

+ (id) colorWithHexString:(NSString *)stringToConvert {
	NSString *cString = [[stringToConvert stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];  
	
	// String should be 6 or 8 characters  
	if ([cString length] < 6) return [UIColor blackColor];  
	
	// strip 0X if it appears  
	if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];  
	
	if ([cString length] != 6) return [UIColor blackColor];  
	
	// Separate into r, g, b substrings  
	NSRange range;  
	range.location = 0;  
	range.length = 2;  
	NSString *rString = [cString substringWithRange:range];  
	
	range.location = 2;  
	NSString *gString = [cString substringWithRange:range];  
	
	range.location = 4;  
	NSString *bString = [cString substringWithRange:range];  
	
	// Scan values  
	unsigned int r, g, b;  
	[[NSScanner scannerWithString:rString] scanHexInt:&r];  
	[[NSScanner scannerWithString:gString] scanHexInt:&g];  
	[[NSScanner scannerWithString:bString] scanHexInt:&b];  
	
	return [UIColor colorWithRed:((float) r / 255.0f)  
						   green:((float) g / 255.0f)  
							blue:((float) b / 255.0f)  
						   alpha:1.0f];  
}

+ (id)ushahidiDarkBrown                                 {vendColor(237, 231, 209);}
+ (id)ushahidiLiteBrown									{vendColor(243, 237, 221);}
+ (id)ushahidiTan										{vendColor(246, 246, 238);}

+ (id)aliceBlue                                         {vendColor(240, 248, 255);}
+ (id)alizarin                                          {vendColor(227, 38, 54);}
+ (id)amaranth                                          {vendColor(229, 43, 80);}
+ (id)amber                                             {vendColor(255, 191, 0);}
+ (id)amethyst                                          {vendColor(153, 102, 204);}
+ (id)apricot                                           {vendColor(251, 206, 177);}
+ (id)aqua                                              {vendColor(0, 255, 255);}
+ (id)aquamarine                                        {vendColor(127, 255, 212);}
+ (id)armyGreen                                         {vendColor(75, 83, 32);}
+ (id)asparagus                                         {vendColor(123, 160, 91);}
+ (id)atomicTangerine                                   {vendColor(255, 153, 102);}
+ (id)auburn                                            {vendColor(111, 53, 26);}
+ (id)azure                                             {vendColor(0, 127, 255);}
+ (id)azureWeb                                          {vendColor(240, 255, 255);}
+ (id)babyBlue                                          {vendColor(224, 255, 255);}
+ (id)beige                                             {vendColor(245, 245, 220);}
+ (id)bistre                                            {vendColor(61, 43, 31);}
+ (id)black                                             {vendColor(0, 0, 0);}
+ (id)blue                                              {vendColor(0, 0, 255);}
+ (id)pigmentBlue                                       {vendColor(51, 51, 153);}
+ (id)rybBlue                                           {vendColor(2, 71, 254);}
+ (id)blueGreen                                         {vendColor(0, 223, 223);}
+ (id)blueViolet                                        {vendColor(138, 43, 226);}
+ (id)bondiBlue                                         {vendColor(0, 149, 182);}
+ (id)brass                                             {vendColor(181, 166, 66);}
+ (id)brightGreen                                       {vendColor(102, 255, 0);}
+ (id)brightPink                                        {vendColor(255, 0, 127);}
+ (id)brightTurquoise                                   {vendColor(8, 232, 222);}
+ (id)brilliantRose                                     {vendColor(255, 85, 163);}
+ (id)britishRacingGreen                                {vendColor(0, 66, 37);}
+ (id)bronze                                            {vendColor(205, 127, 50);}
+ (id)brown                                             {vendColor(150, 75, 0);}
+ (id)buff                                              {vendColor(240, 220, 130);}
+ (id)burgundy                                          {vendColor(128, 0, 32);}
+ (id)burntOrange                                       {vendColor(204, 85, 0);}
+ (id)burntSienna                                       {vendColor(233, 116, 81);}
+ (id)burntUmber                                        {vendColor(138, 51, 36);}
+ (id)camouflageGreen                                   {vendColor(120, 134, 107);}
+ (id)caputMortuum                                      {vendColor(89, 39, 32);}
+ (id)cardinal                                          {vendColor(196, 30, 58);}
+ (id)carmine                                           {vendColor(150, 0, 24);}
+ (id)carnationPink                                     {vendColor(255, 166, 201);}
+ (id)carolinaBlue                                      {vendColor(156, 186, 227);}
+ (id)carrotOrange                                      {vendColor(237, 145, 33);}
+ (id)celadon                                           {vendColor(172, 225, 175);}
+ (id)cerise                                            {vendColor(222, 49, 99);}
+ (id)cerulean                                          {vendColor(0, 123, 167);}
+ (id)ceruleanBlue                                      {vendColor(42, 82, 190);}
+ (id)champagne                                         {vendColor(247, 231, 206);}
+ (id)charcoal                                          {vendColor(70, 70, 70);}
+ (id)chartreuse                                        {vendColor(223, 255, 0);}
+ (id)chartreuseWeb                                     {vendColor(127, 255, 0);}
+ (id)cherryBlossomPink                                 {vendColor(255, 183, 197);}
+ (id)chestnut                                          {vendColor(205, 92, 92);}
+ (id)chocolate                                         {vendColor(123, 63, 0);}
+ (id)cinnabar                                          {vendColor(227, 66, 52);}
+ (id)cinnamon                                          {vendColor(210, 105, 30);}
+ (id)cobalt                                            {vendColor(0, 71, 171);}
+ (id)columbiaBlue                                      {vendColor(155, 221, 255);}
+ (id)copper                                            {vendColor(184, 115, 51);}
+ (id)copperRose                                        {vendColor(153, 102, 102);}
+ (id)coral                                             {vendColor(255, 127, 80);}
+ (id)coralRed                                          {vendColor(255, 64, 64);}
+ (id)corn                                              {vendColor(251, 236, 93);}
+ (id)cornflowerBlue                                    {vendColor(100, 149, 237);}
+ (id)cosmicLatte                                       {vendColor(255, 248, 231);}
+ (id)cream                                             {vendColor(255, 253, 208);}
+ (id)crimson                                           {vendColor(220, 20, 60);}
+ (id)cyan                                              {vendColor(0, 255, 255);}
+ (id)processCyan                                       {vendColor(0, 180, 247);}
+ (id)darkBlue                                          {vendColor(0, 0, 139);}
+ (id)darkBrown                                         {vendColor(101, 67, 33);}
+ (id)darkCerulean                                      {vendColor(8, 69, 126);}
+ (id)darkChestnut                                      {vendColor(152, 105, 96);}
+ (id)darkCoral                                         {vendColor(205, 91, 69);}
+ (id)darkGoldenrod                                     {vendColor(184, 134, 11);}
+ (id)darkGreen                                         {vendColor(1, 50, 32);}
+ (id)darkKhaki                                         {vendColor(189, 183, 107);}
+ (id)darkPastelGreen                                   {vendColor(3, 192, 60);}
+ (id)darkPink                                          {vendColor(231, 84, 128);}
+ (id)darkScarlet                                       {vendColor(86, 3, 125);}
+ (id)darkSalmon                                        {vendColor(233, 150, 122);}
+ (id)darkSlateGray                                     {vendColor(47, 79, 79);}
+ (id)darkSpringGreen                                   {vendColor(23, 114, 69);}
+ (id)darkTan                                           {vendColor(145, 129, 81);}
+ (id)darkTurquoise                                     {vendColor(0, 206, 209);}
+ (id)darkViolet                                        {vendColor(148, 0, 211);}
+ (id)deepCerise                                        {vendColor(218, 50, 135);}
+ (id)deepChestnut                                      {vendColor(185, 78, 72);}
+ (id)deepFuchsia                                       {vendColor(193, 84, 193);}
+ (id)deepLilac                                         {vendColor(153, 85, 187);}
+ (id)deepMagenta                                       {vendColor(204, 0, 204);}
+ (id)deepPeach                                         {vendColor(255, 203, 164);}
+ (id)deepPink                                          {vendColor(255, 20, 147);}
+ (id)denim                                             {vendColor(21, 96, 189);}
+ (id)dodgerBlue                                        {vendColor(30, 144, 255);}
+ (id)ecru                                              {vendColor(194, 178, 128);}
+ (id)egyptianBlue                                      {vendColor(16, 52, 166);}
+ (id)electricBlue                                      {vendColor(125, 249, 255);}
+ (id)electricGreen                                     {vendColor(0, 255, 0);}
+ (id)electricIndigo                                    {vendColor(102, 0, 255);}
+ (id)electricLime                                      {vendColor(204, 255, 0);}
+ (id)electricPurple                                    {vendColor(191, 0, 255);}
+ (id)emerald                                           {vendColor(80, 200, 120);}
+ (id)eggplant                                          {vendColor(97, 64, 81);}
+ (id)faluRed                                           {vendColor(128, 24, 24);}
+ (id)fernGreen                                         {vendColor(79, 121, 66);}
+ (id)firebrick                                         {vendColor(178, 34, 34);}
+ (id)flax                                              {vendColor(238, 220, 130);}
+ (id)forestGreen                                       {vendColor(34, 139, 34);}
+ (id)frenchRose                                        {vendColor(246, 74, 138);}
+ (id)fuchsia                                           {vendColor(255, 0, 255);}
+ (id)fuchsiaPink                                       {vendColor(255, 119, 255);}
+ (id)gamboge                                           {vendColor(228, 155, 15);}
+ (id)metallicGold                                      {vendColor(212, 175, 55);}
+ (id)goldWeb                                           {vendColor(255, 215, 0);}
+ (id)goldenBrown                                       {vendColor(153, 101, 21);}
+ (id)goldenYellow                                      {vendColor(255, 223, 0);}
+ (id)goldenrod                                         {vendColor(218, 165, 32);}
+ (id)greyAsparagus                                     {vendColor(70, 89, 69);}
+ (id)green                                             {vendColor(0, 255, 0);}
+ (id)greenWeb                                          {vendColor(0, 128, 0);}
+ (id)pigmentGreen                                      {vendColor(0, 165, 80);}
+ (id)rybGreen                                          {vendColor(102, 176, 50);}
+ (id)greenYellow                                       {vendColor(173, 255, 47);}
+ (id)grey                                              {vendColor(128, 128, 128);}
+ (id)hanPurple                                         {vendColor(82, 24, 250);}
+ (id)harlequin                                         {vendColor(63, 255, 0);}
+ (id)heliotrope                                        {vendColor(223, 115, 255);}
+ (id)hollywoodCerise                                   {vendColor(244, 0, 161);}
+ (id)hotMagenta                                        {vendColor(255, 0, 204);}
+ (id)hotPink                                           {vendColor(255, 105, 180);}
+ (id)indigo                                            {vendColor(0, 65, 106);}
+ (id)indigoWeb                                         {vendColor(75, 0, 130);}
+ (id)internationalKleinBlue                            {vendColor(0, 47, 167);}
+ (id)internationalOrange                               {vendColor(255, 79, 0);}
+ (id)islamicGreen                                      {vendColor(0, 153, 0);}
+ (id)ivory                                             {vendColor(255, 255, 240);}
+ (id)jade                                              {vendColor(0, 168, 107);}
+ (id)kellyGreen                                        {vendColor(76, 187, 23);}
+ (id)khaki                                             {vendColor(195, 176, 145);}
+ (id)lightKhaki                                        {vendColor(240, 230, 140);}
+ (id)lavender                                          {vendColor(181, 126, 220);}
+ (id)lavenderWeb                                       {vendColor(230, 230, 250);}
+ (id)lavenderBlue                                      {vendColor(204, 204, 255);}
+ (id)lavenderBlush                                     {vendColor(255, 240, 245);}
+ (id)lavenderGrey                                      {vendColor(196, 195, 221);}
+ (id)lavenderMagenta                                   {vendColor(238, 130, 238);}
+ (id)lavenderPink                                      {vendColor(251, 174, 210);}
+ (id)lavenderPurple                                    {vendColor(150, 120, 182);}
+ (id)lavenderRose                                      {vendColor(251, 160, 227);}
+ (id)lawnGreen                                         {vendColor(124, 252, 0);}
+ (id)lemon                                             {vendColor(253, 233, 16);}
+ (id)lemonChiffon                                      {vendColor(255, 250, 205);}
+ (id)lightBlue                                         {vendColor(173, 216, 230);}
+ (id)lightPink                                         {vendColor(255, 182, 193);}
+ (id)lilac                                             {vendColor(200, 162, 200);}
+ (id)lime                                              {vendColor(191, 255, 0);}
+ (id)limeWeb                                           {vendColor(0, 255, 0);}
+ (id)limeGreen                                         {vendColor(50, 205, 50);}
+ (id)linen                                             {vendColor(250, 240, 230);}
+ (id)magenta                                           {vendColor(255, 0, 255);}
+ (id)magentaDye                                        {vendColor(202, 31, 23);}
+ (id)processMagenta                                    {vendColor(255, 0, 144);}
+ (id)magicMint                                         {vendColor(170, 240, 209);}
+ (id)magnolia                                          {vendColor(248, 244, 255);}
+ (id)malachite                                         {vendColor(11, 218, 81);}
+ (id)maroonWeb                                         {vendColor(128, 0, 0);}
+ (id)maroon                                            {vendColor(176, 48, 96);}
+ (id)mayaBlue                                          {vendColor(115, 194, 251);}
+ (id)mauve                                             {vendColor(224, 176, 255);}
+ (id)mauveTaupe                                        {vendColor(145, 95, 109);}
+ (id)mediumBlue                                        {vendColor(0, 0, 205);}
+ (id)mediumCarmine                                     {vendColor(175, 64, 53);}
+ (id)mediumLavenderMagenta                             {vendColor(204, 153, 204);}
+ (id)mediumPurple                                      {vendColor(147, 112, 219);}
+ (id)mediumSpringGreen                                 {vendColor(0, 250, 154);}
+ (id)midnightBlue                                      {vendColor(0, 51, 102);}
+ (id)mintGreen                                         {vendColor(152, 255, 152);}
+ (id)mistyRose                                         {vendColor(255, 228, 225);}
+ (id)mossGreen                                         {vendColor(173, 223, 173);}
+ (id)mountbattenPink                                   {vendColor(153, 122, 141);}
+ (id)mustard                                           {vendColor(255, 219, 88);}
+ (id)myrtle                                            {vendColor(33, 66, 30);}
+ (id)navajoWhite                                       {vendColor(255, 222, 173);}
+ (id)navyBlue                                          {vendColor(0, 0, 128);}
+ (id)ochre                                             {vendColor(204, 119, 34);}
+ (id)officeGreen                                       {vendColor(0, 128, 0);}
+ (id)oldGold                                           {vendColor(207, 181, 59);}
+ (id)oldLace                                           {vendColor(253, 245, 230);}
+ (id)oldLavender                                       {vendColor(121, 104, 120);}
+ (id)oldRose                                           {vendColor(192, 46, 76);}
+ (id)olive                                             {vendColor(128, 128, 0);}
+ (id)oliveDrab                                         {vendColor(107, 142, 35);}
+ (id)olivine                                           {vendColor(154, 185, 115);}
+ (id)orange                                            {vendColor(255, 127, 0);}
+ (id)rybOrange                                         {vendColor(251, 153, 2);}
+ (id)orangeWeb                                         {vendColor(255, 165, 0);}
+ (id)orangePeel                                        {vendColor(255, 160, 0);}
+ (id)orangeRed                                         {vendColor(255, 69, 0);}
+ (id)orchid                                            {vendColor(218, 112, 214);}
+ (id)paleBlue                                          {vendColor(175, 238, 238);}
+ (id)paleBrown                                         {vendColor(152, 118, 84);}
+ (id)paleCarmine                                       {vendColor(175, 64, 53);}
+ (id)paleChestnut                                      {vendColor(221, 173, 175);}
+ (id)paleCornflowerBlue                                {vendColor(171, 205, 239);}
+ (id)paleMagenta                                       {vendColor(249, 132, 229);}
+ (id)palePink                                          {vendColor(250, 218, 221);}
+ (id)paleRedViolet                                     {vendColor(219, 112, 147);}
+ (id)papayaWhip                                        {vendColor(255, 239, 213);}
+ (id)pastelGreen                                       {vendColor(119, 221, 119);}
+ (id)pastelPink                                        {vendColor(255, 209, 220);}
+ (id)peach                                             {vendColor(255, 229, 180);}
+ (id)peachOrange                                       {vendColor(255, 204, 153);}
+ (id)peachYellow                                       {vendColor(250, 223, 173);}
+ (id)pear                                              {vendColor(209, 226, 49);}
+ (id)periwinkle                                        {vendColor(204, 204, 255);}
+ (id)persianBlue                                       {vendColor(28, 57, 187);}
+ (id)persianGreen                                      {vendColor(0, 166, 147);}
+ (id)persianIndigo                                     {vendColor(50, 18, 122);}
+ (id)persianOrange                                     {vendColor(217, 144, 88);}
+ (id)persianRed                                        {vendColor(204, 51, 51);}
+ (id)persianPink                                       {vendColor(247, 127, 190);}
+ (id)persianRose                                       {vendColor(254, 40, 162);}
+ (id)persimmon                                         {vendColor(236, 88, 0);}
+ (id)pineGreen                                         {vendColor(1, 121, 111);}
+ (id)pink                                              {vendColor(255, 192, 203);}
+ (id)pinkOrange                                        {vendColor(255, 153, 102);}
+ (id)platinum                                          {vendColor(229, 228, 226);}
+ (id)plum                                              {vendColor(204, 153, 204);}
+ (id)powderBlue                                        {vendColor(176, 224, 230);}
+ (id)puce                                              {vendColor(204, 136, 153);}
+ (id)prussianBlue                                      {vendColor(0, 49, 83);}
+ (id)psychedelicPurple                                 {vendColor(221, 0, 255);}
+ (id)pumpkin                                           {vendColor(255, 117, 24);}
+ (id)purpleWeb                                         {vendColor(128, 0, 128);}
+ (id)purple                                            {vendColor(160, 92, 240);}
+ (id)purpleTaupe                                       {vendColor(80, 64, 77);}
+ (id)rawUmber                                          {vendColor(115, 74, 18);}
+ (id)razzmatazz                                        {vendColor(227, 11, 92);}
+ (id)red                                               {vendColor(255, 0, 0);}
+ (id)pigmentRed                                        {vendColor(237, 28, 36);}
+ (id)rybRed                                            {vendColor(254, 39, 18);}
+ (id)redBiolet                                         {vendColor(199, 21, 133);}
+ (id)richCarmine                                       {vendColor(215, 0, 64);}
+ (id)robinEggBlue                                      {vendColor(0, 204, 204);}
+ (id)rose                                              {vendColor(255, 0, 127);}
+ (id)roseMadder                                        {vendColor(227, 38, 54);}
+ (id)roseTaupe                                         {vendColor(144, 93, 93);}
+ (id)royalBlue                                         {vendColor(65, 105, 225);}
+ (id)royalPurple                                       {vendColor(107, 63, 160);}
+ (id)ruby                                              {vendColor(224, 17, 95);}
+ (id)russet                                            {vendColor(128, 70, 27);}
+ (id)rust                                              {vendColor(183, 65, 14);}
+ (id)safetyOrange                                      {vendColor(255, 102, 0);}
+ (id)blazeOrange                                       {vendColor(255, 102, 0);}
+ (id)saffron                                           {vendColor(244, 196, 48);}
+ (id)salmon                                            {vendColor(255, 140, 105);}
+ (id)sandyBrown                                        {vendColor(244, 164, 96);}
+ (id)sangria                                           {vendColor(146, 0, 10);}
+ (id)sapphire                                          {vendColor(8, 37, 103);}
+ (id)scarlet                                           {vendColor(255, 36, 0);}
+ (id)schoolBusYellow                                   {vendColor(255, 216, 0);}
+ (id)seaGreen                                          {vendColor(46, 139, 87);}
+ (id)seashell                                          {vendColor(255, 245, 238);}
+ (id)selectiveYellow                                   {vendColor(255, 186, 0);}
+ (id)sepia                                             {vendColor(112, 66, 20);}
+ (id)shamrockGreen                                     {vendColor(0, 158, 96);}
+ (id)shockingPink                                      {vendColor(252, 15, 192);}
+ (id)silver                                            {vendColor(192, 192, 192);}
+ (id)skyBlue                                           {vendColor(135, 206, 235);}
+ (id)slateGrey                                         {vendColor(112, 128, 144);}
+ (id)smalt                                             {vendColor(0, 51, 153);}
+ (id)springBud                                         {vendColor(167, 252, 0);}
+ (id)springGreen                                       {vendColor(0, 255, 127);}
+ (id)steelBlue                                         {vendColor(70, 130, 180);}
+ (id)tan                                               {vendColor(210, 180, 140);}
+ (id)tangerine                                         {vendColor(242, 133, 0);}
+ (id)tangerineYellow                                   {vendColor(255, 204, 0);}
+ (id)taupe                                             {vendColor(72, 60, 50);}
+ (id)teaGreen                                          {vendColor(208, 240, 192);}
+ (id)teaRoseOrange                                     {vendColor(248, 131, 194);}
+ (id)teaRose                                           {vendColor(244, 194, 194);}
+ (id)teal                                              {vendColor(0, 128, 128);}
+ (id)tawny                                             {vendColor(205, 87, 0);}
+ (id)terraCotta                                        {vendColor(226, 114, 91);}
+ (id)thistle                                           {vendColor(216, 191, 216);}
+ (id)tomato                                            {vendColor(255, 99, 71);}
+ (id)turquoise                                         {vendColor(48, 213, 200);}
+ (id)tyrianPurple                                      {vendColor(102, 2, 60);}
+ (id)ultramarine                                       {vendColor(18, 10, 143);}
+ (id)unitedNationsBlue                                 {vendColor(91, 146, 229);}
+ (id)vegasGold                                         {vendColor(197, 179, 88);}
+ (id)vermilion                                         {vendColor(227, 66, 51);}
+ (id)violet                                            {vendColor(139, 0, 255);}
+ (id)violetWeb                                         {vendColor(238, 130, 238);}
+ (id)rybViolet                                         {vendColor(2, 71, 54);}
+ (id)viridian                                          {vendColor(64, 130, 109);}
+ (id)wheat                                             {vendColor(245, 222, 179);}
+ (id)white                                             {vendColor(255, 255, 255);}
+ (id)wisteria                                          {vendColor(201, 160, 220);}
+ (id)yellow                                            {vendColor(255, 255, 0);}
+ (id)processYellow                                     {vendColor(255, 239, 0);}
+ (id)rybYellow                                         {vendColor(254, 254, 51);}
+ (id)yellowGreen                                       {vendColor(154, 205, 50);}
+ (id)zinnwaldite                                       {vendColor(235, 194, 175);}

@end
