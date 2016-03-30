#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSBaseDelegateType.h"
#import "../types/MPSEWSEmailAddressType.h"


@implementation MPSEWSBaseDelegateType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSBaseDelegateType class]];

    [handler property      : @"mailbox"
             withNamespace : 'm'
             withXmlTag    : @"Mailbox"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSBaseDelegateType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSBaseDelegateType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BaseDelegateType: Mailbox=%@ super=%@", _mailbox, [super description]];
}

@end

