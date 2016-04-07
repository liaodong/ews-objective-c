#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetRoomListsType.h"


@implementation MPSEWSGetRoomListsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetRoomListsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGetRoomListsType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetRoomListsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetRoomListsType: super=%@", [super description]];
}

@end

