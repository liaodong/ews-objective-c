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
             isRequired  : TRUE
             withAttrTag : @"FieldURI"
             withHandler : [MPSEWSDictionaryURIType class]];

    [handler property    : @"fieldIndex"
             isRequired  : TRUE
             withAttrTag : @"FieldIndex"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler register];
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

