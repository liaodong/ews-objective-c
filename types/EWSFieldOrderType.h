#import <Foundation/Foundation.h>



@class EWSBasePathToElementType;



/* FieldOrderType */
@interface EWSFieldOrderType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                 order  /* EWSSortDirectionType */;
@property (strong) EWSBasePathToElementType* path;


@end

