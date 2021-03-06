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
             withNamespace : 'm'
             withXmlTag    : @"ParentItemId"
             withHandler   : [MPSEWSItemIdType class]];

    [handler property      : @"attachments"
             withNamespace : 'm'
             withXmlTag    : @"Attachments"
             withHandler   : [MPSEWSNonEmptyArrayOfAttachmentsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSCreateAttachmentType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val forVersion:ver]) return FALSE;
    if ([val parentItemId] && ![MPSEWSItemIdType isValid:[val parentItemId] forVersion:ver]) return FALSE;
    if ([val attachments] && ![MPSEWSNonEmptyArrayOfAttachmentsType isValid:[val attachments] forVersion:ver]) return FALSE;
    return TRUE;
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

