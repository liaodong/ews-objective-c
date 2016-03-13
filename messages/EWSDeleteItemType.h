#import <Foundation/Foundation.h>




#import "../types/EWSAffectedTaskOccurrencesType.h"
#import "../types/EWSCalendarItemCreateOrDeleteOperationType.h"
#import "../types/EWSDisposalType.h"
#import "../types/EWSNonEmptyArrayOfBaseItemIdsType.h"
#import "EWSBaseRequestType.h"



/* DeleteItemType */
@interface EWSDeleteItemType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString*                          deleteType                /* EWSDisposalType */;
@property (retain) NSString*                          sendMeetingCancellations  /* EWSCalendarItemCreateOrDeleteOperationType */;
@property (retain) NSString*                          affectedTaskOccurrences   /* EWSAffectedTaskOccurrencesType */;
@property (retain) EWSNonEmptyArrayOfBaseItemIdsType* itemIds;


@end

