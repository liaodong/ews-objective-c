#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSNonEmptyArrayOfPathsToElementType.h"


@implementation EWSNonEmptyArrayOfPathsToElementType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSNonEmptyArrayOfPathsToElementType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSNonEmptyArrayOfPathsToElementType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfPathsToElementType:"];
}

@end

