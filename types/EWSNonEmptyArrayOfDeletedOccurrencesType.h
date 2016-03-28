#import <Foundation/Foundation.h>



@class EWSDeletedOccurrenceInfoType;



/* NonEmptyArrayOfDeletedOccurrencesType */
@interface EWSNonEmptyArrayOfDeletedOccurrencesType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<EWSDeletedOccurrenceInfoType*>* deletedOccurrence;


- (void) addDeletedOccurrence:(EWSDeletedOccurrenceInfoType*) elem;
@end

