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
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"BaseShape"
             withHandler   : [MPSEWSDefaultShapeNamesType class]];

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
    return [MPSEWSItemResponseShapeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ItemResponseShapeType: BaseShape=%@ IncludeMimeContent=%@ BodyType=%@ AdditionalProperties=%@", _baseShape, _includeMimeContent, _bodyType, _additionalProperties];
}

@end

