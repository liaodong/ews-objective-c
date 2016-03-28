#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSImAddressDictionaryType.h"
#import "../types/EWSImAddressDictionaryEntryType.h"


@implementation EWSImAddressDictionaryType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSImAddressDictionaryType class]];

    [handler listProperty  : @"entry"
             isNonEmpty    : TRUE
             useSelector   : @"addEntry"
             withNamespace : 't'
             withXmlTag    : @"Entry"
             withHandler   : [EWSImAddressDictionaryEntryType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSImAddressDictionaryType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ImAddressDictionaryType: Entry=%@", _entry];
}

- (void) addEntry:(EWSImAddressDictionaryEntryType*) elem
{
    if (![self entry]) {
        [self setEntry:[[NSMutableArray<EWSImAddressDictionaryEntryType*> alloc] init]];
    }
    [_entry addObject:elem];
}

@end

