#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSEmailAddressDictionaryType.h"
#import "../types/EWSEmailAddressDictionaryEntryType.h"


@implementation EWSEmailAddressDictionaryType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSEmailAddressDictionaryType class]];

    [handler listProperty  : @"entry"
             isNonEmpty    : TRUE
             useSelector   : @"addEntry"
             withNamespace : 't'
             withXmlTag    : @"Entry"
             withHandler   : [EWSEmailAddressDictionaryEntryType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSEmailAddressDictionaryType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"EmailAddressDictionaryType: Entry=%@", _entry];
}

- (void) addEntry:(EWSEmailAddressDictionaryEntryType*) elem
{
    if (![self entry]) {
        [self setEntry:[[NSMutableArray<EWSEmailAddressDictionaryEntryType*> alloc] init]];
    }
    [_entry addObject:elem];
}

@end

