//
//  ClassHelpers.m
//  Marcus
//
//  Created by Cielo Reyes on 8/15/13.
//  Copyright (c) 2013 iBarkada. All rights reserved.
//

#import "ClassHelpers.h"
#import <CommonCrypto/CommonDigest.h>
#import <CommonCrypto/CommonHMAC.h>

#pragma mark - NSDictionary

//@implementation MKNumberBadgeView (Helper)
//
//+ (MKNumberBadgeView *)drawBadgeWithValue:(NSNumber *)value atFrame:(CGRect)frame {
//    CGSize size = [[value description] sizeWithFont:[UIFont systemFontOfSize:16]];
//    MKNumberBadgeView *badge = [[MKNumberBadgeView alloc] initWithFrame:CGRectMake(frame.size.width - (size.width * .75), 2, size.width + 10, size.height)];
//    badge.value = [value integerValue];
//    return badge;
//}
//
//@end

@implementation UIFont (Helper)

+ (void)fontList {
    NSArray *familyNames = [[NSArray alloc] initWithArray:[UIFont familyNames]];
    NSArray *fontNames;
    NSInteger indFamily, indFont;
    for (indFamily=0; indFamily<[familyNames count]; ++indFamily) {
        NSLog(@"Family name: %@", [familyNames objectAtIndex:indFamily]);
        fontNames = [[NSArray alloc] initWithArray:
                     [UIFont fontNamesForFamilyName:
                      [familyNames objectAtIndex:indFamily]]];
        for (indFont=0; indFont<[fontNames count]; ++indFont) {
            NSLog(@"    Font name: %@", [fontNames objectAtIndex:indFont]);
        }
    }
}

@end

@implementation CALayer (Helper)

+ (CALayer *)drawLineWithSize:(CGSize)size {
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(0, size.height - 1, size.width, 1);
    layer.backgroundColor = [UIColor colorWithWhite:0.8 alpha:0.5].CGColor;
    return layer;
}

+ (CALayer *)drawWebViewLineWithSize:(CGSize)size {
    CALayer *layer = [CALayer layer];
    layer.frame = CGRectMake(0, size.height - 10, size.width, 10);
    layer.backgroundColor = [UIColor colorWithWhite:0.8 alpha:1].CGColor;
    return layer;
}

@end

