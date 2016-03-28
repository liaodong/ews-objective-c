#import <Foundation/Foundation.h>



@class EWSWorkingPeriod;



/* ArrayOfWorkingPeriod */
@interface EWSArrayOfWorkingPeriod : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<EWSWorkingPeriod*>* workingPeriod;


- (void) addWorkingPeriod:(EWSWorkingPeriod*) elem;
@end

