#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSFindItemParentType.h"


@implementation EWSFindItemParentType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSFindItemParentType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSFindItemParentType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FindItemParentType:"];
}

@end

