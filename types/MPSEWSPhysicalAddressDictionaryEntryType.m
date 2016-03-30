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
             withAttrTag : @"Key"
             withHandler : [MPSEWSPhysicalAddressKeyType class]];

    [handler property      : @"street"
             withNamespace : 't'
             withXmlTag    : @"Street"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"city"
             withNamespace : 't'
             withXmlTag    : @"City"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"state"
             withNamespace : 't'
             withXmlTag    : @"State"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"countryOrRegion"
             withNamespace : 't'
             withXmlTag    : @"CountryOrRegion"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler property      : @"postalCode"
             withNamespace : 't'
             withXmlTag    : @"PostalCode"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSPhysicalAddressDictionaryEntryType*) val
{   (void) val;
    return TRUE;
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

