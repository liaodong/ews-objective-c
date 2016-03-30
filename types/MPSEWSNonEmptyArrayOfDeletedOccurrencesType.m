#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSNonEmptyArrayOfDeletedOccurrencesType.h"
#import "../types/MPSEWSDeletedOccurrenceInfoType.h"


@implementation MPSEWSNonEmptyArrayOfDeletedOccurrencesType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSNonEmptyArrayOfDeletedOccurrencesType class]];

    [handler listProperty  : @"deletedOccurrence"
             useSelector   : @"addDeletedOccurrence"
             withNamespace : 't'
             withXmlTag    : @"DeletedOccurrence"
             withHandler   : [MPSEWSDeletedOccurrenceInfoType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfDeletedOccurrencesType*) val
{   (void) val;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSNonEmptyArrayOfDeletedOccurrencesType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"NonEmptyArrayOfDeletedOccurrencesType: DeletedOccurrence=%@", _deletedOccurrence];
}

- (void) addDeletedOccurrence:(MPSEWSDeletedOccurrenceInfoType*) elem
{
    if (![self deletedOccurrence]) {
        [self setDeletedOccurrence:[[NSMutableArray<MPSEWSDeletedOccurrenceInfoType*> alloc] init]];
    }
    [_deletedOccurrence addObject:elem];
}

@end

