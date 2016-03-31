#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"






/* GetRoomListsType */
@interface MPSEWSGetRoomListsType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetRoomListsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

