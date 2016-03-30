#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSFileAttachmentType.h"
#import "../handlers/MPSEWSBase64BinaryTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSAttachmentIdType.h"


@implementation MPSEWSFileAttachmentType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSFileAttachmentType class]];

    [handler property      : @"attachmentId"
             withNamespace : 't'
             withXmlTag    : @"AttachmentId"
             withHandler   : [MPSEWSAttachmentIdType class]];

    [handler property      : @"name"
             withNamespace : 't'
             withXmlTag    : @"Name"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"contentType"
             withNamespace : 't'
             withXmlTag    : @"ContentType"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"contentId"
             withNamespace : 't'
             withXmlTag    : @"ContentId"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"contentLocation"
             withNamespace : 't'
             withXmlTag    : @"ContentLocation"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"content"
             withNamespace : 't'
             withXmlTag    : @"Content"
             withHandler   : [MPSEWSBase64BinaryTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSFileAttachmentType*) val
{   (void) val;
    if (![MPSEWSAttachmentType isValid:val]) return FALSE;
    if ([val content] && ![MPSEWSBase64BinaryTypeHandler isValid:[val content]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSFileAttachmentType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FileAttachmentType: Content=%@ super=%@", _content, [super description]];
}

@end

