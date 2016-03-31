#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSNonEmptyArrayOfApplyConversationActionType;



/* ApplyConversationActionType */
@interface MPSEWSApplyConversationActionType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSApplyConversationActionType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSNonEmptyArrayOfApplyConversationActionType* conversationActions;


@end

