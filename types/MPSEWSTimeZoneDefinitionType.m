#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSTimeZoneDefinitionType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSArrayOfTransitionsGroupsType.h"
#import "../types/MPSEWSArrayOfTransitionsType.h"
#import "../types/MPSEWSNonEmptyArrayOfPeriodsType.h"


@implementation MPSEWSTimeZoneDefinitionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSTimeZoneDefinitionType class]];

    [handler property    : @"id"
             withAttrTag : @"Id"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler property    : @"name"
             withAttrTag : @"Name"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler property      : @"periods"
             withNamespace : 't'
             withXmlTag    : @"Periods"
             withHandler   : [MPSEWSNonEmptyArrayOfPeriodsType class]];

    [handler property      : @"transitionsGroups"
             withNamespace : 't'
             withXmlTag    : @"TransitionsGroups"
             withHandler   : [MPSEWSArrayOfTransitionsGroupsType class]];

    [handler property      : @"transitions"
             withNamespace : 't'
             withXmlTag    : @"Transitions"
             withHandler   : [MPSEWSArrayOfTransitionsType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSTimeZoneDefinitionType*) val
{   (void) val;
    if ([val id  ] && ![MPSEWSStringTypeHandler isValid:[val id  ]]) return FALSE;
    if ([val name] && ![MPSEWSStringTypeHandler isValid:[val name]]) return FALSE;
    if ([val periods] && ![MPSEWSNonEmptyArrayOfPeriodsType isValid:[val periods]]) return FALSE;
    if ([val transitionsGroups] && ![MPSEWSArrayOfTransitionsGroupsType isValid:[val transitionsGroups]]) return FALSE;
    if ([val transitions] && ![MPSEWSArrayOfTransitionsType isValid:[val transitions]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSTimeZoneDefinitionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"TimeZoneDefinitionType: Id=%@ Name=%@ Periods=%@ TransitionsGroups=%@ Transitions=%@", _id, _name, _periods, _transitionsGroups, _transitions];
}

@end

