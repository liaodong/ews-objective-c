#import <Foundation/Foundation.h>






/* ReplyBody */
@interface MPSEWSReplyBody : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSReplyBody*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* message  /* xs:string */;


@end

