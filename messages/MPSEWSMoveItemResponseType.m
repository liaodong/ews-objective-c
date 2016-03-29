#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSMoveItemResponseType.h"
#import "../messages/MPSEWSArrayOfResponseMessagesType.h"


@implementation MPSEWSMoveItemResponseType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSMoveItemResponseType class]];

    [handler property      : @"responseMessages"
             withNamespace : 'm'
             withXmlTag    : @"ResponseMessages"
             withHandler   : [MPSEWSArrayOfResponseMessagesType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSMoveItemResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"MoveItemResponseType: super=%@", [super description]];
}

@end

