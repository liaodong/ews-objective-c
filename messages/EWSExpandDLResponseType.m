#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSExpandDLResponseType.h"
#import "../messages/EWSArrayOfResponseMessagesType.h"


@implementation EWSExpandDLResponseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSExpandDLResponseType class]];

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
    return [EWSExpandDLResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ExpandDLResponseType: super=%@", [super description]];
}

@end

