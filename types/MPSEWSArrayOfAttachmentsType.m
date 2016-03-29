#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfAttachmentsType.h"
#import "../types/MPSEWSFileAttachmentType.h"
#import "../types/MPSEWSItemAttachmentType.h"


@implementation MPSEWSArrayOfAttachmentsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfAttachmentsType class]];

    [handler listProperty  : @"itemAttachment"
             useSelector   : @"addItemAttachment"
             withNamespace : 't'
             withXmlTag    : @"ItemAttachment"
             withHandler   : [MPSEWSItemAttachmentType class]];

    [handler listProperty  : @"fileAttachment"
             useSelector   : @"addFileAttachment"
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

- (void) addItemAttachment:(MPSEWSItemAttachmentType*) elem
{
    if (![self itemAttachment]) {
        [self setItemAttachment:[[NSMutableArray<MPSEWSItemAttachmentType*> alloc] init]];
    }
    [_itemAttachment addObject:elem];
}

- (void) addFileAttachment:(MPSEWSFileAttachmentType*) elem
{
    if (![self fileAttachment]) {
        [self setFileAttachment:[[NSMutableArray<MPSEWSFileAttachmentType*> alloc] init]];
    }
    [_fileAttachment addObject:elem];
}

@end

