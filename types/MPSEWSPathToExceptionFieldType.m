#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSPathToExceptionFieldType.h"
#import "../types/MPSEWSExceptionPropertyURIType.h"


@implementation MPSEWSPathToExceptionFieldType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSPathToExceptionFieldType class]];

    [handler property    : @"fieldURI"
             withAttrTag : @"FieldURI"
             withHandler : [MPSEWSExceptionPropertyURIType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSPathToExceptionFieldType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"PathToExceptionFieldType: FieldURI=%@ super=%@", _fieldURI, [super description]];
}

@end

