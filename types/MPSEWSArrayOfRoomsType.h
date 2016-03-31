#import <Foundation/Foundation.h>



@class MPSEWSRoomType;



/* ArrayOfRoomsType */
@interface MPSEWSArrayOfRoomsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfRoomsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSRoomType*>* room;


- (void) addRoom:(MPSEWSRoomType*) elem;
@end

