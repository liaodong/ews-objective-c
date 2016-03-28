#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfRealItemsType.h"


@implementation MPSEWSArrayOfRealItemsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfRealItemsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSArrayOfRealItemsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfRealItemsType:"];
}

@end

