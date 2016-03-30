#import <Foundation/Foundation.h>
#import "MPSEWSBaseNotificationEventType.h"



@class MPSEWSFolderIdType;
@class MPSEWSItemIdType;



/* BaseObjectChangedEventType */
@interface MPSEWSBaseObjectChangedEventType : MPSEWSBaseNotificationEventType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSBaseObjectChangedEventType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*           timeStamp       /* xs:dateTime */;
@property (strong) MPSEWSFolderIdType* folderId;
@property (strong) MPSEWSItemIdType*   itemId;
@property (strong) MPSEWSFolderIdType* parentFolderId;


@end

