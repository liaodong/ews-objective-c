#import <Foundation/Foundation.h>



@class MPSEWSUserIdType;



/* ArrayOfUserIdType */
@interface MPSEWSArrayOfUserIdType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfUserIdType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSUserIdType*>* userId;


- (void) addUserId:(MPSEWSUserIdType*) elem;
@end

