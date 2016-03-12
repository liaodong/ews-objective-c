#import <Foundation/Foundation.h>




#import "../handlers/EWSDateTimeTypeHandler.h"



/* Duration */
@interface EWSDuration : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* startTime  /* xs:dateTime */;
@property (retain) NSString* endTime    /* xs:dateTime */;


@end

