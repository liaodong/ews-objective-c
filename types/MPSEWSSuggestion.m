#import <Foundation/Foundation.h>

#import "../handlers/MPSEWSObjectTypeHandler.h"

#import "MPSEWSSuggestion.h"
#import "../handlers/MPSEWSBooleanTypeHandler.h"
#import "../handlers/MPSEWSDateTimeTypeHandler.h"
#import "../types/MPSEWSArrayOfAttendeeConflictData.h"
#import "../types/MPSEWSSuggestionQuality.h"


@implementation MPSEWSSuggestion 

+ (void) initialize
{
    MPSEWSObjectTypeHandler* handler = [[MPSEWSObjectTypeHandler alloc] initWithClass:[MPSEWSSuggestion class]];

    [handler property      : @"meetingTime"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"MeetingTime"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"isWorkTime"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"IsWorkTime"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"suggestionQuality"
             isRequired    : TRUE
             withNamespace : 't'
             withXmlTag    : @"SuggestionQuality"
             withHandler   : [MPSEWSSuggestionQuality class]];

    [handler property      : @"attendeeConflictDataArray"
             isRequired    : FALSE
             withNamespace : 't'
             withXmlTag    : @"AttendeeConflictDataArray"
             withHandler   : [MPSEWSArrayOfAttendeeConflictData class]];

    [handler register];
}

- (id) init
{
    return [super init];
}

- (Class) handlerClass
{
    return [MPSEWSSuggestion class];
}

- (NSString*) description
{
    return [NSString stringWithFormat:@"Suggestion: MeetingTime=%@ IsWorkTime=%@ SuggestionQuality=%@ AttendeeConflictDataArray=%@", _meetingTime, _isWorkTime, _suggestionQuality, _attendeeConflictDataArray];
}

@end

