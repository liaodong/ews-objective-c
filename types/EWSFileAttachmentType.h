#import <Foundation/Foundation.h>
#import "EWSAttachmentType.h"






/* FileAttachmentType */
@interface EWSFileAttachmentType : EWSAttachmentType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSData*  content  /* xs:base64Binary */;


@end

