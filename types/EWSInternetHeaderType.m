#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSInternetHeaderType.h"


@implementation EWSInternetHeaderType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSInternetHeaderType class] andContentHandlerClass:[EWSStringTypeHandler class]];

    [handler property    : @"headerName"
             isRequired  : TRUE
             withAttrTag : @"HeaderName"
             withHandler : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSInternetHeaderType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"InternetHeaderType: HeaderName=%@ super=%@", _headerName, [super description]];
}

@end

