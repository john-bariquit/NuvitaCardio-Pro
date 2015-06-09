//
//  ClassHelpers.h
//  Marcus
//
//  Created by Cielo Reyes on 8/15/13.
//  Copyright (c) 2013 iBarkada. All rights reserved.
//

#import "Globals.h"

#define SYSTEM_VERSION_EQUAL_TO(v)                  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedSame)
#define SYSTEM_VERSION_GREATER_THAN(v)              ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedDescending)
#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)
#define SYSTEM_VERSION_LESS_THAN_OR_EQUAL_TO(v)     ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedDescending)

#define DEGREES_TO_RADIANS(angle) ((angle) / 180.0 * M_PI)

#define KEYBOARD_PORTRAIT_HEIGHT 216

//typedef enum {
//    FriendOperationListRequest = 0,
//    FriendOperationInvitationRequest = 1
//} FriendOperation ;

//NotAFavorite = 0,
//FromFavorite = 1,
//NewFavorite = 2,
//EditFavorite = 3,
//NoEditFavorite = 4,
//DeleteFavorite = 5
//typedef enum {
//    NotAFavorite = 0,
//    FromFavorite = 1,
//    NewFavorite = 2,
//    EditFavorite = 3,
//    NoEditFavorite = 4,
//    DeleteFavorite = 5
//} MealEditingMode;
//
//typedef enum {
//    MealTypeBreakfast = 1,
//    MealTypeAMSnack = 2,
//    MealTypeLunch = 3,
//    MealTypePMSnack = 4,
//    MealTypeDinner = 5
//} MealType;

//
//@interface MKNumberBadgeView (Helper)
//
//+ (MKNumberBadgeView *)drawBadgeWithValue:(NSNumber *)value atFrame:(CGRect)frame;
//
//@end

@interface UIFont (Helper)

+ (void)fontList;

@end

//@interface CALayer (Helper)
//
//+ (CALayer *)drawLineWithSize:(CGSize)size;
//+ (CALayer *)drawWebViewLineWithSize:(CGSize)size;
//
//@end

//@interface NSDictionary (Helper)
//
//+ (id)keysWithMealDefaults;
//- (id)objectForKeyString:(id)aKey;
//- (id)objectForKeyBoolean:(id)aKey;
//- (id)objectForKeyDictionary:(id)aKey;
//- (id)objectForKeyArray:(id)aKey;
//- (id)objectForKeyNumber:(id)aKey;
//- (id)objectForKeyError:(id)aKey;
//- (id)objectForKeyNumberString:(id)aKey;
//- (id)cleanNullValues;
//- (BOOL)isSuccess;
//- (NSString *)errorMessage;
//- (NSString *)textValue;
//
//@end

//@interface NSString (Helper)
//
//- (id)dateFromStringFormat:(NSString *)format;
//- (NSDate *)dateFromTimeString;
//- (NSString *)stripHTML;
//- (BOOL)validateEmail;
//- (NSString *)MD5;
//- (NSString *)hashStringWithSalt:(NSString *)salt;
//- (NSString *)sha256;
//- (CGFloat)stringHeightWithFont:(UIFont *)font;
//- (CGFloat)stringHeightWithFont:(UIFont *)font width:(CGFloat)width;
//- (NSString *)getFirstWord;
//@end

//@interface NSDate (Helper)
//
//- (NSArray *)timeIntervalByDateComponents;
//- (NSString *)stringFormattedDate;
//- (NSString *)stringDateTimeFormat;
//- (NSString *)stringDateOnlyFormat;
//- (NSString *)stringDateNutritionStyle;
//- (NSDate *)getNextWeek;
//- (NSDate *)getLastWeek;
//+ (NSDate *)getSavedWeek;
//
//@end

//@interface NSDateFormatter (Helper)
//
//- (NSString *)stringFromDateCheck:(NSDate *)date;
//
//@end

@interface UIColor (Helper)

+ (UIColor*)colorWithHexString:(NSString*)hex;
+ (UIColor*)colorWithHexString:(NSString*)hex withAlpha:(CGFloat)alpha;
- (UIColor*) inverseColor;
- (UIColor *)lighterColor;
- (UIColor *)darkerColor;
+ (UIColor *)colorForRating:(NSInteger)rate;

@end

@interface UINavigationController (Helper)

@end

@interface UITabBarController (Helper)

@end

@interface UIAlertView (Helper)

+ (void)displayAlert:(NSString *)message;
+ (void)displayAlert:(NSString *)message title:(NSString *)title;
@end

@interface UIImage(Helper)
- (UIImage *)colorizedImage:(UIColor *)color;
- (NSData *)data;
- (UIImage *)imageScaleToWidth:(float)width;
@end

@interface UILabel (Helper)
- (void)underline;
- (void)autoHeight;
//- (CGFloat)estimatedHeight;
- (int)lineCount;
@end

@interface UIView (Sizes)
+ (UIView *)createCustomViewSize:(CGSize)size withRating:(NSInteger)rating;
- (CGFloat)left;
- (void)setLeft:(CGFloat)x;
- (CGFloat)top;
- (void)setTop:(CGFloat)y;
- (CGFloat)right;
- (void)setRight:(CGFloat)right;
- (CGFloat)bottom;
- (void)setBottom:(CGFloat)bottom;
- (CGFloat)width;
- (void)setWidth:(CGFloat)width;
- (CGFloat)height;
- (void)setHeight:(CGFloat)height;
- (CGPoint)origin;
- (void)setOrigin:(CGPoint)origin;
- (CGSize)size;
- (void)setSize:(CGSize)size;
- (void)addShadow;

@end

@interface UIImageView (content)

- (UIImageView *)autoResizeContent;

@end
//
//@interface MYTextField : UITextField
//
//@end


