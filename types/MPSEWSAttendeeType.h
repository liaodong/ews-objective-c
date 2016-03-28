#import <Foundation/Foundation.h>



@class MPSEWSEmailAddressType;



/* AttendeeType */
@interface MPSEWSAttendeeType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSEmailAddressType* mailbox;
@property (strong) NSString*               responseType      /* MPSEWSResponseTypeType */;
@property (strong) NSString*               lastResponseTime  /* xs:dateTime */;


@end

