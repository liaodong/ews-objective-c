#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSNonEmptyArrayOfBaseItemIdsType;



/* DeleteItemType */
@interface MPSEWSDeleteItemType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSDeleteItemType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                             deleteType                /* MPSEWSDisposalType */;
@property (strong) NSString*                             sendMeetingCancellations  /* MPSEWSCalendarItemCreateOrDeleteOperationType */;
@property (strong) NSString*                             affectedTaskOccurrences   /* MPSEWSAffectedTaskOccurrencesType */;
@property (strong) MPSEWSNonEmptyArrayOfBaseItemIdsType* itemIds;


@end

