#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "../handlers/EWSDurationTypeHandler.h"



/* TimeZoneType */
@interface EWSTimeZoneType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* timeZoneName  /* xs:string */;
@property (retain) NSString* baseOffset    /* xs:duration */;


@end

