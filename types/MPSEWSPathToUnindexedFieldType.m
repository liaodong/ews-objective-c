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

+ (BOOL) isValid:(MPSEWSPathToUnindexedFieldType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBasePathToElementType isValid:val forVersion:ver]) return FALSE;
    if ([val fieldURI] && ![MPSEWSUnindexedFieldURIType isValid:[val fieldURI] forVersion: ver]) return FALSE;
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

