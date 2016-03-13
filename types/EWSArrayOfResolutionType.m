#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSArrayOfResolutionType.h"


@implementation EWSArrayOfResolutionType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSArrayOfResolutionType class]];

    [handler property    : @"indexedPagingOffset"
             isRequired  : FALSE
             withAttrTag : @"IndexedPagingOffset"
             withHandler : [EWSIntegerTypeHandler class]];

    [handler property    : @"numeratorOffset"
             isRequired  : FALSE
             withAttrTag : @"NumeratorOffset"
             withHandler : [EWSIntegerTypeHandler class]];

    [handler property    : @"absoluteDenominator"
             isRequired  : FALSE
             withAttrTag : @"AbsoluteDenominator"
             withHandler : [EWSIntegerTypeHandler class]];

    [handler property    : @"includesLastItemInRange"
             isRequired  : FALSE
             withAttrTag : @"IncludesLastItemInRange"
             withHandler : [EWSBooleanTypeHandler class]];

    [handler property    : @"totalItemsInView"
             isRequired  : FALSE
             withAttrTag : @"TotalItemsInView"
             withHandler : [EWSIntegerTypeHandler class]];

    [handler listProperty  : @"resolution"
             isNonEmpty    : FALSE
             useSelector   : @"addResolution"
             withNamespace : 't'
             withXmlTag    : @"Resolution"
             withHandler   : [EWSResolutionType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSArrayOfResolutionType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"ArrayOfResolutionType: IndexedPagingOffset=%@ NumeratorOffset=%@ AbsoluteDenominator=%@ IncludesLastItemInRange=%@ TotalItemsInView=%@ Resolution=%@", _indexedPagingOffset, _numeratorOffset, _absoluteDenominator, _includesLastItemInRange, _totalItemsInView, _resolution];
}

@end

