#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSPathToUnindexedFieldType.h"


@implementation EWSPathToUnindexedFieldType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSPathToUnindexedFieldType class]];

    [handler property    : @"fieldURI"
             isRequired  : TRUE
             withAttrTag : @"FieldURI"
             withHandler : [EWSUnindexedFieldURIType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSPathToUnindexedFieldType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"PathToUnindexedFieldType: FieldURI=%@ super=%@", _fieldURI, [super description]];
}

@end

