#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSRulePredicateDateRangeType.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"


@implementation MPSEWSRulePredicateDateRangeType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSRulePredicateDateRangeType class]];

    [handler property      : @"startDateTime"
             withNamespace : 't'
             withXmlTag    : @"StartDateTime"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"endDateTime"
             withNamespace : 't'
             withXmlTag    : @"EndDateTime"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSRulePredicateDateRangeType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val startDateTime] && ![MPSEWSDateTimeTypeHandler isValid:[val startDateTime] forVersion:ver]) return FALSE;
    if ([val endDateTime] && ![MPSEWSDateTimeTypeHandler isValid:[val endDateTime] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSRulePredicateDateRangeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RulePredicateDateRangeType: StartDateTime=%@ EndDateTime=%@", _startDateTime, _endDateTime];
}

@end

