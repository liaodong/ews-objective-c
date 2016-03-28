#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfDLExpansionType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../types/MPSEWSEmailAddressType.h"


@implementation MPSEWSArrayOfDLExpansionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfDLExpansionType class]];

    [handler property    : @"indexedPagingOffset"
             isRequired  : FALSE
             withAttrTag : @"IndexedPagingOffset"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property    : @"numeratorOffset"
             isRequired  : FALSE
             withAttrTag : @"NumeratorOffset"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property    : @"absoluteDenominator"
             isRequired  : FALSE
             withAttrTag : @"AbsoluteDenominator"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property    : @"includesLastItemInRange"
             isRequired  : FALSE
             withAttrTag : @"IncludesLastItemInRange"
             withHandler : [MPSEWSBooleanTypeHandler class]];

    [handler property    : @"totalItemsInView"
             isRequired  : FALSE
             withAttrTag : @"TotalItemsInView"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler listProperty  : @"mailbox"
             isNonEmpty    : FALSE
             useSelector   : @"addMailbox"
             withNamespace : 't'
             withXmlTag    : @"Mailbox"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSArrayOfDLExpansionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfDLExpansionType: IndexedPagingOffset=%@ NumeratorOffset=%@ AbsoluteDenominator=%@ IncludesLastItemInRange=%@ TotalItemsInView=%@ Mailbox=%@", _indexedPagingOffset, _numeratorOffset, _absoluteDenominator, _includesLastItemInRange, _totalItemsInView, _mailbox];
}

- (void) addMailbox:(MPSEWSEmailAddressType*) elem
{
    if (![self mailbox]) {
        [self setMailbox:[[NSMutableArray<MPSEWSEmailAddressType*> alloc] init]];
    }
    [_mailbox addObject:elem];
}

@end

