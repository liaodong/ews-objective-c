#import <Foundation/Foundation.h>
#import "MPSEWSBaseGroupByType.h"



@class MPSEWSAggregateOnType;
@class MPSEWSPathToExtendedFieldType;
@class MPSEWSPathToIndexedFieldType;
@class MPSEWSPathToUnindexedFieldType;



/* GroupByType */
@interface MPSEWSGroupByType : MPSEWSBaseGroupByType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGroupByType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSPathToUnindexedFieldType* fieldURI;
@property (strong) MPSEWSPathToIndexedFieldType*   indexedFieldURI;
@property (strong) MPSEWSPathToExtendedFieldType*  extendedFieldURI;
@property (strong) MPSEWSAggregateOnType*          aggregateOn;


@end

