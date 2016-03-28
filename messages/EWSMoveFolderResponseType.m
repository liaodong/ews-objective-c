#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSMoveFolderResponseType.h"
#import "../messages/EWSArrayOfResponseMessagesType.h"


@implementation EWSMoveFolderResponseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSMoveFolderResponseType class]];

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
    return [EWSMoveFolderResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"MoveFolderResponseType: super=%@", [super description]];
}

@end

