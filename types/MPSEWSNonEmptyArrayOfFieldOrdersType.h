#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSFieldOrderType;



/* NonEmptyArrayOfFieldOrdersType */
@interface MPSEWSNonEmptyArrayOfFieldOrdersType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfFieldOrdersType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSFieldOrderType*>* fieldOrder;


- (void) addFieldOrder:(MPSEWSFieldOrderType*) elem;
@end