//@implementation NSDictionary (Helper)
//
////+ (id)keysWithMealDefaults {
////    NSMutableDictionary *keys = [NSMutableDictionary new];
////    [keys setObject:@"" forKey:mIDKey];
////    [keys setObject:@"" forKey:mDateTimeKey];
////    [keys setObject:@"" forKey:mDescriptionKey];
////    [keys setObject:@"" forKey:mRankKey];
////    [keys setObject:@"" forKey:mTypeKey];
////    [keys setObject:@"" forKey:mNumberKey];
////    [keys setObject:@"" forKey:mFavoriteIdKey];
////    [keys setObject:@"" forKey:mFavoriteEditModeKey];
////    [keys setObject:@"" forKey:mPhotoKey];
////    return keys;
////}
//
//- (id)objectForKeyString:(id)aKey {
//    id object = [self objectForKey:aKey];
//    if (object != nil && object != [NSNull null] && [object isKindOfClass:[NSString class]]) {
//        return [self objectForKey:aKey];
//    }
//    else {
//        NSLog(@"ERROR: Expected data is not correct.");
//        return @"";
//    }
//}
//
//- (id)objectForKeyBoolean:(id)aKey {
//    id object = [self objectForKey:aKey];
//    if (object != nil && object != [NSNull null] && [object isKindOfClass:[NSNumber class]]) {
//        return [self objectForKey:aKey];
//    }
//    else {
//        NSLog(@"ERROR: Expected data is not correct.");
//        return [NSNumber numberWithBool:NO];
//    }
//}
//
//- (id)objectForKeyDictionary:(id)aKey {
//    id object = [self objectForKey:aKey];
//    if (object != nil && object != [NSNull null] && [object isKindOfClass:[NSDictionary class]]) {
//        return [self objectForKey:aKey];
//    }
//    else {
//        NSLog(@"ERROR: Expected data is not correct.");
//        return [NSDictionary dictionary];
//    }
//}
//
//- (id)objectForKeyArray:(id)aKey {
//    id object = [self objectForKey:aKey];
//    if (object != nil && object != [NSNull null] && [object isKindOfClass:[NSArray class]]) {
//        return [self objectForKey:aKey];
//    }
//    else {
//        NSLog(@"ERROR: Expected data is not correct.");
//        return [NSArray array];
//    }
//}
//
//- (id)objectForKeyNumber:(id)aKey {
//    id object = [self objectForKey:aKey];
//    if (object != nil && object != [NSNull null] && [object isKindOfClass:[NSNumber class]]) {
//        return [self objectForKey:aKey];
//    }
//    else {
//        NSLog(@"ERROR: Expected data is not correct.");
//        return [NSNumber numberWithInt:0];
//    }
//}
//
//- (id)objectForKeyError:(id)aKey
//{
//    id object = [self objectForKey:aKey];
//    if (object != nil && object != [NSNull null] && [object isKindOfClass:[NSString class]]) {
//        return [self objectForKey:aKey];
//    }
//    else {
//        NSLog(@"ERROR: Expected data is not correct.");
//        return @"Unknown server error occured.";
//    }
//}
//
//- (id)objectForKeyNumberString:(id)aKey {
//    id object = [self objectForKey:aKey];
//    if (object != nil && object != [NSNull null] && [object isKindOfClass:[NSString class]]) {
//        return [self objectForKey:aKey];
//    }
//    else {
//        NSLog(@"ERROR: Expected data is not correct.");
//        return @"0";
//    }
//}
//
//- (id)cleanNullValues {
//    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
//    for (NSString* key in self) {
//        id value = [self objectForKey:key];
//        if (!value || [value isEqual:[NSNull null]]) {
//            [dict setObject:@"" forKey:key];
//        }
//        else {
//            [dict setObject:value forKey:key];
//        }
//    }
//    return dict;
//}
//
////- (BOOL)isSuccess {
////    return ![[self objectForKey:kErrorStatus] boolValue];
////}
////
////- (NSString *)errorMessage {
////    return [self objectForKey:kErrorMessage];
////}
//
//- (NSString *)textValue {
//    return [self objectForKey:@"__text"];
//}
//
//@end

