
#import "EWSNonEmptyArrayOfDeletedOccurrencesType.h"


@implementation EWSNonEmptyArrayOfDeletedOccurrencesType 

+ (void) initialize
{
    EWSArrayTypeHandler* handler = [[EWSNonEmptyArrayOfDeletedOccurrencesType alloc] initWithClass:[EWSNonEmptyArrayOfDeletedOccurrencesType class]];

    [handler elementName : @"DeletedOccurrence"
             withHandler : [EWSDeletedOccurrenceInfoType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

@end

