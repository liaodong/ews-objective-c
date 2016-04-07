#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSTrackingPropertyType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"


@implementation MPSEWSTrackingPropertyType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSTrackingPropertyType class]];

    [handler property      : @"name"
             withNamespace : 't'
             withXmlTag    : @"Name"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"value"
             withNamespace : 't'
             withXmlTag    : @"Value"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSTrackingPropertyType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val name] && ![MPSEWSStringTypeHandler isValid:[val name] forVersion:ver]) return FALSE;
    if ([val value] && ![MPSEWSStringTypeHandler isValid:[val value] forVersion:ver]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSTrackingPropertyType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"TrackingPropertyType: Name=%@ Value=%@", _name, _value];
}

@end

