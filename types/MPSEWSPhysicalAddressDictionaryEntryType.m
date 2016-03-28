#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSPhysicalAddressDictionaryEntryType.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSPhysicalAddressKeyType.h"


@implementation MPSEWSPhysicalAddressDictionaryEntryType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSPhysicalAddressDictionaryEntryType class]];

    [handler property    : @"key"
             isRequired  : TRUE
             withAttrTag : @"Key"
             withHandler : [MPSEWSPhysicalAddressKeyType class]];

    [handler property      : @"street"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"Street"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"city"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"City"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"state"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"State"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"countryOrRegion"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"CountryOrRegion"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"postalCode"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"PostalCode"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSPhysicalAddressDictionaryEntryType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"PhysicalAddressDictionaryEntryType: Key=%@ Street=%@ City=%@ State=%@ CountryOrRegion=%@ PostalCode=%@", _key, _street, _city, _state, _countryOrRegion, _postalCode];
}

@end

