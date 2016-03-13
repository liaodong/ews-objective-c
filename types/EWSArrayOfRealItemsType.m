#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSArrayOfRealItemsType.h"


@implementation EWSArrayOfRealItemsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfRealItemsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfRealItemsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfRealItemsType:"];
}

@end

