#import <Foundation/Foundation.h>



@class MPSEWSDuration;
@class MPSEWSReplyBody;



/* UserOofSettings */
@interface MPSEWSUserOofSettings : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*        oofState          /* MPSEWSOofState */;
@property (strong) NSString*        externalAudience  /* MPSEWSExternalAudience */;
@property (strong) MPSEWSDuration*  duration;
@property (strong) MPSEWSReplyBody* internalReply;
@property (strong) MPSEWSReplyBody* externalReply;


@end

