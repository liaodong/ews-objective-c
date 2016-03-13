#import <Foundation/Foundation.h>




#import "../types/EWSCalendarItemCreateOrDeleteOperationType.h"
#import "../types/EWSMessageDispositionType.h"
#import "../types/EWSNonEmptyArrayOfAllItemsType.h"
#import "../types/EWSTargetFolderIdType.h"
#import "EWSBaseRequestType.h"



/* CreateItemType */
@interface EWSCreateItemType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString*                       messageDisposition      /* EWSMessageDispositionType */;
@property (retain) NSString*                       sendMeetingInvitations  /* EWSCalendarItemCreateOrDeleteOperationType */;
@property (retain) EWSTargetFolderIdType*          savedItemFolderId;
@property (retain) EWSNonEmptyArrayOfAllItemsType* items;


@end

