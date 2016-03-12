#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSFreeBusyViewOptionsType.h"


@implementation EWSFreeBusyViewOptionsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSFreeBusyViewOptionsType class]];

    [handler property   : @"timeWindow"
             isRequired : TRUE
             withXmlTag : @"TimeWindow"
             withHandler: [EWSDuration class]];

    [handler property   : @"mergedFreeBusyIntervalInMinutes"
             isRequired : FALSE
             withXmlTag : @"MergedFreeBusyIntervalInMinutes"
             withHandler: [EWSIntegerTypeHandler class]];

    [handler property   : @"requestedView"
             isRequired : FALSE
             withXmlTag : @"RequestedView"
             withHandler: [EWSFreeBusyViewType class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSFreeBusyViewOptionsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"FreeBusyViewOptionsType: TimeWindow=%@ MergedFreeBusyIntervalInMinutes=%@ RequestedView=%@", _timeWindow, _mergedFreeBusyIntervalInMinutes, _requestedView];
}

@end

