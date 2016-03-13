#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"

#import "EWSSuggestionsViewOptionsType.h"


@implementation EWSSuggestionsViewOptionsType 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSuggestionsViewOptionsType class]];

    [handler property   : @"goodThreshold"
             isRequired : FALSE
             withXmlTag : @"GoodThreshold"
             withHandler: [EWSIntegerTypeHandler class]];

    [handler property   : @"maximumResultsByDay"
             isRequired : FALSE
             withXmlTag : @"MaximumResultsByDay"
             withHandler: [EWSIntegerTypeHandler class]];

    [handler property   : @"maximumNonWorkHourResultsByDay"
             isRequired : FALSE
             withXmlTag : @"MaximumNonWorkHourResultsByDay"
             withHandler: [EWSIntegerTypeHandler class]];

    [handler property   : @"meetingDurationInMinutes"
             isRequired : FALSE
             withXmlTag : @"MeetingDurationInMinutes"
             withHandler: [EWSIntegerTypeHandler class]];

    [handler property   : @"minimumSuggestionQuality"
             isRequired : FALSE
             withXmlTag : @"MinimumSuggestionQuality"
             withHandler: [EWSSuggestionQuality class]];

    [handler property   : @"detailedSuggestionsWindow"
             isRequired : TRUE
             withXmlTag : @"DetailedSuggestionsWindow"
             withHandler: [EWSDuration class]];

    [handler property   : @"currentMeetingTime"
             isRequired : FALSE
             withXmlTag : @"CurrentMeetingTime"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"globalObjectId"
             isRequired : FALSE
             withXmlTag : @"GlobalObjectId"
             withHandler: [EWSStringTypeHandler class]];

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

