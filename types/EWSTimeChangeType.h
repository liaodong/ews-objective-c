#import <Foundation/Foundation.h>




#import "../handlers/EWSDateTypeHandler.h"
#import "../handlers/EWSDurationTypeHandler.h"
#import "../handlers/EWSStringTypeHandler.h"
#import "../handlers/EWSTimeTypeHandler.h"
#import "../types/EWSRelativeYearlyRecurrencePatternType.h"



/* TimeChangeType */
@interface EWSTimeChangeType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString*                               timeZoneName              /* xs:string */;
@property (retain) NSString*                               offset                    /* xs:duration */;
@property (retain) EWSRelativeYearlyRecurrencePatternType* relativeYearlyRecurrence;
@property (retain) NSString*                               absoluteDate              /* xs:date */;
@property (retain) NSString*                               time                      /* xs:time */;


@end

