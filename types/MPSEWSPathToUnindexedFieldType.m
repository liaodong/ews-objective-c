#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSPathToUnindexedFieldType.h"
#import "../types/MPSEWSUnindexedFieldURIType.h"


@implementation MPSEWSPathToUnindexedFieldType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSPathToUnindexedFieldType class]];

    [handler property    : @"fieldURI"
             withAttrTag : @"FieldURI"
             withHandler : [MPSEWSUnindexedFieldURIType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSPathToUnindexedFieldType*) val
{   (void) val;
    if (![MPSEWSBasePathToElementType isValid:val]) return FALSE;
    if ([val fieldURI] && ![MPSEWSUnindexedFieldURIType isValid:[val fieldURI]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSPathToUnindexedFieldType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"PathToUnindexedFieldType: FieldURI=%@ super=%@", _fieldURI, [super description]];
}

@end

