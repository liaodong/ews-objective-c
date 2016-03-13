#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSArrayOfCalendarPermissionsType.h"


@implementation EWSArrayOfCalendarPermissionsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfCalendarPermissionsType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfCalendarPermissionsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfCalendarPermissionsType:"];
}

@end

