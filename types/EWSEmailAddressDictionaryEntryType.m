#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSEmailAddressDictionaryEntryType.h"
#import "../types/EWSEmailAddressKeyType.h"


@implementation EWSEmailAddressDictionaryEntryType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSEmailAddressDictionaryEntryType class] andContentHandlerClass:[EWSStringTypeHandler class]];

    [handler property    : @"key"
             isRequired  : TRUE
             withAttrTag : @"Key"
             withHandler : [EWSEmailAddressKeyType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSEmailAddressDictionaryEntryType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"EmailAddressDictionaryEntryType: Key=%@ super=%@", _key, [super description]];
}

@end

