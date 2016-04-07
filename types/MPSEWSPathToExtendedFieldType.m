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

+ (BOOL) isValid:(MPSEWSPathToExtendedFieldType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if (![MPSEWSBasePathToElementType isValid:val forVersion:ver]) return FALSE;
    if ([val distinguishedPropertySetId] && ![MPSEWSDistinguishedPropertySetType isValid:[val distinguishedPropertySetId] forVersion: ver]) return FALSE;
    if ([val propertySetId] && ![MPSEWSGuidType isValid:[val propertySetId] forVersion: ver]) return FALSE;
    if ([val propertyTag] && ![MPSEWSPropertyTagType isValid:[val propertyTag] forVersion: ver]) return FALSE;
    if ([val propertyName] && ![MPSEWSStringTypeHandler isValid:[val propertyName] forVersion: ver]) return FALSE;
    if ([val propertyId] && ![MPSEWSIntegerTypeHandler isValid:[val propertyId] forVersion: ver]) return FALSE;
    if ([val propertyType] && ![MPSEWSMapiPropertyTypeType isValid:[val propertyType] forVersion: ver]) return FALSE;
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

