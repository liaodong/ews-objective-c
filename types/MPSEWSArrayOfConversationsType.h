#import <Foundation/Foundation.h>



@class MPSEWSConversationType;



/* ArrayOfConversationsType */
@interface MPSEWSArrayOfConversationsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfConversationsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSConversationType*>* conversation;


- (void) addConversation:(MPSEWSConversationType*) elem;
@end

