#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSConversationActionType;



/* NonEmptyArrayOfApplyConversationActionType */
@interface MPSEWSNonEmptyArrayOfApplyConversationActionType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfApplyConversationActionType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSConversationActionType*>* conversationAction;


- (void) addConversationAction:(MPSEWSConversationActionType*) elem;
@end

