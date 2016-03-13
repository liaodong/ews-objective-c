#import <Foundation/Foundation.h>




#import "../handlers/EWSDateTimeTypeHandler.h"
#import "../handlers/EWSIntegerTypeHandler.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSDuration.h"
#import "../types/EWSSuggestionQuality.h"



/* SuggestionsViewOptionsType */
@interface EWSSuggestionsViewOptionsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSNumber*    goodThreshold                   /* xs:int */;
@property (retain) NSNumber*    maximumResultsByDay             /* xs:int */;
@property (retain) NSNumber*    maximumNonWorkHourResultsByDay  /* xs:int */;
@property (retain) NSNumber*    meetingDurationInMinutes        /* xs:int */;
@property (retain) NSString*    minimumSuggestionQuality        /* EWSSuggestionQuality */;
@property (retain) EWSDuration* detailedSuggestionsWindow;
@property (retain) NSString*    currentMeetingTime              /* xs:dateTime */;
@property (retain) NSString*    globalObjectId                  /* xs:string */;


@end

