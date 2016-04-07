#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSFolderResponseShapeType.h"
#import "../types/MPSEWSDefaultShapeNamesType.h"
#import "../types/MPSEWSNonEmptyArrayOfPathsToElementType.h"


@implementation MPSEWSFolderResponseShapeType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSFolderResponseShapeType class]];

    [handler property      : @"baseShape"
             withNamespace : 't'
             withXmlTag    : @"BaseShape"
             withHandler   : [MPSEWSDefaultShapeNamesType class]];

    [handler property      : @"additionalProperties"
             withNamespace : 't'
             withXmlTag    : @"AdditionalProperties"
             withHandler   : [MPSEWSNonEmptyArrayOfPathsToElementType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSFolderResponseShapeType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val baseShape] && ![MPSEWSDefaultShapeNamesType isValid:[val baseShape] forVersion:ver]) return FALSE;
    if ([val additionalProperties] && ![MPSEWSNonEmptyArrayOfPathsToElementType isValid:[val additionalProperties] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSFolderResponseShapeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FolderResponseShapeType: BaseShape=%@ AdditionalProperties=%@", _baseShape, _additionalProperties];
}

@end

