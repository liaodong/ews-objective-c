#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSEmailAddressDictionaryType.h"
#import "../types/MPSEWSEmailAddressDictionaryEntryType.h"


@implementation MPSEWSEmailAddressDictionaryType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSEmailAddressDictionaryType class]];

    [handler listProperty  : @"entry"
             isNonEmpty    : TRUE
             useSelector   : @"addEntry"
             withNamespace : 't'
             withXmlTag    : @"Entry"
             withHandler   : [MPSEWSEmailAddressDictionaryEntryType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSEmailAddressDictionaryType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"EmailAddressDictionaryType: Entry=%@", _entry];
}

- (void) addEntry:(MPSEWSEmailAddressDictionaryEntryType*) elem
{
    if (![self entry]) {
        [self setEntry:[[NSMutableArray<MPSEWSEmailAddressDictionaryEntryType*> alloc] init]];
    }
    [_entry addObject:elem];
}

@end

