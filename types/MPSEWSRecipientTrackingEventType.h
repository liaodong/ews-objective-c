#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSArrayOfStringsType;
@class MPSEWSArrayOfTrackingPropertiesType;
@class MPSEWSEmailAddressType;



/* RecipientTrackingEventType */
@interface MPSEWSRecipientTrackingEventType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSRecipientTrackingEventType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                            date              /* xs:dateTime */;
@property (strong) MPSEWSEmailAddressType*              recipient;
@property (strong) NSString*                            deliveryStatus    /* xs:string */;
@property (strong) NSString*                            eventDescription  /* xs:string */;
@property (strong) MPSEWSArrayOfStringsType*            eventData;
@property (strong) NSString*                            server            /* MPSEWSNonEmptyStringType */;
@property (strong) NSNumber*                            internalId        /* xs:unsignedInt */;
@property (strong) NSNumber*                            bccRecipient      /* xs:boolean */;
@property (strong) NSNumber*                            hiddenRecipient   /* xs:boolean */;
@property (strong) NSString*                            uniquePathId      /* MPSEWSNonEmptyStringType */;
@property (strong) NSString*                            rootAddress       /* MPSEWSNonEmptyStringType */;
@property (strong) MPSEWSArrayOfTrackingPropertiesType* properties;


@end

