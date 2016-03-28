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
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"TimeWindow"
             withHandler   : [MPSEWSDuration class]];

    [handler property      : @"mergedFreeBusyIntervalInMinutes"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MergedFreeBusyIntervalInMinutes"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"requestedView"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"RequestedView"
             withHandler   : [MPSEWSFreeBusyViewType class]];

    [handler register];
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

