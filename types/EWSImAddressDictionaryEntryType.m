#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSImAddressDictionaryEntryType.h"


@implementation EWSImAddressDictionaryEntryType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSImAddressDictionaryEntryType class] andContentHandlerClass:[EWSStringTypeHandler class]];

    [handler property    : @"key"
             isRequired  : TRUE
             withAttrTag : @"Key"
             withHandler : [EWSImAddressKeyType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSImAddressDictionaryEntryType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ImAddressDictionaryEntryType: Key=%@ super=%@", _key, [super description]];
}

@end

