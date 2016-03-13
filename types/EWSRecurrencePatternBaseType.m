#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSRecurrencePatternBaseType.h"


@implementation EWSRecurrencePatternBaseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSRecurrencePatternBaseType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSRecurrencePatternBaseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RecurrencePatternBaseType:"];
}

@end

