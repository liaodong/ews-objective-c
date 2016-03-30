#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfRequestAttachmentIdsType.h"
#import "../types/MPSEWSRequestAttachmentIdType.h"


@implementation MPSEWSNonEmptyArrayOfRequestAttachmentIdsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfRequestAttachmentIdsType class]];

    [handler listProperty  : @"attachmentId"
             useSelector   : @"addAttachmentId"
             withNamespace : 't'
             withXmlTag    : @"AttachmentId"
             withHandler   : [MPSEWSRequestAttachmentIdType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfRequestAttachmentIdsType*) val
{   (void) val;
    if ([val attachmentId]) {
        for (MPSEWSRequestAttachmentIdType* obj in [val attachmentId]) {
            if (![MPSEWSRequestAttachmentIdType isValid:obj]) return FALSE;
        }
    }
    return TRUE;
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

- (void) addAttachmentId:(MPSEWSRequestAttachmentIdType*) elem
{
    if (![self attachmentId]) {
        [self setAttachmentId:[[NSMutableArray<MPSEWSRequestAttachmentIdType*> alloc] init]];
    }
    [_attachmentId addObject:elem];
}

@end

