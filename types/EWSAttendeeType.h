#import <Foundation/Foundation.h>



@class EWSEmailAddressType;



/* AttendeeType */
@interface EWSAttendeeType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSEmailAddressType* mailbox;
@property (strong) NSString*            responseType      /* EWSResponseTypeType */;
@property (strong) NSString*            lastResponseTime  /* xs:dateTime */;


@end

