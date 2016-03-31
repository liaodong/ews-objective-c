#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSItemResponseShapeType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../types/MPSEWSBodyTypeResponseType.h"
#import "../types/MPSEWSDefaultShapeNamesType.h"
#import "../types/MPSEWSNonEmptyArrayOfPathsToElementType.h"


@implementation MPSEWSItemResponseShapeType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSItemResponseShapeType class]];

    [handler property      : @"baseShape"
             withNamespace : 't'
             withXmlTag    : @"BaseShape"
             withHandler   : [MPSEWSDefaultShapeNamesType class]];

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

    [handler property      : @"convertHtmlCodePageToUTF8"
             withNamespace : 't'
             withXmlTag    : @"ConvertHtmlCodePageToUTF8"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"additionalProperties"
             withNamespace : 't'
             withXmlTag    : @"AdditionalProperties"
             withHandler   : [MPSEWSNonEmptyArrayOfPathsToElementType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSItemResponseShapeType*) val
{   (void) val;
    if ([val baseShape] && ![MPSEWSDefaultShapeNamesType isValid:[val baseShape]]) return FALSE;
    if ([val includeMimeContent] && ![MPSEWSBooleanTypeHandler isValid:[val includeMimeContent]]) return FALSE;
    if ([val bodyType] && ![MPSEWSBodyTypeResponseType isValid:[val bodyType]]) return FALSE;
    if ([val filterHtmlContent] && ![MPSEWSBooleanTypeHandler isValid:[val filterHtmlContent]]) return FALSE;
    if ([val convertHtmlCodePageToUTF8] && ![MPSEWSBooleanTypeHandler isValid:[val convertHtmlCodePageToUTF8]]) return FALSE;
    if ([val additionalProperties] && ![MPSEWSNonEmptyArrayOfPathsToElementType isValid:[val additionalProperties]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSItemResponseShapeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ItemResponseShapeType: BaseShape=%@ IncludeMimeContent=%@ BodyType=%@ FilterHtmlContent=%@ ConvertHtmlCodePageToUTF8=%@ AdditionalProperties=%@", _baseShape, _includeMimeContent, _bodyType, _filterHtmlContent, _convertHtmlCodePageToUTF8, _additionalProperties];
}

@end

