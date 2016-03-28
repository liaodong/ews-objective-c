#import <Foundation/Foundation.h>



@class EWSPathToExtendedFieldType;
@class EWSPathToIndexedFieldType;
@class EWSPathToUnindexedFieldType;



/* AggregateOnType */
@interface EWSAggregateOnType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                    aggregate         /* EWSAggregateType */;
@property (strong) EWSPathToUnindexedFieldType* fieldURI;
@property (strong) EWSPathToIndexedFieldType*   indexedFieldURI;
@property (strong) EWSPathToExtendedFieldType*  extendedFieldURI;


@end

