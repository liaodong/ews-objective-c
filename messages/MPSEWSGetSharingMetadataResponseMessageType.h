#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSArrayOfEncryptedSharedFolderDataType;
@class MPSEWSArrayOfInvalidRecipientsType;



/* GetSharingMetadataResponseMessageType */
@interface MPSEWSGetSharingMetadataResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetSharingMetadataResponseMessageType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSArrayOfEncryptedSharedFolderDataType* encryptedSharedFolderDataCollection;
@property (strong) MPSEWSArrayOfInvalidRecipientsType*         invalidRecipients;


@end

