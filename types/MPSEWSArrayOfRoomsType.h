#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSRoomType;



/* ArrayOfRoomsType */
@interface MPSEWSArrayOfRoomsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfRoomsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSRoomType*>* room;


- (void) addRoom:(MPSEWSRoomType*) elem;
@end

