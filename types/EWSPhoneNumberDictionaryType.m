
#import "EWSPhoneNumberDictionaryType.h"


@implementation EWSPhoneNumberDictionaryType 

+ (void) initialize
{
    EWSArrayTypeHandler* handler = [[EWSPhoneNumberDictionaryType alloc] initWithClass:[EWSPhoneNumberDictionaryType class]];

    [handler elementName : @"Entry"
             withHandler : [EWSPhoneNumberDictionaryEntryType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

@end