//#pragma mark - NSString
//
//@implementation NSString (Helper)
//
//- (id)dateFromStringFormat:(NSString *)format
//{
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:format];
//    return [dateFormatter dateFromString:self];
//}
//
//- (NSDate *)dateFromTimeString {
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setTimeZone:[NSTimeZone timeZoneWithName:@"America/Phoenix"]];
//    [dateFormatter setDateFormat:@"H:m"];
//    return [dateFormatter dateFromString:self];
//}
//
//- (NSString *)stripHTML {
//    NSRange range;
//    NSMutableString *str = [[NSMutableString alloc] initWithString:self];
//    while ((range = [str rangeOfString:@"<[^>]+>" options:NSRegularExpressionSearch]).location != NSNotFound)
//        [str setString:[str stringByReplacingCharactersInRange:range withString:@""]];
////    [str setString:[[str componentsSeparatedByCharactersInSet:[NSCharacterSet alphanumericCharacterSet]] componentsJoinedByString:@""]];
//    [str setString:[str stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]]];
//    [str setString:[str stringByReplacingOccurrencesOfString:@"\n" withString:@" "]];
//    [str setString:[str stringByReplacingOccurrencesOfString:@"\t" withString:@""]];
//    return str;
//}
//
//- (BOOL)validateEmail {
//    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,10}";
//    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
//    return [emailTest evaluateWithObject:self];
//}
//
//- (NSString*)MD5
//{
//    // Create pointer to the string as UTF8
//    const char *ptr = [self UTF8String];
//    
//    // Create byte array of unsigned chars
//    unsigned char md5Buffer[CC_MD5_DIGEST_LENGTH];
//    
//    // Create 16 byte MD5 hash value, store in buffer
//    CC_MD5(ptr, (int)strlen(ptr), md5Buffer);
//    
//    // Convert MD5 value in the buffer to NSString of hex values
//    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
//    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
//        [output appendFormat:@"%02x",md5Buffer[i]];
//    
//    return output;
//}
//
//- (NSString *)sha256 {
//    const char *cData = [self cStringUsingEncoding:NSUTF8StringEncoding];
//    unsigned char cHMAC[CC_SHA256_DIGEST_LENGTH];
//    CC_SHA256(cData, (int)strlen(cData),  cHMAC);
//    NSString *hash;
//    
//    NSMutableString* output = [NSMutableString stringWithCapacity:CC_SHA256_DIGEST_LENGTH * 2];
//    
//    for(int i = 0; i < CC_SHA256_DIGEST_LENGTH; i++)
//        [output appendFormat:@"%02x", cHMAC[i]];
//    hash = output;
//    return hash;
//}
//
//- (NSString *)hashStringWithSalt:(NSString *)salt
//{
//    const char *cKey  = [salt cStringUsingEncoding:NSUTF8StringEncoding];
//    const char *cData = [self cStringUsingEncoding:NSUTF8StringEncoding];
//    unsigned char cHMAC[CC_SHA256_DIGEST_LENGTH];
//    CCHmac(kCCHmacAlgSHA256, cKey, strlen(cKey), cData, strlen(cData), cHMAC);
////    CC_SHA256(cData, strlen(cData),  cHMAC);
//    NSString *hash;
//    
//    NSMutableString* output = [NSMutableString stringWithCapacity:CC_SHA256_DIGEST_LENGTH * 2];
//    
//    for(int i = 0; i < CC_SHA256_DIGEST_LENGTH; i++)
//        [output appendFormat:@"%02x", cHMAC[i]];
//    hash = output;
//    return hash;
//}
//
//- (CGFloat)stringHeightWithFont:(UIFont *)font {
//    return [self sizeWithFont:font
//            constrainedToSize:CGSizeMake(300, 999999)
//                lineBreakMode:NSLineBreakByWordWrapping
//            ].height;
//}
//
//- (CGFloat)stringHeightWithFont:(UIFont *)font width:(CGFloat)width {
//    CGSize maxSize = CGSizeMake(width, FLT_MAX);
//    CGRect textRect = [self boundingRectWithSize:maxSize
//                                         options:NSStringDrawingUsesLineFragmentOrigin
//                                      attributes:@{NSFontAttributeName:font}
//                                         context:nil];
//    return textRect.size.height;
//}
//
//- (NSString *)getFirstWord {
//    NSArray *array = [self componentsSeparatedByString:@" "];
//    return [array firstObject];
//}
//
//@end

