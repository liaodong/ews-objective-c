#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "../types/EWSAttachmentIdType.h"



/* AttachmentType */
@interface EWSAttachmentType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSAttachmentIdType* attachmentId;
@property (retain) NSString*            name             /* xs:string */;
@property (retain) NSString*            contentType      /* xs:string */;
@property (retain) NSString*            contentId        /* xs:string */;
@property (retain) NSString*            contentLocation  /* xs:string */;


@end

