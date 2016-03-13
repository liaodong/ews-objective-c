#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"



/* ReplyBody */
@interface EWSReplyBody : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* message  /* xs:string */;


@end

