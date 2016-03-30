#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSFreeBusyViewOptionsType.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../types/MPSEWSDuration.h"
#import "../types/MPSEWSFreeBusyViewType.h"


@implementation MPSEWSFreeBusyViewOptionsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSFreeBusyViewOptionsType class]];

    [handler property      : @"timeWindow"
             withNamespace : 't'
             withXmlTag    : @"TimeWindow"
             withHandler   : [MPSEWSDuration class]];

    [handler property      : @"mergedFreeBusyIntervalInMinutes"
             withNamespace : 't'
             withXmlTag    : @"MergedFreeBusyIntervalInMinutes"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"requestedView"
             withNamespace : 't'
             withXmlTag    : @"RequestedView"
             withHandler   : [MPSEWSFreeBusyViewType class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSFreeBusyViewOptionsType*) val
{   (void) val;
    if ([val timeWindow] && ![MPSEWSDuration isValid:[val timeWindow]]) return FALSE;
    if ([val mergedFreeBusyIntervalInMinutes] && ![MPSEWSIntegerTypeHandler isValid:[val mergedFreeBusyIntervalInMinutes]]) return FALSE;
    if ([val requestedView] && ![MPSEWSFreeBusyViewType isValid:[val requestedView]]) return FALSE;
    return TRUE;
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSFreeBusyViewOptionsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FreeBusyViewOptionsType: TimeWindow=%@ MergedFreeBusyIntervalInMinutes=%@ RequestedView=%@", _timeWindow, _mergedFreeBusyIntervalInMinutes, _requestedView];
}

@end

