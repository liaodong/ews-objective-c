#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSUserConfigurationDictionaryObjectType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSUserConfigurationDictionaryObjectTypesType.h"


@implementation MPSEWSUserConfigurationDictionaryObjectType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSUserConfigurationDictionaryObjectType class]];

    [handler property      : @"type"
             withNamespace : 't'
             withXmlTag    : @"Type"
             withHandler   : [MPSEWSUserConfigurationDictionaryObjectTypesType class]];

    [handler listProperty  : @"value"
             useSelector   : @"addValue"
             withNamespace : 't'
             withXmlTag    : @"Value"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSUserConfigurationDictionaryObjectType*) val
{   (void) val;
    if ([val type] && ![MPSEWSUserConfigurationDictionaryObjectTypesType isValid:[val type]]) return FALSE;
    if ([val value]) {
        for (NSString* obj in [val value]) {
            if (![MPSEWSStringTypeHandler isValid:obj]) return FALSE;
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
    return [MPSEWSUserConfigurationDictionaryObjectType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UserConfigurationDictionaryObjectType: Type=%@ Value=%@", _type, _value];
}

- (void) addValue:(NSString*) elem
{
    if (![self value]) {
        [self setValue:[[NSMutableArray<NSString*> alloc] init]];
    }
    [_value addObject:elem];
}

@end

