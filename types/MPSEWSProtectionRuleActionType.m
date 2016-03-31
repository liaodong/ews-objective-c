#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSProtectionRuleActionType.h"
#import "../types/MPSEWSProtectionRuleActionKindType.h"
#import "../types/MPSEWSProtectionRuleArgumentType.h"


@implementation MPSEWSProtectionRuleActionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSProtectionRuleActionType class]];

    [handler property    : @"name"
             withAttrTag : @"Name"
             withHandler : [MPSEWSProtectionRuleActionKindType class]];

    [handler listProperty  : @"argument"
             useSelector   : @"addArgument"
             withNamespace : 't'
             withXmlTag    : @"Argument"
             withHandler   : [MPSEWSProtectionRuleArgumentType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSProtectionRuleActionType*) val
{   (void) val;
    if ([val name] && ![MPSEWSProtectionRuleActionKindType isValid:[val name]]) return FALSE;
    if ([val argument]) {
        for (MPSEWSProtectionRuleArgumentType* obj in [val argument]) {
            if (![MPSEWSProtectionRuleArgumentType isValid:obj]) return FALSE;
        }
    }
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSProtectionRuleActionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ProtectionRuleActionType: Name=%@ Argument=%@", _name, _argument];
}

- (void) addArgument:(MPSEWSProtectionRuleArgumentType*) elem
{
    if (![self argument]) {
        [self setArgument:[[NSMutableArray<MPSEWSProtectionRuleArgumentType*> alloc] init]];
    }
    [_argument addObject:elem];
}

@end

