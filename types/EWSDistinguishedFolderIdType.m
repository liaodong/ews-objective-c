#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSDistinguishedFolderIdType.h"


@implementation EWSDistinguishedFolderIdType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSDistinguishedFolderIdType class]];

    [handler property    : @"id"
             isRequired  : TRUE
             withAttrTag : @"Id"
             withHandler : [EWSDistinguishedFolderIdNameType class]];

    [handler property    : @"changeKey"
             isRequired  : FALSE
             withAttrTag : @"ChangeKey"
             withHandler : [EWSStringTypeHandler class]];

    [handler property   : @"mailbox"
             isRequired : FALSE
             withXmlTag : @"Mailbox"
             withHandler: [EWSEmailAddressType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSDistinguishedFolderIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DistinguishedFolderIdType: Id=%@ ChangeKey=%@ Mailbox=%@ super=%@", _id, _changeKey, _mailbox, [super description]];
}

@end

