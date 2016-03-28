#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSEmailAddressDictionaryEntryType.h"
#import "../types/MPSEWSEmailAddressKeyType.h"


@implementation MPSEWSEmailAddressDictionaryEntryType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSEmailAddressDictionaryEntryType class] andContentHandlerClass:[MPSEWSStringTypeHandler class]];

    [handler property    : @"key"
             isRequired  : TRUE
             withAttrTag : @"Key"
             withHandler : [MPSEWSEmailAddressKeyType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSEmailAddressDictionaryEntryType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"EmailAddressDictionaryEntryType: Key=%@ super=%@", _key, [super description]];
}

@end

