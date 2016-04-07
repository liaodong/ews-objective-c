#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSRelativeYearlyRecurrencePatternType;



/* TimeChangeType */
@interface MPSEWSTimeChangeType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSTimeChangeType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                                  timeZoneName              /* xs:string */;
@property (strong) NSString*                                  offset                    /* xs:duration */;
@property (strong) MPSEWSRelativeYearlyRecurrencePatternType* relativeYearlyRecurrence;
@property (strong) NSString*                                  absoluteDate              /* xs:date */;
@property (strong) NSString*                                  time                      /* xs:time */;


@end

