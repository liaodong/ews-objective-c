#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSArrayOfWorkingPeriod.h"
#import "../types/EWSWorkingPeriod.h"


@implementation EWSArrayOfWorkingPeriod 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfWorkingPeriod class]];

    [handler listProperty  : @"workingPeriod"
             isNonEmpty    : FALSE
             useSelector   : @"addWorkingPeriod"
             withNamespace : 't'
             withXmlTag    : @"WorkingPeriod"
             withHandler   : [EWSWorkingPeriod class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfWorkingPeriod class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfWorkingPeriod: WorkingPeriod=%@", _workingPeriod];
}

- (void) addWorkingPeriod:(EWSWorkingPeriod*) elem
{
    if (![self workingPeriod]) {
        [self setWorkingPeriod:[[NSMutableArray<EWSWorkingPeriod*> alloc] init]];
    }
    [_workingPeriod addObject:elem];
}

@end