//#pragma mark - NSDate
//
//@implementation NSDate (Helper)
//
//- (NSArray *)timeIntervalByDateComponents {
//    if (self && (id)self != [NSNull null]) {
//        
//        //[self dateByAddingTimeInterval:[[NSTimeZone localTimeZone] secondsFromGMT]];
//        int timeinterval = (int)[self timeIntervalSinceNow] + (int)[[NSTimeZone localTimeZone] secondsFromGMT];
//        //NSLog(@"timeinterval: %d", timeinterval);
//        if (timeinterval <= 0) {
//            return @[];
//        }
//        else{
//            NSMutableArray *components = [NSMutableArray array];
//            int seconds = timeinterval % 60;
//            int minutes = (timeinterval / 60) % 60;
//            int hours = (timeinterval / 3600) % 24;
//            int days = timeinterval / (60 * 60 * 24);
//            int weeks = timeinterval / (60 * 60 * 24 * 7);
//            int months = timeinterval / (60 * 60 * 24 * 7 * 4);
//            int years = timeinterval / (60 * 60 * 24 * 7 * 4 * 12);
//            
//            if (years > 0) {
//                NSString *label = (years > 1) ? @"years" : @"year";
//                [components addObject:[NSString stringWithFormat:@"%d %@", years, label]];
//            }
//            if(months > 0) {
//                NSString *label = (months > 1) ? @"months" : @"month";
//                [components addObject:[NSString stringWithFormat:@"%d %@", months, label]];
//            }
//            if(weeks > 0) {
//                NSString *label = (weeks > 1) ? @"weeks" : @"week";
//                [components addObject:[NSString stringWithFormat:@"%d %@", weeks, label]];
//            }
//            if(days > 0) {
//                NSString *label = (days > 1) ? @"days" : @"day";
//                [components addObject:[NSString stringWithFormat:@"%d %@", days, label]];
//            }
//            if(hours > 0) {
//                NSString *label = (hours > 1) ? @"hours" : @"hour";
//                [components addObject:[NSString stringWithFormat:@"%d %@", hours, label]];
//            }
//            if(minutes > 0) {
//                NSString *label = (minutes > 1) ? @"minutes" : @"minute";
//                [components addObject:[NSString stringWithFormat:@"%d %@", minutes, label]];
//            }
//            if(seconds > 0) {
//                NSString *label = (seconds > 1) ? @"seconds" : @"second";
//                [components addObject:[NSString stringWithFormat:@"%d %@", seconds, label]];
//            }
//            
//            return components;
//        }
//    }
//    else {
//        return @[];
//    }
//}
//
//- (NSString *)stringFormattedDate {
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setTimeZone:[NSTimeZone timeZoneWithName:@"UTC"]];
//    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
//
//    
//    return [dateFormatter stringFromDate:self];
//}
//
//- (NSString *)stringDateTimeFormat {
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setTimeZone:[NSTimeZone timeZoneWithName:@"America/Phoenix"]];
//    [dateFormatter setDateFormat:@"MM-d-yyyy hh:mm a"];
//    
//    return [dateFormatter stringFromDate:self];
//}
//
//- (NSString *)stringDateOnlyFormat {
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setTimeZone:[NSTimeZone timeZoneWithName:@"America/Phoenix"]];
//    [dateFormatter setDateFormat:@"MM-d-yyyy"];
//    
//    return [dateFormatter stringFromDate:self];
//}
//
////- (NSString *)stringDateNutritionStyle {
////    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
////    [dateFormatter setTimeZone:[NSTimeZone timeZoneWithName:@"America/Phoenix"]];
////    [dateFormatter setDateFormat:@"ccc MM/d"];
////    
////    return [dateFormatter stringFromDate:self];
////}
////
////- (NSDate *)getNextWeek {
////    NSCalendar *cal = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
////    NSDateComponents *components = [cal components:(NSYearCalendarUnit|NSMonthCalendarUnit|NSWeekCalendarUnit|NSDayCalendarUnit)
////                                          fromDate:self];
////    [components setDay:([components day] + 7)];
////    return [cal dateFromComponents:components];
////}
////
////- (NSDate *)getLastWeek {
////    NSCalendar *cal = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
////    NSDateComponents *components = [cal components:(NSYearCalendarUnit|NSMonthCalendarUnit|NSWeekCalendarUnit|NSDayCalendarUnit)
////                                          fromDate:self];
////    [components setDay:([components day] - 7)];
////    return [cal dateFromComponents:components];
////}
////
////+ (NSDate *)getSavedWeek {
////    NSDate *date = [[NSUserDefaults standardUserDefaults] objectForKey:kInfoDateKey];
////    if (date) {
////        return date;
////    }
////    
////    return [NSDate date];
////}
////
////- (NSDate *)dateComponentDifference:(NSInteger)days {
////    NSCalendar *cal = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
////    NSDateComponents *components = [cal components:(NSYearCalendarUnit|NSMonthCalendarUnit|NSWeekCalendarUnit|NSDayCalendarUnit)
////                                          fromDate:self];
////    [components setDay:([components day] + days)];
////    return [cal dateFromComponents:components];
////}
//
//@end

#pragma mark - UIColor

@implementation UIColor (Helper)

+ (UIColor*)colorWithHexString:(NSString*)hex {
    return [self colorWithHexString:hex withAlpha:1.0];
}

+ (UIColor*)colorWithHexString:(NSString*)hex withAlpha:(CGFloat)alpha
{
    NSString *cString = [[hex stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // String should be 6 or 8 characters
    if ([cString length] < 6) return [UIColor grayColor];
    
    if ([cString hasPrefix:@"#"]) cString = [cString substringFromIndex:1];
    
    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];
    
    if ([cString length] != 6) return  [UIColor grayColor];
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
                           alpha:alpha];
}

