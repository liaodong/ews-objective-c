#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSArrayOfRecipientsType.h"


@implementation EWSArrayOfRecipientsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfRecipientsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfRecipientsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfRecipientsType:"];
}

@end

