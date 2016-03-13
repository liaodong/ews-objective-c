#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSNonEmptyArrayOfItemChangeDescriptionsType.h"


@implementation EWSNonEmptyArrayOfItemChangeDescriptionsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSNonEmptyArrayOfItemChangeDescriptionsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSNonEmptyArrayOfItemChangeDescriptionsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfItemChangeDescriptionsType:"];
}

@end

