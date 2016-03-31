#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSArrayOfTrackingPropertiesType;
@class MPSEWSEmailAddressType;



/* FindMessageTrackingReportRequestType */
@interface MPSEWSFindMessageTrackingReportRequestType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSFindMessageTrackingReportRequestType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                            scope                     /* MPSEWSNonEmptyStringType */;
@property (strong) NSString*                            domain                    /* MPSEWSNonEmptyStringType */;
@property (strong) MPSEWSEmailAddressType*              sender;
@property (strong) MPSEWSEmailAddressType*              purportedSender;
@property (strong) MPSEWSEmailAddressType*              recipient;
@property (strong) NSString*                            subject                   /* xs:string */;
@property (strong) NSString*                            startDateTime             /* xs:dateTime */;
@property (strong) NSString*                            endDateTime               /* xs:dateTime */;
@property (strong) NSString*                            messageId                 /* MPSEWSNonEmptyStringType */;
@property (strong) MPSEWSEmailAddressType*              federatedDeliveryMailbox;
@property (strong) NSString*                            diagnosticsLevel          /* xs:string */;
@property (strong) NSString*                            serverHint                /* xs:string */;
@property (strong) MPSEWSArrayOfTrackingPropertiesType* properties;


@end

