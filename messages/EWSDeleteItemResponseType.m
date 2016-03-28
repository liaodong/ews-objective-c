#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSDeleteItemResponseType.h"
#import "../messages/EWSArrayOfResponseMessagesType.h"


@implementation EWSDeleteItemResponseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSDeleteItemResponseType class]];

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
    return [EWSDeleteItemResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DeleteItemResponseType: super=%@", [super description]];
}

@end

