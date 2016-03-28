#import <Foundation/Foundation.h>



@class MPSEWSUserIdType;



/* ArrayOfUserIdType */
@interface MPSEWSArrayOfUserIdType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSUserIdType*>* userId;


- (void) addUserId:(MPSEWSUserIdType*) elem;
@end

