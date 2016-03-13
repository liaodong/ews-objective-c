#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSTimeZoneContextType.h"


@implementation EWSTimeZoneContextType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSTimeZoneContextType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSTimeZoneContextType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"TimeZoneContextType:"];
}

@end

