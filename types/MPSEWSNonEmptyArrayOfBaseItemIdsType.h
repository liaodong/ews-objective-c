#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSItemIdType;
@class MPSEWSOccurrenceItemIdType;
@class MPSEWSRecurringMasterItemIdType;



/* NonEmptyArrayOfBaseItemIdsType */
@interface MPSEWSNonEmptyArrayOfBaseItemIdsType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfBaseItemIdsType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSItemIdType*>*                itemId;
@property (strong) NSMutableArray<MPSEWSOccurrenceItemIdType*>*      occurrenceItemId;
@property (strong) NSMutableArray<MPSEWSRecurringMasterItemIdType*>* recurringMasterItemId;


- (void) addItemId:(MPSEWSItemIdType*) elem;
- (void) addOccurrenceItemId:(MPSEWSOccurrenceItemIdType*) elem;
- (void) addRecurringMasterItemId:(MPSEWSRecurringMasterItemIdType*) elem;
@end

