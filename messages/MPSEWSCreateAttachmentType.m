#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSCreateAttachmentType.h"
#import "../types/MPSEWSItemIdType.h"
#import "../types/MPSEWSNonEmptyArrayOfAttachmentsType.h"


@implementation MPSEWSCreateAttachmentType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSCreateAttachmentType class]];

    [handler property      : @"parentItemId"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ParentItemId"
             withHandler   : [MPSEWSItemIdType class]];

    [handler property      : @"attachments"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"Attachments"
             withHandler   : [MPSEWSNonEmptyArrayOfAttachmentsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSCreateAttachmentType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CreateAttachmentType: ParentItemId=%@ Attachments=%@ super=%@", _parentItemId, _attachments, [super description]];
}

@end

