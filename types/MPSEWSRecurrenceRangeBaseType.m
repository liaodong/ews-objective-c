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

+ (BOOL) isValid:(MPSEWSRecurrenceRangeBaseType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val startDate] && ![MPSEWSDateTypeHandler isValid:[val startDate] forVersion:ver]) return FALSE;
    return TRUE;
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

