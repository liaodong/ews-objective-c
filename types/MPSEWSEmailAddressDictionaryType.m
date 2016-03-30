#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSEmailAddressDictionaryType.h"
#import "../types/MPSEWSEmailAddressDictionaryEntryType.h"


@implementation MPSEWSEmailAddressDictionaryType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSEmailAddressDictionaryType class]];

    [handler listProperty  : @"entry"
             useSelector   : @"addEntry"
             withNamespace : 't'
             withXmlTag    : @"Entry"
             withHandler   : [MPSEWSEmailAddressDictionaryEntryType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSEmailAddressDictionaryType*) val
{   (void) val;
    if ([val entry]) {
        for (MPSEWSEmailAddressDictionaryEntryType* obj in [val entry]) {
            if (![MPSEWSEmailAddressDictionaryEntryType isValid:obj]) return FALSE;
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

