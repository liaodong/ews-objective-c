#import <Foundation/Foundation.h>



@class MPSEWSItemIdType;
@class MPSEWSNonEmptyArrayOfItemChangeDescriptionsType;
@class MPSEWSOccurrenceItemIdType;
@class MPSEWSRecurringMasterItemIdType;



/* ItemChangeType */
@interface MPSEWSItemChangeType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSItemChangeType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSItemIdType*                                itemId;
@property (strong) MPSEWSOccurrenceItemIdType*                      occurrenceItemId;
@property (strong) MPSEWSRecurringMasterItemIdType*                 recurringMasterItemId;
@property (strong) MPSEWSNonEmptyArrayOfItemChangeDescriptionsType* updates;


@end

