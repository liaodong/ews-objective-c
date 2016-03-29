#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSDeleteAttachmentType.h"
#import "../types/MPSEWSNonEmptyArrayOfRequestAttachmentIdsType.h"


@implementation MPSEWSDeleteAttachmentType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSDeleteAttachmentType class]];

    [handler property      : @"attachmentIds"
             withNamespace : 'm'
             withXmlTag    : @"AttachmentIds"
             withHandler   : [MPSEWSNonEmptyArrayOfRequestAttachmentIdsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSDeleteAttachmentType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DeleteAttachmentType: AttachmentIds=%@ super=%@", _attachmentIds, [super description]];
}

@end

