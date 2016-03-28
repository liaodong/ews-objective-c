#import <Foundation/Foundation.h>
#import "MPSEWSBaseNotificationEventType.h"



@class MPSEWSFolderIdType;



/* BaseObjectChangedEventType */
@interface MPSEWSBaseObjectChangedEventType : MPSEWSBaseNotificationEventType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*           timeStamp       /* xs:dateTime */;
@property (strong) MPSEWSFolderIdType* parentFolderId;


@end

