#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSUserConfigurationDictionaryEntryType.h"
#import "../types/MPSEWSUserConfigurationDictionaryObjectType.h"


@implementation MPSEWSUserConfigurationDictionaryEntryType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSUserConfigurationDictionaryEntryType class]];

    [handler property      : @"dictionaryKey"
             withNamespace : 't'
             withXmlTag    : @"DictionaryKey"
             withHandler   : [MPSEWSUserConfigurationDictionaryObjectType class]];

    [handler property      : @"dictionaryValue"
             withNamespace : 't'
             withXmlTag    : @"DictionaryValue"
             withHandler   : [MPSEWSUserConfigurationDictionaryObjectType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSUserConfigurationDictionaryEntryType*) val
{   (void) val;
    if ([val dictionaryKey] && ![MPSEWSUserConfigurationDictionaryObjectType isValid:[val dictionaryKey]]) return FALSE;
    if ([val dictionaryValue] && ![MPSEWSUserConfigurationDictionaryObjectType isValid:[val dictionaryValue]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSUserConfigurationDictionaryEntryType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UserConfigurationDictionaryEntryType: DictionaryKey=%@ DictionaryValue=%@", _dictionaryKey, _dictionaryValue];
}

@end

