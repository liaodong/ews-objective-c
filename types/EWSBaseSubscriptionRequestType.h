#import <Foundation/Foundation.h>




#import "EWSNonEmptyArrayOfNotificationEventTypesType.h"
#import "EWSNonEmptyArrayOfBaseFolderIdsType.h"
#import "EWSWatermarkType.h"



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

