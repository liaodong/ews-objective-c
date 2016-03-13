#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "EWSRequestAttachmentIdType.h"



/* AttachmentIdType */
@interface EWSAttachmentIdType : EWSRequestAttachmentIdType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* rootItemId         /* xs:string */;
@property (retain) NSString* rootItemChangeKey  /* xs:string */;


@end

