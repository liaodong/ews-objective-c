#import <Foundation/Foundation.h>






/* ReplyBody */
@interface MPSEWSReplyBody : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* message  /* xs:string */;


@end

