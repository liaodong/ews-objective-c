#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSResolutionType.h"
#import "../types/MPSEWSContactItemType.h"
#import "../types/MPSEWSEmailAddressType.h"


@implementation MPSEWSResolutionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSResolutionType class]];

    [handler property      : @"mailbox"
             withNamespace : 't'
             withXmlTag    : @"Mailbox"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler property      : @"contact"
             withNamespace : 't'
             withXmlTag    : @"Contact"
             withHandler   : [MPSEWSContactItemType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSResolutionType*) val
{   (void) val;
    if ([val mailbox] && ![MPSEWSEmailAddressType isValid:[val mailbox]]) return FALSE;
    if ([val contact] && ![MPSEWSContactItemType isValid:[val contact]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSResolutionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ResolutionType: Mailbox=%@ Contact=%@", _mailbox, _contact];
}

@end

