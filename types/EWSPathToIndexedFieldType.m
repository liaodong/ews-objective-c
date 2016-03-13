#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSPathToIndexedFieldType.h"


@implementation EWSPathToIndexedFieldType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSPathToIndexedFieldType class]];

    [handler property    : @"fieldURI"
             isRequired  : TRUE
             withAttrTag : @"FieldURI"
             withHandler : [EWSDictionaryURIType class]];

    [handler property    : @"fieldIndex"
             isRequired  : TRUE
             withAttrTag : @"FieldIndex"
             withHandler : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSPathToIndexedFieldType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"PathToIndexedFieldType: FieldURI=%@ FieldIndex=%@ super=%@", _fieldURI, _fieldIndex, [super description]];
}

@end

