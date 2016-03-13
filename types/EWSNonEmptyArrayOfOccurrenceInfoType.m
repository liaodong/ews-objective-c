
#import "EWSNonEmptyArrayOfOccurrenceInfoType.h"


@implementation EWSNonEmptyArrayOfOccurrenceInfoType 

+ (void) initialize
{
    EWSArrayTypeHandler* handler = [[EWSNonEmptyArrayOfOccurrenceInfoType alloc] initWithClass:[EWSNonEmptyArrayOfOccurrenceInfoType class]];

    [handler elementName : @"Occurrence"
             withHandler : [EWSOccurrenceInfoType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

@end

