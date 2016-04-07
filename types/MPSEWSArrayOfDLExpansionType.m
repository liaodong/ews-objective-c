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
             withAttrTag : @"IndexedPagingOffset"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property    : @"numeratorOffset"
             withAttrTag : @"NumeratorOffset"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property    : @"absoluteDenominator"
             withAttrTag : @"AbsoluteDenominator"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler property    : @"includesLastItemInRange"
             withAttrTag : @"IncludesLastItemInRange"
             withHandler : [MPSEWSBooleanTypeHandler class]];

    [handler property    : @"totalItemsInView"
             withAttrTag : @"TotalItemsInView"
             withHandler : [MPSEWSIntegerTypeHandler class]];

    [handler listProperty  : @"mailbox"
             useSelector   : @"addMailbox"
             withNamespace : 't'
             withXmlTag    : @"Mailbox"
             withHandler   : [MPSEWSEmailAddressType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfDLExpansionType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val indexedPagingOffset] && ![MPSEWSIntegerTypeHandler isValid:[val indexedPagingOffset] forVersion: ver]) return FALSE;
    if ([val numeratorOffset] && ![MPSEWSIntegerTypeHandler isValid:[val numeratorOffset] forVersion: ver]) return FALSE;
    if ([val absoluteDenominator] && ![MPSEWSIntegerTypeHandler isValid:[val absoluteDenominator] forVersion: ver]) return FALSE;
    if ([val includesLastItemInRange] && ![MPSEWSBooleanTypeHandler isValid:[val includesLastItemInRange] forVersion: ver]) return FALSE;
    if ([val totalItemsInView] && ![MPSEWSIntegerTypeHandler isValid:[val totalItemsInView] forVersion: ver]) return FALSE;
    if ([val mailbox]) {
        for (MPSEWSEmailAddressType* obj in [val mailbox]) {
            if (![MPSEWSEmailAddressType isValid:obj forVersion:ver]) return FALSE;
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

