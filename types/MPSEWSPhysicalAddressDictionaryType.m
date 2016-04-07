#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSPhysicalAddressDictionaryType.h"
#import "../types/MPSEWSPhysicalAddressDictionaryEntryType.h"


@implementation MPSEWSPhysicalAddressDictionaryType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSPhysicalAddressDictionaryType class]];

    [handler listProperty  : @"entry"
             useSelector   : @"addEntry"
             withNamespace : 't'
             withXmlTag    : @"Entry"
             withHandler   : [MPSEWSPhysicalAddressDictionaryEntryType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSPhysicalAddressDictionaryType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val entry]) {
        for (MPSEWSPhysicalAddressDictionaryEntryType* obj in [val entry]) {
            if (![MPSEWSPhysicalAddressDictionaryEntryType isValid:obj forVersion:ver]) return FALSE;
        }
    }
    return TRUE;
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

