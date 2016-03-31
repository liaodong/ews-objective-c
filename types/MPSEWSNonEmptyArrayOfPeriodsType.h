#import <Foundation/Foundation.h>



@class MPSEWSPeriodType;



/* NonEmptyArrayOfPeriodsType */
@interface MPSEWSNonEmptyArrayOfPeriodsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfPeriodsType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSPeriodType*>* period;


- (void) addPeriod:(MPSEWSPeriodType*) elem;
@end

