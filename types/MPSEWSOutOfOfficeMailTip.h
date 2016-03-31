#import <Foundation/Foundation.h>



@class MPSEWSDuration;
@class MPSEWSReplyBody;



/* OutOfOfficeMailTip */
@interface MPSEWSOutOfOfficeMailTip : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSOutOfOfficeMailTip*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSReplyBody* replyBody;
@property (strong) MPSEWSDuration*  duration;


@end

