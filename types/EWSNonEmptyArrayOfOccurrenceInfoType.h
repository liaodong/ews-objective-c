#import <Foundation/Foundation.h>



@class EWSOccurrenceInfoType;



/* NonEmptyArrayOfOccurrenceInfoType */
@interface EWSNonEmptyArrayOfOccurrenceInfoType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<EWSOccurrenceInfoType*>* occurrence;


- (void) addOccurrence:(EWSOccurrenceInfoType*) elem;
@end

