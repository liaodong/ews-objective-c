#import <Foundation/Foundation.h>



@class EWSDuration;
@class EWSReplyBody;



/* UserOofSettings */
@interface EWSUserOofSettings : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*     oofState          /* EWSOofState */;
@property (strong) NSString*     externalAudience  /* EWSExternalAudience */;
@property (strong) EWSDuration*  duration;
@property (strong) EWSReplyBody* internalReply;
@property (strong) EWSReplyBody* externalReply;


@end

