#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSPhysicalAddressDictionaryType.h"
#import "../types/EWSPhysicalAddressDictionaryEntryType.h"


@implementation EWSPhysicalAddressDictionaryType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSPhysicalAddressDictionaryType class]];

    [handler listProperty  : @"entry"
             isNonEmpty    : TRUE
             useSelector   : @"addEntry"
             withNamespace : 't'
             withXmlTag    : @"Entry"
             withHandler   : [EWSPhysicalAddressDictionaryEntryType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSPhysicalAddressDictionaryType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"PhysicalAddressDictionaryType: Entry=%@", _entry];
}

- (void) addEntry:(EWSPhysicalAddressDictionaryEntryType*) elem
{
    if (![self entry]) {
        [self setEntry:[[NSMutableArray<EWSPhysicalAddressDictionaryEntryType*> alloc] init]];
    }
    [_entry addObject:elem];
}

@end

