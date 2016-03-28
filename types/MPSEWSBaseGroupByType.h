#import <Foundation/Foundation.h>






/* BaseGroupByType */
@interface MPSEWSBaseGroupByType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* order  /* MPSEWSSortDirectionType */;


@end

