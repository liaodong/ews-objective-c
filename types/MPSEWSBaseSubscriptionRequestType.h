#import <Foundation/Foundation.h>



@class MPSEWSNonEmptyArrayOfBaseFolderIdsType;
@class MPSEWSNonEmptyArrayOfNotificationEventTypesType;



/* BaseSubscriptionRequestType */
@interface MPSEWSBaseSubscriptionRequestType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSBaseSubscriptionRequestType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*                                        subscribeToAllFolders  /* xs:boolean */;
@property (strong) MPSEWSNonEmptyArrayOfBaseFolderIdsType*          folderIds;
@property (strong) MPSEWSNonEmptyArrayOfNotificationEventTypesType* eventTypes;
@property (strong) NSString*                                        watermark              /* MPSEWSWatermarkType */;


@end

