#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSOccurrenceInfoType;



/* NonEmptyArrayOfOccurrenceInfoType */
@interface MPSEWSNonEmptyArrayOfOccurrenceInfoType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfOccurrenceInfoType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSOccurrenceInfoType*>* occurrence;


- (void) addOccurrence:(MPSEWSOccurrenceInfoType*) elem;
@end

