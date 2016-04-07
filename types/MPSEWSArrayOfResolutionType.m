#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSArrayOfResolutionType.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../types/MPSEWSResolutionType.h"


@implementation MPSEWSArrayOfResolutionType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSArrayOfResolutionType class]];

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

    [handler listProperty  : @"resolution"
             useSelector   : @"addResolution"
             withNamespace : 't'
             withXmlTag    : @"Resolution"
             withHandler   : [MPSEWSResolutionType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSArrayOfResolutionType*) val forVersion:(MPSEWSExchangeVersion) ver
{   (void) val;
    if ([val indexedPagingOffset] && ![MPSEWSIntegerTypeHandler isValid:[val indexedPagingOffset] forVersion: ver]) return FALSE;
    if ([val numeratorOffset] && ![MPSEWSIntegerTypeHandler isValid:[val numeratorOffset] forVersion: ver]) return FALSE;
    if ([val absoluteDenominator] && ![MPSEWSIntegerTypeHandler isValid:[val absoluteDenominator] forVersion: ver]) return FALSE;
    if ([val includesLastItemInRange] && ![MPSEWSBooleanTypeHandler isValid:[val includesLastItemInRange] forVersion: ver]) return FALSE;
    if ([val totalItemsInView] && ![MPSEWSIntegerTypeHandler isValid:[val totalItemsInView] forVersion: ver]) return FALSE;
    if ([val resolution]) {
        for (MPSEWSResolutionType* obj in [val resolution]) {
            if (![MPSEWSResolutionType isValid:obj forVersion:ver]) return FALSE;
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
    return [MPSEWSArrayOfResolutionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfResolutionType: IndexedPagingOffset=%@ NumeratorOffset=%@ AbsoluteDenominator=%@ IncludesLastItemInRange=%@ TotalItemsInView=%@ Resolution=%@", _indexedPagingOffset, _numeratorOffset, _absoluteDenominator, _includesLastItemInRange, _totalItemsInView, _resolution];
}

- (void) addResolution:(MPSEWSResolutionType*) elem
{
    if (![self resolution]) {
        [self setResolution:[[NSMutableArray<MPSEWSResolutionType*> alloc] init]];
    }
    [_resolution addObject:elem];
}

@end

