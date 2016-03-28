#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSDistinguishedFolderIdType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSDistinguishedFolderIdNameType.h"
#import "../types/MPSEWSEmailAddressType.h"


@implementation MPSEWSDistinguishedFolderIdType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSDistinguishedFolderIdType class]];

    [handler property    : @"id"
             isRequired  : TRUE
             withAttrTag : @"Id"
             withHandler : [MPSEWSDistinguishedFolderIdNameType class]];

    [handler property    : @"changeKey"
             isRequired  : FALSE
             withAttrTag : @"ChangeKey"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler property      : @"mailbox"
             isRequired    : FALSE
             withNamespace : 't'
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
    return [MPSEWSDistinguishedFolderIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DistinguishedFolderIdType: Id=%@ ChangeKey=%@ Mailbox=%@ super=%@", _id, _changeKey, _mailbox, [super description]];
}

@end

