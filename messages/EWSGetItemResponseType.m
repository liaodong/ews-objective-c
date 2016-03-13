#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSGetItemResponseType.h"


@implementation EWSGetItemResponseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSGetItemResponseType class]];

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
    return [EWSGetItemResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetItemResponseType: super=%@", [super description]];
}

@end

