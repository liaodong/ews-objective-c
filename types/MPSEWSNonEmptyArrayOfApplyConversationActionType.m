#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfApplyConversationActionType.h"
#import "../types/MPSEWSConversationActionType.h"


@implementation MPSEWSNonEmptyArrayOfApplyConversationActionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfApplyConversationActionType class]];

    [handler listProperty  : @"conversationAction"
             useSelector   : @"addConversationAction"
             withNamespace : 't'
             withXmlTag    : @"ConversationAction"
             withHandler   : [MPSEWSConversationActionType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfApplyConversationActionType*) val
{   (void) val;
    if ([val conversationAction]) {
        for (MPSEWSConversationActionType* obj in [val conversationAction]) {
            if (![MPSEWSConversationActionType isValid:obj]) return FALSE;
        }
    }
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSNonEmptyArrayOfApplyConversationActionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfApplyConversationActionType: ConversationAction=%@", _conversationAction];
}

- (void) addConversationAction:(MPSEWSConversationActionType*) elem
{
    if (![self conversationAction]) {
        [self setConversationAction:[[NSMutableArray<MPSEWSConversationActionType*> alloc] init]];
    }
    [_conversationAction addObject:elem];
}

@end

