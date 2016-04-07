#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSFieldOrderType.h"
#import "../types/MPSEWSBasePathToElementType.h"
#import "../types/MPSEWSSortDirectionType.h"


@implementation MPSEWSFieldOrderType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSFieldOrderType class]];

    [handler property    : @"order"
             withAttrTag : @"Order"
             withHandler : [MPSEWSSortDirectionType class]];

    [handler property      : @"path"
             withNamespace : 't'
             withXmlTag    : @"Path"
             withHandler   : [MPSEWSBasePathToElementType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSFieldOrderType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val order] && ![MPSEWSSortDirectionType isValid:[val order] forVersion: ver]) return FALSE;
    if ([val path] && ![MPSEWSBasePathToElementType isValid:[val path] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSFieldOrderType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FieldOrderType: Order=%@ Path=%@", _order, _path];
}

@end

