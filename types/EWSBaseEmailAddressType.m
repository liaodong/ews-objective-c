#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSBaseEmailAddressType.h"


@implementation EWSBaseEmailAddressType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSBaseEmailAddressType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSBaseEmailAddressType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BaseEmailAddressType:"];
}

@end

