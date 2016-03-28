#import <Foundation/Foundation.h>






/* ReplyBody */
@interface EWSReplyBody : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* message  /* xs:string */;


@end