- (UIColor *)inverseColor {
    const CGFloat *componentColors = CGColorGetComponents([self CGColor]);
    UIColor *newColor = [[UIColor alloc] initWithRed:(1.0 - componentColors[0])
                                               green:(1.0 - componentColors[1])
                                                blue:(1.0 - componentColors[2])
                                               alpha:componentColors[3]];
    return newColor;
}

- (UIColor *)lighterColor
{
    CGFloat r, g, b, a;
    if ([self getRed:&r green:&g blue:&b alpha:&a])
        return [UIColor colorWithRed:MIN(r + 0.1, 1.0)
                               green:MIN(g + 0.1, 1.0)
                                blue:MIN(b + 0.1, 1.0)
                               alpha:a];
    return nil;
}

- (UIColor *)darkerColor
{
    CGFloat r, g, b, a;
    if ([self getRed:&r green:&g blue:&b alpha:&a])
        return [UIColor colorWithRed:MAX(r - 0.1, 0.0)
                               green:MAX(g - 0.1, 0.0)
                                blue:MAX(b - 0.1, 0.0)
                               alpha:a];
    return nil;
}

+ (UIColor *)colorForRating:(NSInteger)rate {
    UIColor *color = [UIColor grayColor];
//    switch (rate) {
//        case 1:
//            color = [[UIColor lightGrayColor] lighterColor];
//            break;
//        case 2:
//            color = [UIColor lightGrayColor];
//            break;
//        case 3:
//            color = [[kColorNuvitaOrange lighterColor] lighterColor];
//            break;
//            
//        case 4:
//            color = [kColorNuvitaOrange lighterColor];
//            break;
//            
//        case 5:
//            color = kColorNuvitaOrange;
//            break;
//        
//            
//        default:
//            break;
//    }
//    
    return color;
}

@end


#pragma mark - UINavigationController

@implementation UINavigationController (Helper)

- (NSUInteger)supportedInterfaceOrientations {
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"logo"]];
    [self.navigationBar.topItem setTitleView:imageView];
    return [self.topViewController supportedInterfaceOrientations];
}

- (BOOL)shouldAutorotate {
    return YES;
}

@end

#pragma mark - UITabBarController

@implementation UITabBarController (Helper)

- (NSUInteger)supportedInterfaceOrientations {
    return [self.selectedViewController supportedInterfaceOrientations];
}

- (BOOL)shouldAutorotate {
    return YES;
}

@end

#pragma mark - UIAlertView

@implementation UIAlertView (Helper)

+ (void)displayAlert:(NSString *)message
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:message delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    [alert show];
}

+ (void)displayAlert:(NSString *)message title:(NSString *)title
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:message delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    [alert show];
}

@end

#pragma mark - UIImage

@implementation UIImage (Helper)

