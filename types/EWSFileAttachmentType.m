#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSFileAttachmentType.h"
#import "../handlers/EWSBase64BinaryTypeHandler.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSAttachmentIdType.h"


@implementation EWSFileAttachmentType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSFileAttachmentType class]];

    [handler property      : @"attachmentId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"AttachmentId"
             withHandler   : [EWSAttachmentIdType class]];

    [handler property      : @"name"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Name"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"contentType"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ContentType"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"contentId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ContentId"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"contentLocation"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"ContentLocation"
             withHandler   : [EWSStringTypeHandler class]];

    [handler property      : @"content"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Content"
             withHandler   : [EWSBase64BinaryTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSFileAttachmentType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FileAttachmentType: Content=%@ super=%@", _content, [super description]];
}

@end

