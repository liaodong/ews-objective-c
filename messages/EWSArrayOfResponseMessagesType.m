#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSArrayOfResponseMessagesType.h"


@implementation EWSArrayOfResponseMessagesType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfResponseMessagesType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfResponseMessagesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfResponseMessagesType:"];
}

@end

