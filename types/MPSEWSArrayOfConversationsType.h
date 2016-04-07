#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSConversationType;



/* ArrayOfConversationsType */
@interface MPSEWSArrayOfConversationsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfConversationsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSConversationType*>* conversation;


- (void) addConversation:(MPSEWSConversationType*) elem;
@end

