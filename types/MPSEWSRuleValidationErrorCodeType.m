#import <Foundation/Foundation.h>

#import "MPSEWSRuleValidationErrorCodeType.h"
@implementation MPSEWSRuleValidationErrorCodeType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSRuleValidationErrorCodeType ADOperationFailure], 
                                         [MPSEWSRuleValidationErrorCodeType ConnectedAccountNotFound], 
                                         [MPSEWSRuleValidationErrorCodeType CreateWithRuleId], 
                                         [MPSEWSRuleValidationErrorCodeType EmptyValueFound], 
                                         [MPSEWSRuleValidationErrorCodeType DuplicatedPriority], 
                                         [MPSEWSRuleValidationErrorCodeType DuplicatedOperationOnTheSameRule], 
                                         [MPSEWSRuleValidationErrorCodeType FolderDoesNotExist], 
                                         [MPSEWSRuleValidationErrorCodeType InvalidAddress], 
                                         [MPSEWSRuleValidationErrorCodeType InvalidDateRange], 
                                         [MPSEWSRuleValidationErrorCodeType InvalidFolderId], 
                                         [MPSEWSRuleValidationErrorCodeType InvalidSizeRange], 
                                         [MPSEWSRuleValidationErrorCodeType InvalidValue], 
                                         [MPSEWSRuleValidationErrorCodeType MessageClassificationNotFound], 
                                         [MPSEWSRuleValidationErrorCodeType MissingAction], 
                                         [MPSEWSRuleValidationErrorCodeType MissingParameter], 
                                         [MPSEWSRuleValidationErrorCodeType MissingRangeValue], 
                                         [MPSEWSRuleValidationErrorCodeType NotSettable], 
                                         [MPSEWSRuleValidationErrorCodeType RecipientDoesNotExist], 
                                         [MPSEWSRuleValidationErrorCodeType RuleNotFound], 
                                         [MPSEWSRuleValidationErrorCodeType SizeLessThanZero], 
                                         [MPSEWSRuleValidationErrorCodeType StringValueTooBig], 
                                         [MPSEWSRuleValidationErrorCodeType UnsupportedAddress], 
                                         [MPSEWSRuleValidationErrorCodeType UnexpectedError], 
                                         [MPSEWSRuleValidationErrorCodeType UnsupportedRule], nil];
    [[[MPSEWSRuleValidationErrorCodeType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSRuleValidationErrorCodeType class]];
    return self;
}

- (id) initWithClass:(Class) cls
{
    self = [super initWithClass:cls];
    return self;
}

- (NSString *) updateObject:(NSString *)obj withCharacters:(NSString*) s
{
    s = [s stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return [enumerations containsObject:s] ? [enumerations member:s] : obj;
}

- (void) writeXmlInto:(NSMutableString*)buffer for:(NSString *) object
{
    NSString* obj = ((NSString*) object);
    NSAssert([enumerations containsObject:obj], @"String is a enumerated list");
    [buffer appendString:((NSString*) object)];
}

+ (NSString *) ADOperationFailure { return @"ADOperationFailure"; }
+ (NSString *) ConnectedAccountNotFound { return @"ConnectedAccountNotFound"; }
+ (NSString *) CreateWithRuleId { return @"CreateWithRuleId"; }
+ (NSString *) EmptyValueFound { return @"EmptyValueFound"; }
+ (NSString *) DuplicatedPriority { return @"DuplicatedPriority"; }
+ (NSString *) DuplicatedOperationOnTheSameRule { return @"DuplicatedOperationOnTheSameRule"; }
+ (NSString *) FolderDoesNotExist { return @"FolderDoesNotExist"; }
+ (NSString *) InvalidAddress { return @"InvalidAddress"; }
+ (NSString *) InvalidDateRange { return @"InvalidDateRange"; }
+ (NSString *) InvalidFolderId { return @"InvalidFolderId"; }
+ (NSString *) InvalidSizeRange { return @"InvalidSizeRange"; }
+ (NSString *) InvalidValue { return @"InvalidValue"; }
+ (NSString *) MessageClassificationNotFound { return @"MessageClassificationNotFound"; }
+ (NSString *) MissingAction { return @"MissingAction"; }
+ (NSString *) MissingParameter { return @"MissingParameter"; }
+ (NSString *) MissingRangeValue { return @"MissingRangeValue"; }
+ (NSString *) NotSettable { return @"NotSettable"; }
+ (NSString *) RecipientDoesNotExist { return @"RecipientDoesNotExist"; }
+ (NSString *) RuleNotFound { return @"RuleNotFound"; }
+ (NSString *) SizeLessThanZero { return @"SizeLessThanZero"; }
+ (NSString *) StringValueTooBig { return @"StringValueTooBig"; }
+ (NSString *) UnsupportedAddress { return @"UnsupportedAddress"; }
+ (NSString *) UnexpectedError { return @"UnexpectedError"; }
+ (NSString *) UnsupportedRule { return @"UnsupportedRule"; }
@end

