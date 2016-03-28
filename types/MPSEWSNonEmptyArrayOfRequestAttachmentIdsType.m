#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfRequestAttachmentIdsType.h"
#import "../types/MPSEWSRequestAttachmentIdType.h"


@implementation MPSEWSNonEmptyArrayOfRequestAttachmentIdsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfRequestAttachmentIdsType class]];

    [handler property      : @"attachmentId"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"AttachmentId"
             withHandler   : [MPSEWSRequestAttachmentIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSNonEmptyArrayOfRequestAttachmentIdsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfRequestAttachmentIdsType: AttachmentId=%@", _attachmentId];
}

@end

