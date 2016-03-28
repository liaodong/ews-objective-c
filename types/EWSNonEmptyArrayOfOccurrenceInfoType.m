#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSNonEmptyArrayOfOccurrenceInfoType.h"
#import "../types/EWSOccurrenceInfoType.h"


@implementation EWSNonEmptyArrayOfOccurrenceInfoType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSNonEmptyArrayOfOccurrenceInfoType class]];

    [handler listProperty  : @"occurrence"
             isNonEmpty    : TRUE
             useSelector   : @"addOccurrence"
             withNamespace : 't'
             withXmlTag    : @"Occurrence"
             withHandler   : [EWSOccurrenceInfoType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSNonEmptyArrayOfOccurrenceInfoType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfOccurrenceInfoType: Occurrence=%@", _occurrence];
}

- (void) addOccurrence:(EWSOccurrenceInfoType*) elem
{
    if (![self occurrence]) {
        [self setOccurrence:[[NSMutableArray<EWSOccurrenceInfoType*> alloc] init]];
    }
    [_occurrence addObject:elem];
}

@end

