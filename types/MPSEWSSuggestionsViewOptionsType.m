#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSuggestionsViewOptionsType.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../handlers/MPSEWSIntegerTypeHandler.h"
#import "../handlers/MPSEWSStringTypeHandler.h"
#import "../types/MPSEWSDuration.h"
#import "../types/MPSEWSSuggestionQuality.h"


@implementation MPSEWSSuggestionsViewOptionsType 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSuggestionsViewOptionsType class]];

    [handler property      : @"goodThreshold"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"GoodThreshold"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"maximumResultsByDay"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MaximumResultsByDay"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"maximumNonWorkHourResultsByDay"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MaximumNonWorkHourResultsByDay"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"meetingDurationInMinutes"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MeetingDurationInMinutes"
             withHandler   : [MPSEWSIntegerTypeHandler class]];

    [handler property      : @"minimumSuggestionQuality"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MinimumSuggestionQuality"
             withHandler   : [MPSEWSSuggestionQuality class]];

    [handler property      : @"detailedSuggestionsWindow"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"DetailedSuggestionsWindow"
             withHandler   : [MPSEWSDuration class]];

    [handler property      : @"currentMeetingTime"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"CurrentMeetingTime"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"globalObjectId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"GlobalObjectId"
             withHandler   : [MPSEWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSuggestionsViewOptionsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SuggestionsViewOptionsType: GoodThreshold=%@ MaximumResultsByDay=%@ MaximumNonWorkHourResultsByDay=%@ MeetingDurationInMinutes=%@ MinimumSuggestionQuality=%@ DetailedSuggestionsWindow=%@ CurrentMeetingTime=%@ GlobalObjectId=%@", _goodThreshold, _maximumResultsByDay, _maximumNonWorkHourResultsByDay, _meetingDurationInMinutes, _minimumSuggestionQuality, _detailedSuggestionsWindow, _currentMeetingTime, _globalObjectId];
}

@end

