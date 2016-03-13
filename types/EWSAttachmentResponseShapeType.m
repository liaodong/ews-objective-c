#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSAttachmentResponseShapeType.h"


@implementation EWSAttachmentResponseShapeType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSAttachmentResponseShapeType class]];

    [handler property   : @"includeMimeContent"
             isRequired : FALSE
             withXmlTag : @"IncludeMimeContent"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"bodyType"
             isRequired : FALSE
             withXmlTag : @"BodyType"
             withHandler: [EWSBodyTypeResponseType class]];

    [handler property   : @"additionalProperties"
             isRequired : FALSE
             withXmlTag : @"AdditionalProperties"
             withHandler: [EWSNonEmptyArrayOfPathsToElementType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSAttachmentResponseShapeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"AttachmentResponseShapeType: IncludeMimeContent=%@ BodyType=%@ AdditionalProperties=%@", _includeMimeContent, _bodyType, _additionalProperties];
}

@end

