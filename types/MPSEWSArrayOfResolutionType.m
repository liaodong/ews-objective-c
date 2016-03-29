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

