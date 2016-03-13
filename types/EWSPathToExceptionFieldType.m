#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSPathToExceptionFieldType.h"


@implementation EWSPathToExceptionFieldType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSPathToExceptionFieldType class]];

    [handler property    : @"fieldURI"
             isRequired  : TRUE
             withAttrTag : @"FieldURI"
             withHandler : [EWSExceptionPropertyURIType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSPathToExceptionFieldType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"PathToExceptionFieldType: FieldURI=%@ super=%@", _fieldURI, [super description]];
}

@end

