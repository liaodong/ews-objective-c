#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSRecurrenceRangeBaseType.h"
#import "../handlers/MPSEWSDateTypeHandler.h"


@implementation MPSEWSRecurrenceRangeBaseType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSRecurrenceRangeBaseType class]];

    [handler property      : @"startDate"
             withNamespace : 't'
             withXmlTag    : @"StartDate"
             withHandler   : [MPSEWSDateTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSRecurrenceRangeBaseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RecurrenceRangeBaseType: StartDate=%@", _startDate];
}

@end

