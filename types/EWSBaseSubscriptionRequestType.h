#import <Foundation/Foundation.h>



@class EWSNonEmptyArrayOfBaseFolderIdsType;
@class EWSNonEmptyArrayOfNotificationEventTypesType;



/* BaseSubscriptionRequestType */
@interface EWSBaseSubscriptionRequestType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSNonEmptyArrayOfBaseFolderIdsType*          folderIds;
@property (strong) EWSNonEmptyArrayOfNotificationEventTypesType* eventTypes;
@property (strong) NSString*                                     watermark   /* EWSWatermarkType */;


@end

