#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSApplyConversationActionType.h"
#import "../types/MPSEWSNonEmptyArrayOfApplyConversationActionType.h"


@implementation MPSEWSApplyConversationActionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSApplyConversationActionType class]];

    [handler property      : @"conversationActions"
             withNamespace : 'm'
             withXmlTag    : @"ConversationActions"
             withHandler   : [MPSEWSNonEmptyArrayOfApplyConversationActionType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSApplyConversationActionType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBaseRequestType isValid:val forVersion:ver]) return FALSE;
    if ([val conversationActions] && ![MPSEWSNonEmptyArrayOfApplyConversationActionType isValid:[val conversationActions] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSApplyConversationActionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ApplyConversationActionType: ConversationActions=%@ super=%@", _conversationActions, [super description]];
}

@end

