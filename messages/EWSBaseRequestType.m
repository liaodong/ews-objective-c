#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSBaseRequestType.h"


@implementation EWSBaseRequestType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSBaseRequestType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSBaseRequestType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"BaseRequestType:"];
}

@end

