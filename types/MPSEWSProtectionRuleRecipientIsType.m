#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSProtectionRuleRecipientIsType.h"
#import "../types/MPSEWSProtectionRuleValueType.h"


@implementation MPSEWSProtectionRuleRecipientIsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSProtectionRuleRecipientIsType class]];

    [handler listProperty  : @"value"
             useSelector   : @"addValue"
             withNamespace : 't'
             withXmlTag    : @"Value"
             withHandler   : [MPSEWSProtectionRuleValueType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSProtectionRuleRecipientIsType*) val
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
    return [MPSEWSProtectionRuleRecipientIsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ProtectionRuleRecipientIsType: Value=%@", _value];
}

- (void) addValue:(NSString*) elem
{
    if (![self value]) {
        [self setValue:[[NSMutableArray<NSString*> alloc] init]];
    }
    [_value addObject:elem];
}

@end

