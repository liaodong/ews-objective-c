#import <Foundation/Foundation.h>

#import "MPSEWSMailTipTypes.h"
@implementation MPSEWSMailTipTypes /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSMailTipTypes All], 
                                         [MPSEWSMailTipTypes OutOfOfficeMessage], 
                                         [MPSEWSMailTipTypes MailboxFullStatus], 
                                         [MPSEWSMailTipTypes CustomMailTip], 
                                         [MPSEWSMailTipTypes ExternalMemberCount], 
                                         [MPSEWSMailTipTypes TotalMemberCount], 
                                         [MPSEWSMailTipTypes MaxMessageSize], 
                                         [MPSEWSMailTipTypes DeliveryRestriction], 
                                         [MPSEWSMailTipTypes ModerationStatus], 
                                         [MPSEWSMailTipTypes InvalidRecipient], nil];
    [[[MPSEWSMailTipTypes alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSMailTipTypes class] andValues:enumerations];
    return self;
}

- (id) initWithClass:(Class) cls
{
    self = [super initWithClass:cls andValues:enumerations];
    return self;
}

+ (NSString *) All { return @"All"; }
+ (NSString *) OutOfOfficeMessage { return @"OutOfOfficeMessage"; }
+ (NSString *) MailboxFullStatus { return @"MailboxFullStatus"; }
+ (NSString *) CustomMailTip { return @"CustomMailTip"; }
+ (NSString *) ExternalMemberCount { return @"ExternalMemberCount"; }
+ (NSString *) TotalMemberCount { return @"TotalMemberCount"; }
+ (NSString *) MaxMessageSize { return @"MaxMessageSize"; }
+ (NSString *) DeliveryRestriction { return @"DeliveryRestriction"; }
+ (NSString *) ModerationStatus { return @"ModerationStatus"; }
+ (NSString *) InvalidRecipient { return @"InvalidRecipient"; }
@end

