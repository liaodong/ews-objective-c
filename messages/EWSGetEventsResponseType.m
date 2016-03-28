#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSGetEventsResponseType.h"
#import "../messages/EWSArrayOfResponseMessagesType.h"


@implementation EWSGetEventsResponseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSGetEventsResponseType class]];

    [handler property      : @"responseMessages"
             isRequired    : TRUE
             withNamespace : 'm'
             withXmlTag    : @"ResponseMessages"
             withHandler   : [EWSArrayOfResponseMessagesType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSGetEventsResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetEventsResponseType: super=%@", [super description]];
}

@end

