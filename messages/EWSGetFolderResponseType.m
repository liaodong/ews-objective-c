#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSGetFolderResponseType.h"
#import "../messages/EWSArrayOfResponseMessagesType.h"


@implementation EWSGetFolderResponseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSGetFolderResponseType class]];

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
    return [EWSGetFolderResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"GetFolderResponseType: super=%@", [super description]];
}

@end

