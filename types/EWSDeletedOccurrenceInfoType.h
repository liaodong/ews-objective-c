#import <Foundation/Foundation.h>




#import "../handlers/EWSDateTimeTypeHandler.h"



/* DeletedOccurrenceInfoType */
@interface EWSDeletedOccurrenceInfoType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* start  /* xs:dateTime */;


@end

