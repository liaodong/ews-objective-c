#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSProtectionRuleSenderDepartmentsType.h"
#import "../types/MPSEWSProtectionRuleValueType.h"


@implementation MPSEWSProtectionRuleSenderDepartmentsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSProtectionRuleSenderDepartmentsType class]];

    [handler listProperty  : @"value"
             useSelector   : @"addValue"
             withNamespace : 't'
             withXmlTag    : @"Value"
             withHandler   : [MPSEWSProtectionRuleValueType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSProtectionRuleSenderDepartmentsType*) val
{   (void) val;
    if ([val value]) {
        for (NSString* obj in [val value]) {
            if (![MPSEWSProtectionRuleValueType isValid:obj]) return FALSE;
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
    return [MPSEWSProtectionRuleSenderDepartmentsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ProtectionRuleSenderDepartmentsType: Value=%@", _value];
}

- (void) addValue:(NSString*) elem
{
    if (![self value]) {
        [self setValue:[[NSMutableArray<NSString*> alloc] init]];
    }
    [_value addObject:elem];
}

@end