- (UIImage *)colorizedImage:(UIColor *)color {
    UIGraphicsBeginImageContextWithOptions(self.size, NO, self.scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    [color setFill];
    CGContextTranslateCTM(context, 0, self.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextClipToMask(context, CGRectMake(0, 0, self.size.width, self.size.height), [self CGImage]);
    CGContextFillRect(context, CGRectMake(0, 0, self.size.width, self.size.height));
    
    UIImage *coloredImg = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    return  coloredImg;
}

- (NSData *)data {
//    CGSize size =  self.size;
//    CGRect frame = CGRectMake(0, 0, size.width * .25, size.height * .25);
//    UIGraphicsBeginImageContext(frame.size);
//    [self drawInRect:frame];
//    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
    UIImage *image = [self imageScaleToWidth:300];
    NSData *imageData = UIImageJPEGRepresentation(image, .1);
    return imageData;
}

- (UIImage *)imageScaleToWidth:(float)width {
    float oldWidth = self.size.width;
    float scaleFactor = width / oldWidth;
    float newHeight = self.size.height * scaleFactor;
    float newWidth = oldWidth * scaleFactor;
    
    UIGraphicsBeginImageContext(CGSizeMake(newWidth, newHeight));
    [self drawInRect:CGRectMake(0, 0, newWidth, newHeight)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

@end

#pragma mark - UILabel

@implementation UILabel (Helper)

- (void)underline {
    NSString *lbl = self.text;
    if (lbl != nil && ![lbl isEqualToString:@""]) {
        NSMutableAttributedString *lblStr = [[NSMutableAttributedString alloc] initWithString:lbl];
        [lblStr addAttribute:NSUnderlineStyleAttributeName
                          value:[NSNumber numberWithInt:1]
                          range:(NSRange){0,[lblStr length]}];
        self.attributedText = lblStr;
    }
}

- (void)autoHeight {
    CGRect frame = self.frame;
    CGSize maxSize = CGSizeMake(frame.size.width, FLT_MAX);
    CGRect textRect = [self.text boundingRectWithSize:maxSize
                                              options:NSStringDrawingUsesLineFragmentOrigin
                                           attributes:@{NSFontAttributeName:self.font}
                                              context:nil];
    frame.size.height = textRect.size.height;
    [self setFrame:frame];
}

- (int)lineCount {
    NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
    [paragraphStyle setLineBreakMode:NSLineBreakByWordWrapping];
    CGSize constrain = CGSizeMake(self.bounds.size.width, FLT_MAX);
    CGRect frame = [self.text boundingRectWithSize:constrain
                                           options:NSStringDrawingUsesLineFragmentOrigin
                                        attributes:@{NSFontAttributeName:self.font ,
                                                     NSParagraphStyleAttributeName:paragraphStyle}
                                           context:nil];
    return ceil(frame.size.height / self.font.lineHeight);
}

@end

#pragma mark - UIView Sizes

@implementation UIView (Sizes)

+ (UIView *)createCustomViewSize:(CGSize)size withRating:(NSInteger)rating {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, size.width, size.height)];
    view.backgroundColor = [UIColor clearColor];
    
    UIColor *rateColor = [UIColor colorForRating:rating];
    CGFloat width = size.width / 5;
    for (int i = 1; i <= 5; i++) {
//        UIColor *color = [UIColor colorWithHexString:@"#E76826"];
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake((i - 1) * width, 0, width, size.height)];
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        [imageView setImage:[[UIImage imageNamed:@"icon-heart-64"] colorizedImage:rateColor]];
        if (i <= rating) {
            [imageView setImage:[[UIImage imageNamed:@"icon-fill-heart-64"] colorizedImage:rateColor]];
        }
        [view addSubview:imageView];
    }
    
    return view;
}

- (CGFloat)left {
    return self.frame.origin.x;
}

- (void)setLeft:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)top {
    return self.frame.origin.y;
}

- (void)setTop:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)right {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setRight:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setBottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGPoint)origin {
    return self.frame.origin;
}

- (void)setOrigin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGSize)size {
    return self.frame.size;
}

- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (void)addShadow {
    self.layer.borderColor = [kbordercolor CGColor];
    self.layer.borderWidth = 0.5f;
    self.layer.shadowOffset = CGSizeMake(-1, 1);
    self.layer.shadowRadius = 2.0f;
    self.layer.shadowOpacity = 0.2f;
}

@end

@implementation UIImageView (content)

- (UIImageView *)autoResizeContent {
    self.contentMode = UIViewContentModeScaleAspectFill;
    self.autoresizingMask = (UIViewAutoresizingFlexibleBottomMargin
                             | UIViewAutoresizingFlexibleHeight
                             | UIViewAutoresizingFlexibleLeftMargin
                             | UIViewAutoresizingFlexibleRightMargin
                             | UIViewAutoresizingFlexibleTopMargin
                             | UIViewAutoresizingFlexibleWidth);
    return self;
}

@end

//@implementation MYTextField
//
//- (CGRect)textRectForBounds:(CGRect)bounds {
//    int margin = 10;
//    CGRect inset = CGRectMake(bounds.origin.x + margin, bounds.origin.y, bounds.size.width - margin, bounds.size.height);
//    return inset;
//}
//
//- (CGRect)editingRectForBounds:(CGRect)bounds {
//    int margin = 10;
//    CGRect inset = CGRectMake(bounds.origin.x + margin, bounds.origin.y, bounds.size.width - margin, bounds.size.height);
//    return inset;
//}
//
//@end

