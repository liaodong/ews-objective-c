#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSArrayOfTrackingPropertiesType;
@class MPSEWSEmailAddressType;



/* GetMessageTrackingReportRequestType */
@interface MPSEWSGetMessageTrackingReportRequestType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetMessageTrackingReportRequestType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                            scope                    /* MPSEWSNonEmptyStringType */;
@property (strong) NSString*                            reportTemplate           /* MPSEWSMessageTrackingReportTemplateType */;
@property (strong) MPSEWSEmailAddressType*              recipientFilter;
@property (strong) NSString*                            messageTrackingReportId  /* MPSEWSNonEmptyStringType */;
@property (strong) NSNumber*                            returnQueueEvents        /* xs:boolean */;
@property (strong) NSString*                            diagnosticsLevel         /* xs:string */;
@property (strong) MPSEWSArrayOfTrackingPropertiesType* properties;


@end

