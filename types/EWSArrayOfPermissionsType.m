#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSArrayOfPermissionsType.h"


@implementation EWSArrayOfPermissionsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfPermissionsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfPermissionsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfPermissionsType:"];
}

@end

