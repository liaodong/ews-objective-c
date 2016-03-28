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
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"AttachmentId"
             withHandler   : [MPSEWSAttachmentIdType class]];

    [handler property      : @"name"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Name"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"contentType"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ContentType"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"contentId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ContentId"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"contentLocation"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ContentLocation"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"content"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Content"
             withHandler   : [MPSEWSBase64BinaryTypeHandler class]];

    [handler register];
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

