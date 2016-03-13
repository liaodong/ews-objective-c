#import <Foundation/Foundation.h>




#import "EWSBasePathToElementType.h"
#import "EWSSortDirectionType.h"



/* FieldOrderType */
@interface EWSFieldOrderType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString*                 order  /* EWSSortDirectionType */;
@property (retain) EWSBasePathToElementType* path;


@end

