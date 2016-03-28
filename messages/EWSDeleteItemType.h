#import <Foundation/Foundation.h>
#import "EWSBaseRequestType.h"



@class EWSNonEmptyArrayOfBaseItemIdsType;



/* DeleteItemType */
@interface EWSDeleteItemType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                          deleteType                /* EWSDisposalType */;
@property (strong) NSString*                          sendMeetingCancellations  /* EWSCalendarItemCreateOrDeleteOperationType */;
@property (strong) NSString*                          affectedTaskOccurrences   /* EWSAffectedTaskOccurrencesType */;
@property (strong) EWSNonEmptyArrayOfBaseItemIdsType* itemIds;


@end

