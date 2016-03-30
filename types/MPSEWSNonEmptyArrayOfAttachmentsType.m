#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfAttachmentsType.h"
#import "../types/MPSEWSFileAttachmentType.h"
#import "../types/MPSEWSItemAttachmentType.h"


@implementation MPSEWSNonEmptyArrayOfAttachmentsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfAttachmentsType class]];

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

+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfAttachmentsType*) val
{   (void) val;
    return TRUE;
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

