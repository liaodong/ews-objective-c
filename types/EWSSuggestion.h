#import <Foundation/Foundation.h>



@class EWSArrayOfAttendeeConflictData;



/* Suggestion */
@interface EWSSuggestion : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                       meetingTime                /* xs:dateTime */;
@property (strong) NSNumber*                       isWorkTime                 /* xs:boolean */;
@property (strong) NSString*                       suggestionQuality          /* EWSSuggestionQuality */;
@property (strong) EWSArrayOfAttendeeConflictData* attendeeConflictDataArray;


@end

