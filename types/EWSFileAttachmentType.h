#import <Foundation/Foundation.h>




#import "../handlers/EWSBase64BinaryTypeHandler.h"
#import "EWSAttachmentType.h"



/* FileAttachmentType */
@interface EWSFileAttachmentType : EWSAttachmentType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSData*  content  /* xs:base64Binary */;


@end

