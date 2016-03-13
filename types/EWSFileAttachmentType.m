#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSFileAttachmentType.h"


@implementation EWSFileAttachmentType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSFileAttachmentType class]];

    [handler property   : @"attachmentId"
             isRequired : FALSE
             withXmlTag : @"AttachmentId"
             withHandler: [EWSAttachmentIdType class]];

    [handler property   : @"name"
             isRequired : FALSE
             withXmlTag : @"Name"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"contentType"
             isRequired : FALSE
             withXmlTag : @"ContentType"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"contentId"
             isRequired : FALSE
             withXmlTag : @"ContentId"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"contentLocation"
             isRequired : FALSE
             withXmlTag : @"ContentLocation"
             withHandler: [EWSStringTypeHandler class]];

    [handler property   : @"content"
             isRequired : FALSE
             withXmlTag : @"Content"
             withHandler: [EWSBase64BinaryTypeHandler class]];

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

