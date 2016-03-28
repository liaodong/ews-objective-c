#import <Foundation/Foundation.h>



@class EWSAttachmentIdType;



/* AttachmentType */
@interface EWSAttachmentType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSAttachmentIdType* attachmentId;
@property (strong) NSString*            name             /* xs:string */;
@property (strong) NSString*            contentType      /* xs:string */;
@property (strong) NSString*            contentId        /* xs:string */;
@property (strong) NSString*            contentLocation  /* xs:string */;


@end

