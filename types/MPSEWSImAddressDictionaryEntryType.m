#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSImAddressDictionaryEntryType.h"
#import "../types/MPSEWSImAddressKeyType.h"


@implementation MPSEWSImAddressDictionaryEntryType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSImAddressDictionaryEntryType class] andContentHandlerClass:[MPSEWSStringTypeHandler class]];

    [handler property    : @"key"
             withAttrTag : @"Key"
             withHandler : [MPSEWSImAddressKeyType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSImAddressDictionaryEntryType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSImAddressDictionaryEntryType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ImAddressDictionaryEntryType: Key=%@ super=%@", _key, [super description]];
}

@end

