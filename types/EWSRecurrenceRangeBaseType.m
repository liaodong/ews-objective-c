#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSRecurrenceRangeBaseType.h"


@implementation EWSRecurrenceRangeBaseType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSRecurrenceRangeBaseType class]];

    [handler property      : @"startDate"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"StartDate"
             withHandler   : [EWSDateTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSRecurrenceRangeBaseType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RecurrenceRangeBaseType: StartDate=%@", _startDate];
}

@end

