#import <Foundation/Foundation.h>



@class MPSEWSItemIdType;
@class MPSEWSOccurrenceItemIdType;
@class MPSEWSRecurringMasterItemIdType;



/* NonEmptyArrayOfBaseItemIdsType */
@interface MPSEWSNonEmptyArrayOfBaseItemIdsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSItemIdType*                itemId;
@property (strong) MPSEWSOccurrenceItemIdType*      occurrenceItemId;
@property (strong) MPSEWSRecurringMasterItemIdType* recurringMasterItemId;


@end

