#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSFindFolderParentType.h"


@implementation EWSFindFolderParentType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSFindFolderParentType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSFindFolderParentType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FindFolderParentType:"];
}

@end

