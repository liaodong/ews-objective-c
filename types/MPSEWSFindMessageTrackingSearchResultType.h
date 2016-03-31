#import <Foundation/Foundation.h>



@class MPSEWSArrayOfRecipientsType;
@class MPSEWSArrayOfTrackingPropertiesType;
@class MPSEWSEmailAddressType;



/* FindMessageTrackingSearchResultType */
@interface MPSEWSFindMessageTrackingSearchResultType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSFindMessageTrackingSearchResultType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                            subject                  /* xs:string */;
@property (strong) MPSEWSEmailAddressType*              sender;
@property (strong) MPSEWSEmailAddressType*              purportedSender;
@property (strong) MPSEWSArrayOfRecipientsType*         recipients;
@property (strong) NSString*                            submittedTime            /* xs:dateTime */;
@property (strong) NSString*                            messageTrackingReportId  /* MPSEWSNonEmptyStringType */;
@property (strong) NSString*                            previousHopServer        /* MPSEWSNonEmptyStringType */;
@property (strong) NSString*                            firstHopServer           /* MPSEWSNonEmptyStringType */;
@property (strong) MPSEWSArrayOfTrackingPropertiesType* properties;


@end

