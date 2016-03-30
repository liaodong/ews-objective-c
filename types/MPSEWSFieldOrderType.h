#import <Foundation/Foundation.h>



@class MPSEWSBasePathToElementType;



/* FieldOrderType */
@interface MPSEWSFieldOrderType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSFieldOrderType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                    order  /* MPSEWSSortDirectionType */;
@property (strong) MPSEWSBasePathToElementType* path;


@end

