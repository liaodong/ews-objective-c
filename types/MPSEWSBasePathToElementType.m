#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSBasePathToElementType.h"


@implementation MPSEWSBasePathToElementType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSBasePathToElementType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSBasePathToElementType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BasePathToElementType:"];
}

@end

