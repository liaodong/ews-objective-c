#import <Foundation/Foundation.h>



@class MPSEWSNonEmptyArrayOfBaseFolderIdsType;
@class MPSEWSNonEmptyArrayOfNotificationEventTypesType;



/* BaseSubscriptionRequestType */
@interface MPSEWSBaseSubscriptionRequestType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSNonEmptyArrayOfBaseFolderIdsType*          folderIds;
@property (strong) MPSEWSNonEmptyArrayOfNotificationEventTypesType* eventTypes;
@property (strong) NSString*                                        watermark   /* MPSEWSWatermarkType */;


@end

