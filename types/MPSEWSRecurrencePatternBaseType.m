#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSRecurrencePatternBaseType.h"


@implementation MPSEWSRecurrencePatternBaseType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSRecurrencePatternBaseType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSRecurrencePatternBaseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RecurrencePatternBaseType:"];
}

@end
