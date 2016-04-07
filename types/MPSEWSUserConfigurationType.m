#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSUserConfigurationType.h"
#import "../handlers/MPSEWSBase64BinaryTypeHandler.h"
#import "../types/MPSEWSItemIdType.h"
#import "../types/MPSEWSUserConfigurationDictionaryType.h"
#import "../types/MPSEWSUserConfigurationNameType.h"


@implementation MPSEWSUserConfigurationType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSUserConfigurationType class]];

    [handler property      : @"userConfigurationName"
             withNamespace : 't'
             withXmlTag    : @"UserConfigurationName"
             withHandler   : [MPSEWSUserConfigurationNameType class]];

    [handler property      : @"itemId"
             withNamespace : 't'
             withXmlTag    : @"ItemId"
             withHandler   : [MPSEWSItemIdType class]];

    [handler property      : @"dictionary"
             withNamespace : 't'
             withXmlTag    : @"Dictionary"
             withHandler   : [MPSEWSUserConfigurationDictionaryType class]];

    [handler property      : @"xmlData"
             withNamespace : 't'
             withXmlTag    : @"XmlData"
             withHandler   : [MPSEWSBase64BinaryTypeHandler class]];

    [handler property      : @"binaryData"
             withNamespace : 't'
             withXmlTag    : @"BinaryData"
             withHandler   : [MPSEWSBase64BinaryTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSUserConfigurationType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val userConfigurationName] && ![MPSEWSUserConfigurationNameType isValid:[val userConfigurationName] forVersion:ver]) return FALSE;
    if ([val itemId] && ![MPSEWSItemIdType isValid:[val itemId] forVersion:ver]) return FALSE;
    if ([val dictionary] && ![MPSEWSUserConfigurationDictionaryType isValid:[val dictionary] forVersion:ver]) return FALSE;
    if ([val xmlData] && ![MPSEWSBase64BinaryTypeHandler isValid:[val xmlData] forVersion:ver]) return FALSE;
    if ([val binaryData] && ![MPSEWSBase64BinaryTypeHandler isValid:[val binaryData] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSUserConfigurationType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UserConfigurationType: UserConfigurationName=%@ ItemId=%@ Dictionary=%@ XmlData=%@ BinaryData=%@", _userConfigurationName, _itemId, _dictionary, _xmlData, _binaryData];
}

@end

