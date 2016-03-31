#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSUserConfigurationDictionaryType.h"
#import "../types/MPSEWSUserConfigurationDictionaryEntryType.h"


@implementation MPSEWSUserConfigurationDictionaryType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSUserConfigurationDictionaryType class]];

    [handler listProperty  : @"dictionaryEntry"
             useSelector   : @"addDictionaryEntry"
             withNamespace : 't'
             withXmlTag    : @"DictionaryEntry"
             withHandler   : [MPSEWSUserConfigurationDictionaryEntryType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSUserConfigurationDictionaryType*) val
{   (void) val;
    if ([val dictionaryEntry]) {
        for (MPSEWSUserConfigurationDictionaryEntryType* obj in [val dictionaryEntry]) {
            if (![MPSEWSUserConfigurationDictionaryEntryType isValid:obj]) return FALSE;
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
    return [MPSEWSUserConfigurationDictionaryType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"UserConfigurationDictionaryType: DictionaryEntry=%@", _dictionaryEntry];
}

- (void) addDictionaryEntry:(MPSEWSUserConfigurationDictionaryEntryType*) elem
{
    if (![self dictionaryEntry]) {
        [self setDictionaryEntry:[[NSMutableArray<MPSEWSUserConfigurationDictionaryEntryType*> alloc] init]];
    }
    [_dictionaryEntry addObject:elem];
}

@end

