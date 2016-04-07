#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSPathToExtendedFieldType;
@class MPSEWSPathToIndexedFieldType;
@class MPSEWSPathToUnindexedFieldType;



/* AggregateOnType */
@interface MPSEWSAggregateOnType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSAggregateOnType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                       aggregate         /* MPSEWSAggregateType */;
@property (strong) MPSEWSPathToUnindexedFieldType* fieldURI;
@property (strong) MPSEWSPathToIndexedFieldType*   indexedFieldURI;
@property (strong) MPSEWSPathToExtendedFieldType*  extendedFieldURI;


@end

