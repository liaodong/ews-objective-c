#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfAttachmentsType.h"
#import "../types/MPSEWSFileAttachmentType.h"
#import "../types/MPSEWSItemAttachmentType.h"


@implementation MPSEWSArrayOfAttachmentsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfAttachmentsType class]];

    [handler property      : @"itemAttachment"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"ItemAttachment"
             withHandler   : [MPSEWSItemAttachmentType class]];

    [handler property      : @"fileAttachment"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"FileAttachment"
             withHandler   : [MPSEWSFileAttachmentType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSArrayOfAttachmentsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfAttachmentsType: ItemAttachment=%@ FileAttachment=%@", _itemAttachment, _fileAttachment];
}

@end

