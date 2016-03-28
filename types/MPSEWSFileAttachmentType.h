#import <Foundation/Foundation.h>
#import "MPSEWSAttachmentType.h"






/* FileAttachmentType */
@interface MPSEWSFileAttachmentType : MPSEWSAttachmentType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSData*  content  /* xs:base64Binary */;


@end

