#import <Foundation/Foundation.h>
#import "MPSEWSRequestAttachmentIdType.h"






/* AttachmentIdType */
@interface MPSEWSAttachmentIdType : MPSEWSRequestAttachmentIdType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSAttachmentIdType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* rootItemId         /* xs:string */;
@property (strong) NSString* rootItemChangeKey  /* xs:string */;


@end

