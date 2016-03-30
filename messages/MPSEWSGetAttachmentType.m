#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetAttachmentType.h"
#import "../types/MPSEWSAttachmentResponseShapeType.h"
#import "../types/MPSEWSNonEmptyArrayOfRequestAttachmentIdsType.h"


@implementation MPSEWSGetAttachmentType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetAttachmentType class]];

    [handler property      : @"attachmentShape"
             withNamespace : 'm'
             withXmlTag    : @"AttachmentShape"
             withHandler   : [MPSEWSAttachmentResponseShapeType class]];

    [handler property      : @"attachmentIds"
             withNamespace : 'm'
             withXmlTag    : @"AttachmentIds"
             withHandler   : [MPSEWSNonEmptyArrayOfRequestAttachmentIdsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGetAttachmentType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetAttachmentType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetAttachmentType: AttachmentShape=%@ AttachmentIds=%@ super=%@", _attachmentShape, _attachmentIds, [super description]];
}

@end

