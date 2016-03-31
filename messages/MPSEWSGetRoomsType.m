#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSGetRoomsType.h"
#import "../types/MPSEWSEmailAddressType.h"


@implementation MPSEWSGetRoomsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSGetRoomsType class]];

    [handler property      : @"roomList"
             withNamespace : 'm'
             withXmlTag    : @"RoomList"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSGetRoomsType*) val
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val]) return FALSE;
    if ([val roomList] && ![MPSEWSEmailAddressType isValid:[val roomList]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSGetRoomsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetRoomsType: RoomList=%@ super=%@", _roomList, [super description]];
}

@end

