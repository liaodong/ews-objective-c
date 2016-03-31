#import <Foundation/Foundation.h>



@class MPSEWSConversationActionType;



/* NonEmptyArrayOfApplyConversationActionType */
@interface MPSEWSNonEmptyArrayOfApplyConversationActionType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfApplyConversationActionType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSConversationActionType*>* conversationAction;


- (void) addConversationAction:(MPSEWSConversationActionType*) elem;
@end

