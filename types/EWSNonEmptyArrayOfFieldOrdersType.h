#import <Foundation/Foundation.h>



@class EWSFieldOrderType;



/* NonEmptyArrayOfFieldOrdersType */
@interface EWSNonEmptyArrayOfFieldOrdersType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<EWSFieldOrderType*>* fieldOrder;


- (void) addFieldOrder:(EWSFieldOrderType*) elem;
@end

