#import <Foundation/Foundation.h>



@class MPSEWSFieldOrderType;



/* NonEmptyArrayOfFieldOrdersType */
@interface MPSEWSNonEmptyArrayOfFieldOrdersType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfFieldOrdersType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSFieldOrderType*>* fieldOrder;


- (void) addFieldOrder:(MPSEWSFieldOrderType*) elem;
@end

