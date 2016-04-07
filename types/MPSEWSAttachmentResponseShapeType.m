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
             withNamespace : 't'
             withXmlTag    : @"IncludeMimeContent"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"bodyType"
             withNamespace : 't'
             withXmlTag    : @"BodyType"
             withHandler   : [MPSEWSBodyTypeResponseType class]];

    [handler property      : @"filterHtmlContent"
             withNamespace : 't'
             withXmlTag    : @"FilterHtmlContent"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"additionalProperties"
             withNamespace : 't'
             withXmlTag    : @"AdditionalProperties"
             withHandler   : [MPSEWSNonEmptyArrayOfPathsToElementType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSAttachmentResponseShapeType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val includeMimeContent] && ![MPSEWSBooleanTypeHandler isValid:[val includeMimeContent] forVersion:ver]) return FALSE;
    if ([val bodyType] && ![MPSEWSBodyTypeResponseType isValid:[val bodyType] forVersion:ver]) return FALSE;
    if ([val filterHtmlContent] && ![MPSEWSBooleanTypeHandler isValid:[val filterHtmlContent] forVersion:ver]) return FALSE;
    if ([val additionalProperties] && ![MPSEWSNonEmptyArrayOfPathsToElementType isValid:[val additionalProperties] forVersion:ver]) return FALSE;
    return TRUE;
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
    return [NSString stringWithFormat:@"AttachmentResponseShapeType: IncludeMimeContent=%@ BodyType=%@ FilterHtmlContent=%@ AdditionalProperties=%@", _includeMimeContent, _bodyType, _filterHtmlContent, _additionalProperties];
}

@end

