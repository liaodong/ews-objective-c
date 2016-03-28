#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSArrayOfAttachmentsType.h"
#import "../types/EWSFileAttachmentType.h"
#import "../types/EWSItemAttachmentType.h"


@implementation EWSArrayOfAttachmentsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfAttachmentsType class]];

    [handler property      : @"itemAttachment"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"ItemAttachment"
             withHandler   : [EWSItemAttachmentType class]];

    [handler property      : @"fileAttachment"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"FileAttachment"
             withHandler   : [EWSFileAttachmentType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfAttachmentsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfAttachmentsType: ItemAttachment=%@ FileAttachment=%@", _itemAttachment, _fileAttachment];
}

@end

