#import <Foundation/Foundation.h>

#import "MPSEWSServiceConfigurationType.h"
@implementation MPSEWSServiceConfigurationType /* SimpleType */

static NSSet* enumerations = nil;

+ (void) initialize
{
    enumerations = [NSSet setWithObjects:
                                         [MPSEWSServiceConfigurationType MailTips], 
                                         [MPSEWSServiceConfigurationType UnifiedMessagingConfiguration], 
                                         [MPSEWSServiceConfigurationType ProtectionRules], nil];
    [[[MPSEWSServiceConfigurationType alloc] init] register];
}

+ (BOOL) isValid:(NSString*) val
{
    return [enumerations containsObject:val];
}

- (id) init
{
    self = [super initWithClass:[MPSEWSServiceConfigurationType class] andValues:enumerations];
    return self;
}

- (id) initWithClass:(Class) cls
{
    self = [super initWithClass:cls andValues:enumerations];
    return self;
}

+ (NSString *) MailTips { return @"MailTips"; }
+ (NSString *) UnifiedMessagingConfiguration { return @"UnifiedMessagingConfiguration"; }
+ (NSString *) ProtectionRules { return @"ProtectionRules"; }
@end

