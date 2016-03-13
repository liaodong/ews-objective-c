
#import "EWSEmailAddressDictionaryType.h"


@implementation EWSEmailAddressDictionaryType 

+ (void) initialize
{
    EWSArrayTypeHandler* handler = [[EWSEmailAddressDictionaryType alloc] initWithClass:[EWSEmailAddressDictionaryType class]];

    [handler elementName   : @"Entry"
             withNamespace : 't'             withHandler   : [EWSEmailAddressDictionaryEntryType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

@end

