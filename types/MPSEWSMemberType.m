#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSMemberType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSEmailAddressType.h"
#import "../types/MPSEWSMemberStatusType.h"


@implementation MPSEWSMemberType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSMemberType class]];

    [handler property    : @"key"
             withAttrTag : @"Key"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler property      : @"mailbox"
             withNamespace : 't'
             withXmlTag    : @"Mailbox"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler property      : @"status"
             withNamespace : 't'
             withXmlTag    : @"Status"
             withHandler   : [MPSEWSMemberStatusType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSMemberType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val key ] && ![MPSEWSStringTypeHandler isValid:[val key ] forVersion: ver]) return FALSE;
    if ([val mailbox] && ![MPSEWSEmailAddressType isValid:[val mailbox] forVersion:ver]) return FALSE;
    if ([val status] && ![MPSEWSMemberStatusType isValid:[val status] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSMemberType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"MemberType: Key=%@ Mailbox=%@ Status=%@", _key, _mailbox, _status];
}

@end

