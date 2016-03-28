#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSBaseResponseMessageType.h"
#import "../messages/EWSArrayOfResponseMessagesType.h"


@implementation EWSBaseResponseMessageType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSBaseResponseMessageType class]];

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
    return [EWSBaseResponseMessageType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BaseResponseMessageType: ResponseMessages=%@", _responseMessages];
}

@end

