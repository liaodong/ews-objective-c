#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSFindItemResponseType.h"
#import "../messages/EWSArrayOfResponseMessagesType.h"


@implementation EWSFindItemResponseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSFindItemResponseType class]];

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
    return [EWSFindItemResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FindItemResponseType: super=%@", [super description]];
}

@end

