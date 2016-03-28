#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSCreateManagedFolderResponseType.h"
#import "../messages/EWSArrayOfResponseMessagesType.h"


@implementation EWSCreateManagedFolderResponseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSCreateManagedFolderResponseType class]];

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
    return [EWSCreateManagedFolderResponseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"CreateManagedFolderResponseType: super=%@", [super description]];
}

@end

