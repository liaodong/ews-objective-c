#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSPhoneNumberDictionaryType.h"
#import "../types/EWSPhoneNumberDictionaryEntryType.h"


@implementation EWSPhoneNumberDictionaryType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSPhoneNumberDictionaryType class]];

    [handler listProperty  : @"entry"
             isNonEmpty    : TRUE
             useSelector   : @"addEntry"
             withNamespace : 't'
             withXmlTag    : @"Entry"
             withHandler   : [EWSPhoneNumberDictionaryEntryType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSPhoneNumberDictionaryType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"PhoneNumberDictionaryType: Entry=%@", _entry];
}

- (void) addEntry:(EWSPhoneNumberDictionaryEntryType*) elem
{
    if (![self entry]) {
        [self setEntry:[[NSMutableArray<EWSPhoneNumberDictionaryEntryType*> alloc] init]];
    }
    [_entry addObject:elem];
}

@end

