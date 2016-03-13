#import <Foundation/Foundation.h>




#import "../handlers/EWSDurationTypeHandler.h"
#import "../handlers/EWSStringTypeHandler.h"



/* TimeZoneType */
@interface EWSTimeZoneType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* timeZoneName  /* xs:string */;
@property (retain) NSString* baseOffset    /* xs:duration */;


@end

