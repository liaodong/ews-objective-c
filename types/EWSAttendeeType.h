#import <Foundation/Foundation.h>




#import "EWSResponseTypeType.h"
#import "../handlers/EWSDateTimeTypeHandler.h"
#import "EWSEmailAddressType.h"



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

