#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSPathToExtendedFieldType.h"
#import "../handlers/EWSIntegerTypeHandler.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSDistinguishedPropertySetType.h"
#import "../types/EWSGuidType.h"
#import "../types/EWSMapiPropertyTypeType.h"
#import "../types/EWSPropertyTagType.h"


@implementation EWSPathToExtendedFieldType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSPathToExtendedFieldType class]];

    [handler property    : @"distinguishedPropertySetId"
             isRequired  : FALSE
             withAttrTag : @"DistinguishedPropertySetId"
             withHandler : [EWSDistinguishedPropertySetType class]];

    [handler property    : @"propertySetId"
             isRequired  : FALSE
             withAttrTag : @"PropertySetId"
             withHandler : [EWSGuidType class]];

    [handler property    : @"propertyTag"
             isRequired  : FALSE
             withAttrTag : @"PropertyTag"
             withHandler : [EWSPropertyTagType class]];

    [handler property    : @"propertyName"
             isRequired  : FALSE
             withAttrTag : @"PropertyName"
             withHandler : [EWSStringTypeHandler class]];

    [handler property    : @"propertyId"
             isRequired  : FALSE
             withAttrTag : @"PropertyId"
             withHandler : [EWSIntegerTypeHandler class]];

    [handler property    : @"propertyType"
             isRequired  : TRUE
             withAttrTag : @"PropertyType"
             withHandler : [EWSMapiPropertyTypeType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSPathToExtendedFieldType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"PathToExtendedFieldType: DistinguishedPropertySetId=%@ PropertySetId=%@ PropertyTag=%@ PropertyName=%@ PropertyId=%@ PropertyType=%@ super=%@", _distinguishedPropertySetId, _propertySetId, _propertyTag, _propertyName, _propertyId, _propertyType, [super description]];
}

@end

