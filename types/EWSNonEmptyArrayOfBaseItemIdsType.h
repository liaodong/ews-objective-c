#import <Foundation/Foundation.h>



@class EWSItemIdType;
@class EWSOccurrenceItemIdType;
@class EWSRecurringMasterItemIdType;



/* NonEmptyArrayOfBaseItemIdsType */
@interface EWSNonEmptyArrayOfBaseItemIdsType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSItemIdType*                itemId;
@property (strong) EWSOccurrenceItemIdType*      occurrenceItemId;
@property (strong) EWSRecurringMasterItemIdType* recurringMasterItemId;


@end

