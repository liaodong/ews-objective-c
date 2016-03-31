#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfRoomsType.h"
#import "../types/MPSEWSRoomType.h"


@implementation MPSEWSArrayOfRoomsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfRoomsType class]];

    [handler listProperty  : @"room"
             useSelector   : @"addRoom"
             withNamespace : 't'
             withXmlTag    : @"Room"
             withHandler   : [MPSEWSRoomType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfRoomsType*) val
{   (void) val;
    if ([val room]) {
        for (MPSEWSRoomType* obj in [val room]) {
            if (![MPSEWSRoomType isValid:obj]) return FALSE;
        }
    }
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSArrayOfRoomsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfRoomsType: Room=%@", _room];
}

- (void) addRoom:(MPSEWSRoomType*) elem
{
    if (![self room]) {
        [self setRoom:[[NSMutableArray<MPSEWSRoomType*> alloc] init]];
    }
    [_room addObject:elem];
}

@end

