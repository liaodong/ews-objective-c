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
             isRequired  : FALSE
             withAttrTag : @"DistinguishedPropertySetId"
             withHandler : [MPSEWSDistinguishedPropertySetType class]];

    [handler property    : @"propertySetId"
             isRequired  : FALSE
             withAttrTag : @"PropertySetId"
             withHandler : [MPSEWSGuidType class]];

    [handler property    : @"propertyTag"
             isRequired  : FALSE
             withAttrTag : @"PropertyTag"
             withHandler : [MPSEWSPropertyTagType class]];

    [handler property    : @"propertyName"
             isRequired  : FALSE
             withAttrTag : @"PropertyName"
             withHandler : [MPSEWSStringTypeHandler class]];

    [handler property    : @"propertyId"
             isRequired  : FALSE
             withAttrTag : @"PropertyId"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property    : @"propertyType"
             isRequired  : TRUE
             withAttrTag : @"PropertyType"
             withHandler : [MPSEWSMapiPropertyTypeType class]];

    [handler register];
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

