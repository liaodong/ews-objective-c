#import <Foundation/Foundation.h>




#import "../types/EWSBasePathToElementType.h"
#import "../types/EWSSortDirectionType.h"



/* FieldOrderType */
@interface EWSFieldOrderType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString*                 order  /* EWSSortDirectionType */;
@property (retain) EWSBasePathToElementType* path;


@end

