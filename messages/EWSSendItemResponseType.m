#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSendItemResponseType.h"
#import "../messages/EWSArrayOfResponseMessagesType.h"


@implementation EWSSendItemResponseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSendItemResponseType class]];

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
    return [EWSSendItemResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SendItemResponseType: super=%@", [super description]];
}

@end

