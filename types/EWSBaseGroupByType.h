#import <Foundation/Foundation.h>






/* BaseGroupByType */
@interface EWSBaseGroupByType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* order  /* EWSSortDirectionType */;


@end

