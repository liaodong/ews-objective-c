#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSCopyItemResponseType.h"
#import "../messages/EWSArrayOfResponseMessagesType.h"


@implementation EWSCopyItemResponseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSCopyItemResponseType class]];

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
    return [EWSCopyItemResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CopyItemResponseType: super=%@", [super description]];
}

@end

