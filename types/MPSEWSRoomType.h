#import <Foundation/Foundation.h>
#import "MPSEWSDirectoryEntryType.h"






/* RoomType */
@interface MPSEWSRoomType : MPSEWSDirectoryEntryType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRoomType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

