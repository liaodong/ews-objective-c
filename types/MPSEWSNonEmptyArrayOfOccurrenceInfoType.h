#import <Foundation/Foundation.h>



@class MPSEWSOccurrenceInfoType;



/* NonEmptyArrayOfOccurrenceInfoType */
@interface MPSEWSNonEmptyArrayOfOccurrenceInfoType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSOccurrenceInfoType*>* occurrence;


- (void) addOccurrence:(MPSEWSOccurrenceInfoType*) elem;
@end

