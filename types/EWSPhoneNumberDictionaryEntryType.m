#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSPhoneNumberDictionaryEntryType.h"


@implementation EWSPhoneNumberDictionaryEntryType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSPhoneNumberDictionaryEntryType class] andContentHandlerClass:[EWSStringTypeHandler class]];

    [handler property    : @"key"
             isRequired  : TRUE
             withAttrTag : @"Key"
             withHandler : [EWSPhoneNumberKeyType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSPhoneNumberDictionaryEntryType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"PhoneNumberDictionaryEntryType: Key=%@ super=%@", _key, [super description]];
}

@end

