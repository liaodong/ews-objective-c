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

+ (BOOL) isValid:(MPSEWSPathToExceptionFieldType*) val
{   (void) val;
    if (![MPSEWSBasePathToElementType isValid:val]) return FALSE;
    if ([val fieldURI] && ![MPSEWSExceptionPropertyURIType isValid:[val fieldURI]]) return FALSE;
    return TRUE;
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

