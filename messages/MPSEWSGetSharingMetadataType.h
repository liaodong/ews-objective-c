#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSArrayOfSmtpAddressType;
@class MPSEWSFolderIdType;



/* GetSharingMetadataType */
@interface MPSEWSGetSharingMetadataType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetSharingMetadataType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSFolderIdType*           idOfFolderToShare;
@property (strong) NSString*                     senderSmtpAddress  /* MPSEWSNonEmptyStringType */;
@property (strong) MPSEWSArrayOfSmtpAddressType* recipients;


@end

