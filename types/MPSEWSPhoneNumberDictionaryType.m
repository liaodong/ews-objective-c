#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSPhoneNumberDictionaryType.h"
#import "../types/MPSEWSPhoneNumberDictionaryEntryType.h"


@implementation MPSEWSPhoneNumberDictionaryType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSPhoneNumberDictionaryType class]];

    [handler listProperty  : @"entry"
             useSelector   : @"addEntry"
             withNamespace : 't'
             withXmlTag    : @"Entry"
             withHandler   : [MPSEWSPhoneNumberDictionaryEntryType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSPhoneNumberDictionaryType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"PhoneNumberDictionaryType: Entry=%@", _entry];
}

- (void) addEntry:(MPSEWSPhoneNumberDictionaryEntryType*) elem
{
    if (![self entry]) {
        [self setEntry:[[NSMutableArray<MPSEWSPhoneNumberDictionaryEntryType*> alloc] init]];
    }
    [_entry addObject:elem];
}

@end

