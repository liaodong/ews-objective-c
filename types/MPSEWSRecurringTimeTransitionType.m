#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSRecurringTimeTransitionType.h"
#import "../handlers/MPSEWSDurationTypeHandler.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../types/MPSEWSTransitionTargetType.h"


@implementation MPSEWSRecurringTimeTransitionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSRecurringTimeTransitionType class]];

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

    [handler register];
}

+ (BOOL) isValid:(MPSEWSRecurringTimeTransitionType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSTransitionType isValid:val forVersion:ver]) return FALSE;
    if ([val timeOffset] && ![MPSEWSDurationTypeHandler isValid:[val timeOffset] forVersion:ver]) return FALSE;
    if ([val month] && ![MPSEWSIntegerTypeHandler isValid:[val month] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSRecurringTimeTransitionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RecurringTimeTransitionType: TimeOffset=%@ Month=%@ super=%@", _timeOffset, _month, [super description]];
}

@end

