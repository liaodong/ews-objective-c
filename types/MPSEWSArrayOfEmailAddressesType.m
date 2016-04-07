#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfEmailAddressesType.h"
#import "../types/MPSEWSEmailAddressType.h"


@implementation MPSEWSArrayOfEmailAddressesType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfEmailAddressesType class]];

    [handler listProperty  : @"address"
             useSelector   : @"addAddress"
             withNamespace : 't'
             withXmlTag    : @"Address"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfEmailAddressesType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val address]) {
        for (MPSEWSEmailAddressType* obj in [val address]) {
            if (![MPSEWSEmailAddressType isValid:obj forVersion:ver]) return FALSE;
        }
    }
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSArrayOfEmailAddressesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfEmailAddressesType: Address=%@", _address];
}

- (void) addAddress:(MPSEWSEmailAddressType*) elem
{
    if (![self address]) {
        [self setAddress:[[NSMutableArray<MPSEWSEmailAddressType*> alloc] init]];
    }
    [_address addObject:elem];
}

@end

