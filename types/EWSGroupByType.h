#import <Foundation/Foundation.h>
#import "EWSBaseGroupByType.h"



@class EWSAggregateOnType;



/* GroupByType */
@interface EWSGroupByType : EWSBaseGroupByType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSAggregateOnType* aggregateOn;


@end

