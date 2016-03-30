#import <Foundation/Foundation.h>



@class MPSEWSDuration;



/* SuggestionsViewOptionsType */
@interface MPSEWSSuggestionsViewOptionsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSuggestionsViewOptionsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*       goodThreshold                   /* xs:int */;
@property (strong) NSNumber*       maximumResultsByDay             /* xs:int */;
@property (strong) NSNumber*       maximumNonWorkHourResultsByDay  /* xs:int */;
@property (strong) NSNumber*       meetingDurationInMinutes        /* xs:int */;
@property (strong) NSString*       minimumSuggestionQuality        /* MPSEWSSuggestionQuality */;
@property (strong) MPSEWSDuration* detailedSuggestionsWindow;
@property (strong) NSString*       currentMeetingTime              /* xs:dateTime */;
@property (strong) NSString*       globalObjectId                  /* xs:string */;


@end

