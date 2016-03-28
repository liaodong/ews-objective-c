#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSReplyBody.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSReplyBody 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSReplyBody class]];

    [handler property      : @"message"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Message"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSReplyBody class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ReplyBody: Message=%@", _message];
}

@end

