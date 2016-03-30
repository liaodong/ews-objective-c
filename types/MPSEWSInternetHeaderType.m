#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSInternetHeaderType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSInternetHeaderType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSInternetHeaderType class] andContentHandlerClass:[MPSEWSStringTypeHandler class]];

    [handler property    : @"headerName"
             withAttrTag : @"HeaderName"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSInternetHeaderType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSInternetHeaderType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"InternetHeaderType: HeaderName=%@ super=%@", _headerName, [super description]];
}

@end

