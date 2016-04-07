#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSPeriodType;



/* NonEmptyArrayOfPeriodsType */
@interface MPSEWSNonEmptyArrayOfPeriodsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfPeriodsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSPeriodType*>* period;


- (void) addPeriod:(MPSEWSPeriodType*) elem;
@end

