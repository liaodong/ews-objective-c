#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSuggestionsViewOptionsType.h"


@implementation EWSSuggestionsViewOptionsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSuggestionsViewOptionsType class]];

    [handler property      : @"goodThreshold"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"GoodThreshold"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler property      : @"maximumResultsByDay"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MaximumResultsByDay"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler property      : @"maximumNonWorkHourResultsByDay"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MaximumNonWorkHourResultsByDay"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler property      : @"meetingDurationInMinutes"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MeetingDurationInMinutes"
             withHandler   : [EWSIntegerTypeHandler class]];

    [handler property      : @"minimumSuggestionQuality"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"MinimumSuggestionQuality"
             withHandler   : [EWSSuggestionQuality class]];

    [handler property      : @"detailedSuggestionsWindow"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"DetailedSuggestionsWindow"
             withHandler   : [EWSDuration class]];

    [handler property      : @"currentMeetingTime"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"CurrentMeetingTime"
             withHandler   : [EWSDateTimeTypeHandler class]];

    [handler property      : @"globalObjectId"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"GlobalObjectId"
             withHandler   : [EWSStringTypeHandler class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSuggestionsViewOptionsType class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"SuggestionsViewOptionsType: GoodThreshold=%@ MaximumResultsByDay=%@ MaximumNonWorkHourResultsByDay=%@ MeetingDurationInMinutes=%@ MinimumSuggestionQuality=%@ DetailedSuggestionsWindow=%@ CurrentMeetingTime=%@ GlobalObjectId=%@", _goodThreshold, _maximumResultsByDay, _maximumNonWorkHourResultsByDay, _meetingDurationInMinutes, _minimumSuggestionQuality, _detailedSuggestionsWindow, _currentMeetingTime, _globalObjectId];
}

@end

