#import <Foundation/Foundation.h>




#import "EWSSortDirectionType.h"



/* BaseGroupByType */
@interface EWSBaseGroupByType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* order  /* EWSSortDirectionType */;


@end

