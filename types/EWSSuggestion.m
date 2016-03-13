#import <Foundation/Foundation.h>

#import "../handlers/EWSObjectTypeHandler.h"


#import "EWSSuggestion.h"


@implementation EWSSuggestion 

+ (void) initialize
{
    EWSObjectTypeHandler* handler = [[EWSObjectTypeHandler alloc] initWithClass:[EWSSuggestion class]];

    [handler property   : @"meetingTime"
             isRequired : TRUE
             withXmlTag : @"MeetingTime"
             withHandler: [EWSDateTimeTypeHandler class]];

    [handler property   : @"isWorkTime"
             isRequired : TRUE
             withXmlTag : @"IsWorkTime"
             withHandler: [EWSBooleanTypeHandler class]];

    [handler property   : @"suggestionQuality"
             isRequired : TRUE
             withXmlTag : @"SuggestionQuality"
             withHandler: [EWSSuggestionQuality class]];

    [handler property   : @"attendeeConflictDataArray"
             isRequired : FALSE
             withXmlTag : @"AttendeeConflictDataArray"
             withHandler: [EWSArrayOfAttendeeConflictData class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [EWSSuggestion class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"Suggestion: MeetingTime=%@ IsWorkTime=%@ SuggestionQuality=%@ AttendeeConflictDataArray=%@", _meetingTime, _isWorkTime, _suggestionQuality, _attendeeConflictDataArray];
}

@end

