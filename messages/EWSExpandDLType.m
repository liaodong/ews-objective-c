#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSExpandDLType.h"
#import "../types/EWSEmailAddressType.h"


@implementation EWSExpandDLType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSExpandDLType class]];

    [handler property      : @"mailbox"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"Mailbox"
             withHandler   : [EWSEmailAddressType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSExpandDLType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ExpandDLType: Mailbox=%@ super=%@", _mailbox, [super description]];
}

@end

