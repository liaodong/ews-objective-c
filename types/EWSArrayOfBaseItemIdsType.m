#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSArrayOfBaseItemIdsType.h"


@implementation EWSArrayOfBaseItemIdsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfBaseItemIdsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfBaseItemIdsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfBaseItemIdsType:"];
}

@end

