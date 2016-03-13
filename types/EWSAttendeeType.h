#import <Foundation/Foundation.h>




#import "../handlers/EWSDateTimeTypeHandler.h"
#import "../types/EWSEmailAddressType.h"
#import "../types/EWSResponseTypeType.h"



/* AttendeeType */
@interface EWSAttendeeType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSEmailAddressType* mailbox;
@property (retain) NSString*            responseType      /* EWSResponseTypeType */;
@property (retain) NSString*            lastResponseTime  /* xs:dateTime */;


@end

