#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSPhysicalAddressDictionaryType.h"
#import "../types/MPSEWSPhysicalAddressDictionaryEntryType.h"


@implementation MPSEWSPhysicalAddressDictionaryType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSPhysicalAddressDictionaryType class]];

    [handler listProperty  : @"entry"
             isNonEmpty    : TRUE
             useSelector   : @"addEntry"
             withNamespace : 't'
             withXmlTag    : @"Entry"
             withHandler   : [MPSEWSPhysicalAddressDictionaryEntryType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSPhysicalAddressDictionaryType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"PhysicalAddressDictionaryType: Entry=%@", _entry];
}

- (void) addEntry:(MPSEWSPhysicalAddressDictionaryEntryType*) elem
{
    if (![self entry]) {
        [self setEntry:[[NSMutableArray<MPSEWSPhysicalAddressDictionaryEntryType*> alloc] init]];
    }
    [_entry addObject:elem];
}

@end
