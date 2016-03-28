#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSNonEmptyArrayOfDeletedOccurrencesType.h"
#import "../types/EWSDeletedOccurrenceInfoType.h"


@implementation EWSNonEmptyArrayOfDeletedOccurrencesType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSNonEmptyArrayOfDeletedOccurrencesType class]];

    [handler listProperty  : @"deletedOccurrence"
             isNonEmpty    : TRUE
             useSelector   : @"addDeletedOccurrence"
             withNamespace : 't'
             withXmlTag    : @"DeletedOccurrence"
             withHandler   : [EWSDeletedOccurrenceInfoType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSNonEmptyArrayOfDeletedOccurrencesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfDeletedOccurrencesType: DeletedOccurrence=%@", _deletedOccurrence];
}

- (void) addDeletedOccurrence:(EWSDeletedOccurrenceInfoType*) elem
{
    if (![self deletedOccurrence]) {
        [self setDeletedOccurrence:[[NSMutableArray<EWSDeletedOccurrenceInfoType*> alloc] init]];
    }
    [_deletedOccurrence addObject:elem];
}

@end

