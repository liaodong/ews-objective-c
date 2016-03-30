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
             withNamespace : 't'
             withXmlTag    : @"MeetingTime"
             withHandler   : [MPSEWSDateTimeTypeHandler class]];

    [handler property      : @"isWorkTime"
             withNamespace : 't'
             withXmlTag    : @"IsWorkTime"
             withHandler   : [MPSEWSBooleanTypeHandler class]];

    [handler property      : @"suggestionQuality"
             withNamespace : 't'
             withXmlTag    : @"SuggestionQuality"
             withHandler   : [MPSEWSSuggestionQuality class]];

    [handler property      : @"attendeeConflictDataArray"
             withNamespace : 't'
             withXmlTag    : @"AttendeeConflictDataArray"
             withHandler   : [MPSEWSArrayOfAttendeeConflictData class]];

    [handler register];
}

+ (BOOL) isValid:(MPSEWSSuggestion*) val
{   (void) val;
    if ([val meetingTime] && ![MPSEWSDateTimeTypeHandler isValid:[val meetingTime]]) return FALSE;
    if ([val isWorkTime] && ![MPSEWSBooleanTypeHandler isValid:[val isWorkTime]]) return FALSE;
    if ([val suggestionQuality] && ![MPSEWSSuggestionQuality isValid:[val suggestionQuality]]) return FALSE;
    if ([val attendeeConflictDataArray] && ![MPSEWSArrayOfAttendeeConflictData isValid:[val attendeeConflictDataArray]]) return FALSE;
    return TRUE;
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

