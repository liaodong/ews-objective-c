#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSDuration;
@class MPSEWSReplyBody;



/* OutOfOfficeMailTip */
@interface MPSEWSOutOfOfficeMailTip : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSOutOfOfficeMailTip*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSReplyBody* replyBody;
@property (strong) MPSEWSDuration*  duration;


@end

