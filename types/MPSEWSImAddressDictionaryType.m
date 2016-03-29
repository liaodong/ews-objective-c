#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSImAddressDictionaryType.h"
#import "../types/MPSEWSImAddressDictionaryEntryType.h"


@implementation MPSEWSImAddressDictionaryType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSImAddressDictionaryType class]];

    [handler listProperty  : @"entry"
             useSelector   : @"addEntry"
             withNamespace : 't'
             withXmlTag    : @"Entry"
             withHandler   : [MPSEWSImAddressDictionaryEntryType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSImAddressDictionaryType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ImAddressDictionaryType: Entry=%@", _entry];
}

- (void) addEntry:(MPSEWSImAddressDictionaryEntryType*) elem
{
    if (![self entry]) {
        [self setEntry:[[NSMutableArray<MPSEWSImAddressDictionaryEntryType*> alloc] init]];
    }
    [_entry addObject:elem];
}

@end

