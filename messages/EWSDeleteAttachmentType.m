#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSDeleteAttachmentType.h"


@implementation EWSDeleteAttachmentType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSDeleteAttachmentType class]];

    [handler property      : @"attachmentIds"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"AttachmentIds"
             withHandler   : [EWSNonEmptyArrayOfRequestAttachmentIdsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSDeleteAttachmentType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DeleteAttachmentType: AttachmentIds=%@ super=%@", _attachmentIds, [super description]];
}

@end

