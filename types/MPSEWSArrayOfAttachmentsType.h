#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSFileAttachmentType;
@class MPSEWSItemAttachmentType;



/* ArrayOfAttachmentsType */
@interface MPSEWSArrayOfAttachmentsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfAttachmentsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSItemAttachmentType*>* itemAttachment;
@property (strong) NSMutableArray<MPSEWSFileAttachmentType*>* fileAttachment;


- (void) addItemAttachment:(MPSEWSItemAttachmentType*) elem;
- (void) addFileAttachment:(MPSEWSFileAttachmentType*) elem;
@end

