#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSFolderChangeType.h"
#import "../types/EWSNonEmptyArrayOfFolderChangeDescriptionsType.h"


@implementation EWSFolderChangeType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSFolderChangeType class]];

    [handler property      : @"updates"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"Updates"
             withHandler   : [EWSNonEmptyArrayOfFolderChangeDescriptionsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSFolderChangeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FolderChangeType: Updates=%@", _updates];
}

@end

