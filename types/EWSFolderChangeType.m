#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSFolderChangeType.h"


@implementation EWSFolderChangeType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSFolderChangeType class]];

    [handler property   : @"updates"
             isRequired : TRUE
             withXmlTag : @"Updates"
             withHandler: [EWSNonEmptyArrayOfFolderChangeDescriptionsType class]];

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

