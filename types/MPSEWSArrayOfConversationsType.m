#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfConversationsType.h"
#import "../types/MPSEWSConversationType.h"


@implementation MPSEWSArrayOfConversationsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfConversationsType class]];

    [handler listProperty  : @"conversation"
             useSelector   : @"addConversation"
             withNamespace : 't'
             withXmlTag    : @"Conversation"
             withHandler   : [MPSEWSConversationType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfConversationsType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val conversation]) {
        for (MPSEWSConversationType* obj in [val conversation]) {
            if (![MPSEWSConversationType isValid:obj forVersion:ver]) return FALSE;
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
    return [MPSEWSArrayOfConversationsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfConversationsType: Conversation=%@", _conversation];
}

- (void) addConversation:(MPSEWSConversationType*) elem
{
    if (![self conversation]) {
        [self setConversation:[[NSMutableArray<MPSEWSConversationType*> alloc] init]];
    }
    [_conversation addObject:elem];
}

@end

