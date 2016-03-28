#import <Foundation/Foundation.h>



@class EWSRelativeYearlyRecurrencePatternType;



/* TimeChangeType */
@interface EWSTimeChangeType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                               timeZoneName              /* xs:string */;
@property (strong) NSString*                               offset                    /* xs:duration */;
@property (strong) EWSRelativeYearlyRecurrencePatternType* relativeYearlyRecurrence;
@property (strong) NSString*                               absoluteDate              /* xs:date */;
@property (strong) NSString*                               time                      /* xs:time */;


@end

