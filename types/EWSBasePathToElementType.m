#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSBasePathToElementType.h"


@implementation EWSBasePathToElementType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSBasePathToElementType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSBasePathToElementType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BasePathToElementType:"];
}

@end

