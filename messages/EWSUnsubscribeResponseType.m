#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSUnsubscribeResponseType.h"
#import "../messages/EWSArrayOfResponseMessagesType.h"


@implementation EWSUnsubscribeResponseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSUnsubscribeResponseType class]];

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
    return [EWSUnsubscribeResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UnsubscribeResponseType: super=%@", [super description]];
}

@end

