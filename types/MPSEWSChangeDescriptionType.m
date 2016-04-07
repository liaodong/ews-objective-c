#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSChangeDescriptionType.h"
#import "../types/MPSEWSBasePathToElementType.h"


@implementation MPSEWSChangeDescriptionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSChangeDescriptionType class]];

    [handler property      : @"path"
             withNamespace : 't'
             withXmlTag    : @"Path"
             withHandler   : [MPSEWSBasePathToElementType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSChangeDescriptionType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val path] && ![MPSEWSBasePathToElementType isValid:[val path] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSChangeDescriptionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ChangeDescriptionType: Path=%@", _path];
}

@end

