#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSArrayOfAttachmentsType.h"


@implementation EWSArrayOfAttachmentsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfAttachmentsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfAttachmentsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfAttachmentsType:"];
}

@end

