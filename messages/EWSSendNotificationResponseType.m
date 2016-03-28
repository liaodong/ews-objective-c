#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSendNotificationResponseType.h"
#import "../messages/EWSArrayOfResponseMessagesType.h"


@implementation EWSSendNotificationResponseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSendNotificationResponseType class]];

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
    return [EWSSendNotificationResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SendNotificationResponseType: super=%@", [super description]];
}

@end

