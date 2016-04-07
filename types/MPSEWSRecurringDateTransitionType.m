#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSRecurringDateTransitionType.h"
#import "../handlers/MPSEWSDurationTypeHandler.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../types/MPSEWSTransitionTargetType.h"


@implementation MPSEWSRecurringDateTransitionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSRecurringDateTransitionType class]];

    [handler property      : @"to"
             withNamespace : 't'
             withXmlTag    : @"To"
             withHandler   : [MPSEWSTransitionTargetType class]];

    [handler property      : @"timeOffset"
             withNamespace : 't'
             withXmlTag    : @"TimeOffset"
             withHandler   : [MPSEWSDurationTypeHandler class]];

    [handler property      : @"month"
             withNamespace : 't'
             withXmlTag    : @"Month"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"day"
             withNamespace : 't'
             withXmlTag    : @"Day"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSRecurringDateTransitionType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSRecurringTimeTransitionType isValid:val forVersion:ver]) return FALSE;
    if ([val day ] && ![MPSEWSIntegerTypeHandler isValid:[val day ] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSRecurringDateTransitionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RecurringDateTransitionType: Day=%@ super=%@", _day, [super description]];
}

@end

