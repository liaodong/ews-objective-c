#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSNonEmptyArrayOfRequestAttachmentIdsType.h"
#import "../types/EWSRequestAttachmentIdType.h"


@implementation EWSNonEmptyArrayOfRequestAttachmentIdsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSNonEmptyArrayOfRequestAttachmentIdsType class]];

    [handler property      : @"attachmentId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"AttachmentId"
             withHandler   : [EWSRequestAttachmentIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSNonEmptyArrayOfRequestAttachmentIdsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfRequestAttachmentIdsType: AttachmentId=%@", _attachmentId];
}

@end

