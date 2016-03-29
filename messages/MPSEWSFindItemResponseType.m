#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSFindItemResponseType.h"
#import "../messages/MPSEWSArrayOfResponseMessagesType.h"


@implementation MPSEWSFindItemResponseType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSFindItemResponseType class]];

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
    return [MPSEWSFindItemResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FindItemResponseType: super=%@", [super description]];
}

@end

