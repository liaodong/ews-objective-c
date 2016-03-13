#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSCreateFolderResponseType.h"


@implementation EWSCreateFolderResponseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSCreateFolderResponseType class]];

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
    return [EWSCreateFolderResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CreateFolderResponseType: super=%@", [super description]];
}

@end

