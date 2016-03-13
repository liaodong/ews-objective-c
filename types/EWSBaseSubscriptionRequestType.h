#import <Foundation/Foundation.h>




#import "../types/EWSNonEmptyArrayOfBaseFolderIdsType.h"
#import "../types/EWSNonEmptyArrayOfNotificationEventTypesType.h"
#import "../types/EWSWatermarkType.h"



/* BaseSubscriptionRequestType */
@interface EWSBaseSubscriptionRequestType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSNonEmptyArrayOfBaseFolderIdsType*          folderIds;
@property (retain) EWSNonEmptyArrayOfNotificationEventTypesType* eventTypes;
@property (retain) NSString*                                     watermark   /* EWSWatermarkType */;


@end

