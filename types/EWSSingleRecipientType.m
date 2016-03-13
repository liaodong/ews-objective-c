#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSingleRecipientType.h"


@implementation EWSSingleRecipientType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSingleRecipientType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSingleRecipientType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SingleRecipientType:"];
}

@end

