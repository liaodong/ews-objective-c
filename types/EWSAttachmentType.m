#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSAttachmentType.h"


@implementation EWSAttachmentType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSAttachmentType class]];

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

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSAttachmentType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AttachmentType: AttachmentId=%@ Name=%@ ContentType=%@ ContentId=%@ ContentLocation=%@", _attachmentId, _name, _contentType, _contentId, _contentLocation];
}

@end

