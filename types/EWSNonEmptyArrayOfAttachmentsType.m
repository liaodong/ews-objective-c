#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSNonEmptyArrayOfAttachmentsType.h"


@implementation EWSNonEmptyArrayOfAttachmentsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSNonEmptyArrayOfAttachmentsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSNonEmptyArrayOfAttachmentsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfAttachmentsType:"];
}

@end

