#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSMoveItemResponseType.h"


@implementation EWSMoveItemResponseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSMoveItemResponseType class]];

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
    return [EWSMoveItemResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"MoveItemResponseType: super=%@", [super description]];
}

@end

