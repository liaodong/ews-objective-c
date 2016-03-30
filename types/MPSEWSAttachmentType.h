#import <Foundation/Foundation.h>



@class MPSEWSAttachmentIdType;



/* AttachmentType */
@interface MPSEWSAttachmentType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSAttachmentType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSAttachmentIdType* attachmentId;
@property (strong) NSString*               name             /* xs:string */;
@property (strong) NSString*               contentType      /* xs:string */;
@property (strong) NSString*               contentId        /* xs:string */;
@property (strong) NSString*               contentLocation  /* xs:string */;


@end

