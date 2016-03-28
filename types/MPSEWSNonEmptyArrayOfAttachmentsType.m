#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfAttachmentsType.h"
#import "../types/MPSEWSFileAttachmentType.h"
#import "../types/MPSEWSItemAttachmentType.h"


@implementation MPSEWSNonEmptyArrayOfAttachmentsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfAttachmentsType class]];

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
    return [MPSEWSNonEmptyArrayOfAttachmentsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfAttachmentsType: ItemAttachment=%@ FileAttachment=%@", _itemAttachment, _fileAttachment];
}

@end

