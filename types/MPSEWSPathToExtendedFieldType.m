#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSPathToExtendedFieldType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSDistinguishedPropertySetType.h"
#import "../types/MPSEWSGuidType.h"
#import "../types/MPSEWSMapiPropertyTypeType.h"
#import "../types/MPSEWSPropertyTagType.h"


@implementation MPSEWSPathToExtendedFieldType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSPathToExtendedFieldType class]];

    [handler property    : @"distinguishedPropertySetId"
             withAttrTag : @"DistinguishedPropertySetId"
             withHandler : [MPSEWSDistinguishedPropertySetType class]];

    [handler property    : @"propertySetId"
             withAttrTag : @"PropertySetId"
             withHandler : [MPSEWSGuidType class]];

    [handler property    : @"propertyTag"
             withAttrTag : @"PropertyTag"
             withHandler : [MPSEWSPropertyTagType class]];

    [handler property    : @"propertyName"
             withAttrTag : @"PropertyName"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler property    : @"propertyId"
             withAttrTag : @"PropertyId"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property    : @"propertyType"
             withAttrTag : @"PropertyType"
             withHandler : [MPSEWSMapiPropertyTypeType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSPathToExtendedFieldType*) val
{   (void) val;
    if (![MPSEWSBasePathToElementType isValid:val]) return FALSE;
    if ([val distinguishedPropertySetId] && ![MPSEWSDistinguishedPropertySetType isValid:[val distinguishedPropertySetId]]) return FALSE;
    if ([val propertySetId] && ![MPSEWSGuidType isValid:[val propertySetId]]) return FALSE;
    if ([val propertyTag] && ![MPSEWSPropertyTagType isValid:[val propertyTag]]) return FALSE;
    if ([val propertyName] && ![MPSEWSStringTypeHandler isValid:[val propertyName]]) return FALSE;
    if ([val propertyId] && ![MPSEWSIntegerTypeHandler isValid:[val propertyId]]) return FALSE;
    if ([val propertyType] && ![MPSEWSMapiPropertyTypeType isValid:[val propertyType]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSPathToExtendedFieldType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"PathToExtendedFieldType: DistinguishedPropertySetId=%@ PropertySetId=%@ PropertyTag=%@ PropertyName=%@ PropertyId=%@ PropertyType=%@ super=%@", _distinguishedPropertySetId, _propertySetId, _propertyTag, _propertyName, _propertyId, _propertyType, [super description]];
}

@end

