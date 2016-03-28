#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSRemoveDelegateType.h"
#import "../types/EWSArrayOfUserIdType.h"
#import "../types/EWSEmailAddressType.h"


@implementation EWSRemoveDelegateType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSRemoveDelegateType class]];

    [handler property      : @"mailbox"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"Mailbox"
             withHandler   : [EWSEmailAddressType class]];

    [handler property      : @"userIds"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"UserIds"
             withHandler   : [EWSArrayOfUserIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSRemoveDelegateType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RemoveDelegateType: UserIds=%@ super=%@", _userIds, [super description]];
}

@end

