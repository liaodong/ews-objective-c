#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSAttachmentResponseShapeType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../types/MPSEWSBodyTypeResponseType.h"
#import "../types/MPSEWSNonEmptyArrayOfPathsToElementType.h"


@implementation MPSEWSAttachmentResponseShapeType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSAttachmentResponseShapeType class]];

    [handler property      : @"includeMimeContent"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"IncludeMimeContent"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"bodyType"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"BodyType"
             withHandler   : [MPSEWSBodyTypeResponseType class]];

    [handler property      : @"additionalProperties"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"AdditionalProperties"
             withHandler   : [MPSEWSNonEmptyArrayOfPathsToElementType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSAttachmentResponseShapeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AttachmentResponseShapeType: IncludeMimeContent=%@ BodyType=%@ AdditionalProperties=%@", _includeMimeContent, _bodyType, _additionalProperties];
}

@end

