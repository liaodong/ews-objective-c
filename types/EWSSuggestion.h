#import <Foundation/Foundation.h>




#import "../handlers/EWSBooleanTypeHandler.h"
#import "../handlers/EWSDateTimeTypeHandler.h"
#import "../types/EWSArrayOfAttendeeConflictData.h"
#import "../types/EWSSuggestionQuality.h"



/* Suggestion */
@interface EWSSuggestion : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString*                       meetingTime                /* xs:dateTime */;
@property (retain) NSNumber*                       isWorkTime                 /* xs:boolean */;
@property (retain) NSString*                       suggestionQuality          /* EWSSuggestionQuality */;
@property (retain) EWSArrayOfAttendeeConflictData* attendeeConflictDataArray;


@end

