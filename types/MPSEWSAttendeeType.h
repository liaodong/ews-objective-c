#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSEmailAddressType;



/* AttendeeType */
@interface MPSEWSAttendeeType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSAttendeeType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSEmailAddressType* mailbox;
@property (strong) NSString*               responseType      /* MPSEWSResponseTypeType */;
@property (strong) NSString*               lastResponseTime  /* xs:dateTime */;


@end

