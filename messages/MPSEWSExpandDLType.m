#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSExpandDLType.h"
#import "../types/MPSEWSEmailAddressType.h"


@implementation MPSEWSExpandDLType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSExpandDLType class]];

    [handler property      : @"mailbox"
             withNamespace : 'm'
             withXmlTag    : @"Mailbox"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSExpandDLType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ExpandDLType: Mailbox=%@ super=%@", _mailbox, [super description]];
}

@end

