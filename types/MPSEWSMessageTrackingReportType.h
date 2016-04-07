#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSArrayOfEmailAddressesType;
@class MPSEWSArrayOfRecipientTrackingEventType;
@class MPSEWSArrayOfTrackingPropertiesType;
@class MPSEWSEmailAddressType;



/* MessageTrackingReportType */
@interface MPSEWSMessageTrackingReportType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSMessageTrackingReportType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSEmailAddressType*                  sender;
@property (strong) MPSEWSEmailAddressType*                  purportedSender;
@property (strong) NSString*                                subject                  /* xs:string */;
@property (strong) NSString*                                submitTime               /* xs:dateTime */;
@property (strong) MPSEWSArrayOfEmailAddressesType*         originalRecipients;
@property (strong) MPSEWSArrayOfRecipientTrackingEventType* recipientTrackingEvents;
@property (strong) MPSEWSArrayOfTrackingPropertiesType*     properties;


@end

