#import <Foundation/Foundation.h>
#import "EWSRequestAttachmentIdType.h"






/* AttachmentIdType */
@interface EWSAttachmentIdType : EWSRequestAttachmentIdType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* rootItemId         /* xs:string */;
@property (strong) NSString* rootItemChangeKey  /* xs:string */;


@end

