#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSPathToIndexedFieldType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSDictionaryURIType.h"


@implementation MPSEWSPathToIndexedFieldType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSPathToIndexedFieldType class]];

    [handler property    : @"fieldURI"
             withAttrTag : @"FieldURI"
             withHandler : [MPSEWSDictionaryURIType class]];

    [handler property    : @"fieldIndex"
             withAttrTag : @"FieldIndex"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSPathToIndexedFieldType*) val
{   (void) val;
    if (![MPSEWSBasePathToElementType isValid:val]) return FALSE;
    if ([val fieldURI] && ![MPSEWSDictionaryURIType isValid:[val fieldURI]]) return FALSE;
    if ([val fieldIndex] && ![MPSEWSStringTypeHandler isValid:[val fieldIndex]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSPathToIndexedFieldType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"PathToIndexedFieldType: FieldURI=%@ FieldIndex=%@ super=%@", _fieldURI, _fieldIndex, [super description]];
}

@end

