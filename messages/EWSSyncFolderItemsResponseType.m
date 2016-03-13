#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSyncFolderItemsResponseType.h"


@implementation EWSSyncFolderItemsResponseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSyncFolderItemsResponseType class]];

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
    return [EWSSyncFolderItemsResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SyncFolderItemsResponseType: super=%@", [super description]];
}

@end

