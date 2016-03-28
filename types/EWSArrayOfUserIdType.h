#import <Foundation/Foundation.h>



@class EWSUserIdType;



/* ArrayOfUserIdType */
@interface EWSArrayOfUserIdType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<EWSUserIdType*>* userId;


- (void) addUserId:(EWSUserIdType*) elem;
@end

