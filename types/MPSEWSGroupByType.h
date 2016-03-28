#import <Foundation/Foundation.h>
#import "MPSEWSBaseGroupByType.h"



@class MPSEWSAggregateOnType;



/* GroupByType */
@interface MPSEWSGroupByType : MPSEWSBaseGroupByType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSAggregateOnType* aggregateOn;


@end

