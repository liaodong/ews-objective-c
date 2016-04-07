#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSWorkingPeriod;



/* ArrayOfWorkingPeriod */
@interface MPSEWSArrayOfWorkingPeriod : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfWorkingPeriod*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSWorkingPeriod*>* workingPeriod;


- (void) addWorkingPeriod:(MPSEWSWorkingPeriod*) elem;
@end

