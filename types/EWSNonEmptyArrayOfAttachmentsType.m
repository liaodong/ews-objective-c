#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSNonEmptyArrayOfAttachmentsType.h"
#import "../types/EWSFileAttachmentType.h"
#import "../types/EWSItemAttachmentType.h"


@implementation EWSNonEmptyArrayOfAttachmentsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSNonEmptyArrayOfAttachmentsType class]];

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
    return [EWSNonEmptyArrayOfAttachmentsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfAttachmentsType: ItemAttachment=%@ FileAttachment=%@", _itemAttachment, _fileAttachment];
}

@end

