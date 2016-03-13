#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSItemResponseShapeType.h"


@implementation EWSItemResponseShapeType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSItemResponseShapeType class]];

    [handler property   : @"baseShape"
             isRequired : TRUE
             withXmlTag : @"BaseShape"
             withHandler: [EWSDefaultShapeNamesType class]];

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
    return [EWSItemResponseShapeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ItemResponseShapeType: BaseShape=%@ IncludeMimeContent=%@ BodyType=%@ AdditionalProperties=%@", _baseShape, _includeMimeContent, _bodyType, _additionalProperties];
}

@end

