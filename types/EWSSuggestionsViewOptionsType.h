#import <Foundation/Foundation.h>



@class EWSDuration;



/* SuggestionsViewOptionsType */
@interface EWSSuggestionsViewOptionsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*    goodThreshold                   /* xs:int */;
@property (strong) NSNumber*    maximumResultsByDay             /* xs:int */;
@property (strong) NSNumber*    maximumNonWorkHourResultsByDay  /* xs:int */;
@property (strong) NSNumber*    meetingDurationInMinutes        /* xs:int */;
@property (strong) NSString*    minimumSuggestionQuality        /* EWSSuggestionQuality */;
@property (strong) EWSDuration* detailedSuggestionsWindow;
@property (strong) NSString*    currentMeetingTime              /* xs:dateTime */;
@property (strong) NSString*    globalObjectId                  /* xs:string */;


@end

