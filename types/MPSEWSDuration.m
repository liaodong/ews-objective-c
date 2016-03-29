#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSDuration.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"


@implementation MPSEWSDuration 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSDuration class]];

    [handler property      : @"startTime"
             withNamespace : 't'
             withXmlTag    : @"StartTime"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"endTime"
             withNamespace : 't'
             withXmlTag    : @"EndTime"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSDuration class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"Duration: StartTime=%@ EndTime=%@", _startTime, _endTime];
}

@end

