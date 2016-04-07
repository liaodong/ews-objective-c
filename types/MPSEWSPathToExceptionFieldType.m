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

+ (BOOL) isValid:(MPSEWSPathToExceptionFieldType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBasePathToElementType isValid:val forVersion:ver]) return FALSE;
    if ([val fieldURI] && ![MPSEWSExceptionPropertyURIType isValid:[val fieldURI] forVersion: ver]) return FALSE;
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

