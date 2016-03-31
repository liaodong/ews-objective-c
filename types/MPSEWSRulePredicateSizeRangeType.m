#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSRulePredicateSizeRangeType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"


@implementation MPSEWSRulePredicateSizeRangeType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSRulePredicateSizeRangeType class]];

    [handler property      : @"minimumSize"
             withNamespace : 't'
             withXmlTag    : @"MinimumSize"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"maximumSize"
             withNamespace : 't'
             withXmlTag    : @"MaximumSize"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSRulePredicateSizeRangeType*) val
{   (void) val;
    if ([val minimumSize] && ![MPSEWSIntegerTypeHandler isValid:[val minimumSize]]) return FALSE;
    if ([val maximumSize] && ![MPSEWSIntegerTypeHandler isValid:[val maximumSize]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSRulePredicateSizeRangeType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"RulePredicateSizeRangeType: MinimumSize=%@ MaximumSize=%@", _minimumSize, _maximumSize];
}

@end

