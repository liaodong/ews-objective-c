#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSCreateAttachmentType.h"
#import "../types/EWSItemIdType.h"
#import "../types/EWSNonEmptyArrayOfAttachmentsType.h"


@implementation EWSCreateAttachmentType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSCreateAttachmentType class]];

    [handler property      : @"parentItemId"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ParentItemId"
             withHandler   : [EWSItemIdType class]];

    [handler property      : @"attachments"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"Attachments"
             withHandler   : [EWSNonEmptyArrayOfAttachmentsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSCreateAttachmentType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CreateAttachmentType: ParentItemId=%@ Attachments=%@ super=%@", _parentItemId, _attachments, [super description]];
}

@end

