#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSDeleteFolderResponseType.h"
#import "../messages/EWSArrayOfResponseMessagesType.h"


@implementation EWSDeleteFolderResponseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSDeleteFolderResponseType class]];

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
    return [EWSDeleteFolderResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"DeleteFolderResponseType: super=%@", [super description]];
}

@end

