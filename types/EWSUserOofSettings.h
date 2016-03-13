#import <Foundation/Foundation.h>




#import "EWSOofState.h"
#import "EWSReplyBody.h"
#import "EWSExternalAudience.h"
#import "EWSDuration.h"



/* UserOofSettings */
@interface EWSUserOofSettings : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString*     oofState          /* EWSOofState */;
@property (retain) NSString*     externalAudience  /* EWSExternalAudience */;
@property (retain) EWSDuration*  duration;
@property (retain) EWSReplyBody* internalReply;
@property (retain) EWSReplyBody* externalReply;


@end

