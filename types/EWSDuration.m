#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSDuration.h"


@implementation EWSDuration 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSDuration class]];

    [handler property   : @"startTime"
             isRequired : TRUE
             withXmlTag : @"StartTime"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"endTime"
             isRequired : TRUE
             withXmlTag : @"EndTime"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSDuration class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"Duration: StartTime=%@ EndTime=%@", _startTime, _endTime];
}

@end

