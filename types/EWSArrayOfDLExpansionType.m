#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSArrayOfDLExpansionType.h"


@implementation EWSArrayOfDLExpansionType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfDLExpansionType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfDLExpansionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfDLExpansionType:"];
}

@end

