#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSArrayOfAttendeeConflictData;



/* Suggestion */
@interface MPSEWSSuggestion : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSuggestion*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                          meetingTime                /* xs:dateTime */;
@property (strong) NSNumber*                          isWorkTime                 /* xs:boolean */;
@property (strong) NSString*                          suggestionQuality          /* MPSEWSSuggestionQuality */;
@property (strong) MPSEWSArrayOfAttendeeConflictData* attendeeConflictDataArray;


@end

