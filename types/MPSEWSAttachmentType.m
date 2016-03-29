#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSAttachmentType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSAttachmentIdType.h"


@implementation MPSEWSAttachmentType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSAttachmentType class]];

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

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSAttachmentType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AttachmentType: AttachmentId=%@ Name=%@ ContentType=%@ ContentId=%@ ContentLocation=%@", _attachmentId, _name, _contentType, _contentId, _contentLocation];
}

@end

