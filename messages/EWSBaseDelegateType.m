#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSBaseDelegateType.h"


@implementation EWSBaseDelegateType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSBaseDelegateType class]];

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
    return [EWSBaseDelegateType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BaseDelegateType: Mailbox=%@ super=%@", _mailbox, [super description]];
}

@end

