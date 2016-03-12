#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSWorkingHours.h"


@implementation EWSWorkingHours 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSWorkingHours class]];

    [handler property   : @"timeZone"
             isRequired : TRUE
             withXmlTag : @"TimeZone"
             withHandler: [EWSSerializableTimeZone class]];

    [handler property   : @"workingPeriodArray"
             isRequired : TRUE
             withXmlTag : @"WorkingPeriodArray"
             withHandler: [EWSArrayOfWorkingPeriod class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSWorkingHours class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"WorkingHours: TimeZone=%@ WorkingPeriodArray=%@", _timeZone, _workingPeriodArray];
}

@end

