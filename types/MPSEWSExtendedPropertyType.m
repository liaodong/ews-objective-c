#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSExtendedPropertyType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSNonEmptyArrayOfPropertyValuesType.h"
#import "../types/MPSEWSPathToExtendedFieldType.h"


@implementation MPSEWSExtendedPropertyType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSExtendedPropertyType class]];

    [handler property      : @"extendedFieldURI"
             withNamespace : 't'
             withXmlTag    : @"ExtendedFieldURI"
             withHandler   : [MPSEWSPathToExtendedFieldType class]];

    [handler property      : @"value"
             withNamespace : 't'
             withXmlTag    : @"Value"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"values"
             withNamespace : 't'
             withXmlTag    : @"Values"
             withHandler   : [MPSEWSNonEmptyArrayOfPropertyValuesType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSExtendedPropertyType*) val
{   (void) val;
    if ([val extendedFieldURI] && ![MPSEWSPathToExtendedFieldType isValid:[val extendedFieldURI]]) return FALSE;
    if ([val value] && ![MPSEWSStringTypeHandler isValid:[val value]]) return FALSE;
    if ([val values] && ![MPSEWSNonEmptyArrayOfPropertyValuesType isValid:[val values]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSExtendedPropertyType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ExtendedPropertyType: ExtendedFieldURI=%@ Value=%@ Values=%@", _extendedFieldURI, _value, _values];
}

@end

