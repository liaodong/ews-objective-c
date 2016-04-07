#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSDeletedOccurrenceInfoType;



/* NonEmptyArrayOfDeletedOccurrencesType */
@interface MPSEWSNonEmptyArrayOfDeletedOccurrencesType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfDeletedOccurrencesType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSDeletedOccurrenceInfoType*>* deletedOccurrence;


- (void) addDeletedOccurrence:(MPSEWSDeletedOccurrenceInfoType*) elem;
@end

