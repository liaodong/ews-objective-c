#import <Foundation/Foundation.h>



@class MPSEWSPathToExtendedFieldType;
@class MPSEWSPathToIndexedFieldType;
@class MPSEWSPathToUnindexedFieldType;



/* AggregateOnType */
@interface MPSEWSAggregateOnType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                       aggregate         /* MPSEWSAggregateType */;
@property (strong) MPSEWSPathToUnindexedFieldType* fieldURI;
@property (strong) MPSEWSPathToIndexedFieldType*   indexedFieldURI;
@property (strong) MPSEWSPathToExtendedFieldType*  extendedFieldURI;


@end

