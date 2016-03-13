#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSGetAttachmentType.h"


@implementation EWSGetAttachmentType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSGetAttachmentType class]];

    [handler property      : @"attachmentShape"
             isRequired    : FALSE
             withNamespace : 'm'
             withXmlTag    : @"AttachmentShape"
             withHandler   : [EWSAttachmentResponseShapeType class]];

    [handler property      : @"attachmentIds"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"AttachmentIds"
             withHandler   : [EWSNonEmptyArrayOfRequestAttachmentIdsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSGetAttachmentType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetAttachmentType: AttachmentShape=%@ AttachmentIds=%@ super=%@", _attachmentShape, _attachmentIds, [super description]];
}

@end

