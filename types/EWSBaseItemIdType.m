#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSBaseItemIdType.h"


@implementation EWSBaseItemIdType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSBaseItemIdType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSBaseItemIdType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BaseItemIdType:"];
}

@end

