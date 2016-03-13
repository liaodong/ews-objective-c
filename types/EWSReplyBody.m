#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSReplyBody.h"


@implementation EWSReplyBody 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSReplyBody class]];

    [handler property      : @"message"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Message"
             withHandler   : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSReplyBody class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ReplyBody: Message=%@", _message];
}

@end

