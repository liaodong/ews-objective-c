#import <Foundation/Foundation.h>

#import "EWSPhoneNumberKeyType.h"
@implementation EWSPhoneNumberKeyType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [EWSPhoneNumberKeyType AssistantPhone], 
                                         [EWSPhoneNumberKeyType BusinessFax], 
                                         [EWSPhoneNumberKeyType BusinessPhone], 
                                         [EWSPhoneNumberKeyType BusinessPhone2], 
                                         [EWSPhoneNumberKeyType Callback], 
                                         [EWSPhoneNumberKeyType CarPhone], 
                                         [EWSPhoneNumberKeyType CompanyMainPhone], 
                                         [EWSPhoneNumberKeyType HomeFax], 
                                         [EWSPhoneNumberKeyType HomePhone], 
                                         [EWSPhoneNumberKeyType HomePhone2], 
                                         [EWSPhoneNumberKeyType Isdn], 
                                         [EWSPhoneNumberKeyType MobilePhone], 
                                         [EWSPhoneNumberKeyType OtherFax], 
                                         [EWSPhoneNumberKeyType OtherTelephone], 
                                         [EWSPhoneNumberKeyType Pager], 
                                         [EWSPhoneNumberKeyType PrimaryPhone], 
                                         [EWSPhoneNumberKeyType RadioPhone], 
                                         [EWSPhoneNumberKeyType Telex], 
                                         [EWSPhoneNumberKeyType TtyTddPhone], nil];
    [[[EWSPhoneNumberKeyType alloc] init] register];
}

- (id) init
{
    self = [super initWithClass:[EWSPhoneNumberKeyType class]];
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

+ (NSString *) AssistantPhone { return @"AssistantPhone"; }
+ (NSString *) BusinessFax { return @"BusinessFax"; }
+ (NSString *) BusinessPhone { return @"BusinessPhone"; }
+ (NSString *) BusinessPhone2 { return @"BusinessPhone2"; }
+ (NSString *) Callback { return @"Callback"; }
+ (NSString *) CarPhone { return @"CarPhone"; }
+ (NSString *) CompanyMainPhone { return @"CompanyMainPhone"; }
+ (NSString *) HomeFax { return @"HomeFax"; }
+ (NSString *) HomePhone { return @"HomePhone"; }
+ (NSString *) HomePhone2 { return @"HomePhone2"; }
+ (NSString *) Isdn { return @"Isdn"; }
+ (NSString *) MobilePhone { return @"MobilePhone"; }
+ (NSString *) OtherFax { return @"OtherFax"; }
+ (NSString *) OtherTelephone { return @"OtherTelephone"; }
+ (NSString *) Pager { return @"Pager"; }
+ (NSString *) PrimaryPhone { return @"PrimaryPhone"; }
+ (NSString *) RadioPhone { return @"RadioPhone"; }
+ (NSString *) Telex { return @"Telex"; }
+ (NSString *) TtyTddPhone { return @"TtyTddPhone"; }
@end

