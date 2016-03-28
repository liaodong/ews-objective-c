#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSFindFolderResponseType.h"
#import "../messages/EWSArrayOfResponseMessagesType.h"


@implementation EWSFindFolderResponseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSFindFolderResponseType class]];

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
    return [EWSFindFolderResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FindFolderResponseType: super=%@", [super description]];
}

@end

