#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"






/* GetSharingFolderType */
@interface MPSEWSGetSharingFolderType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSGetSharingFolderType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* smtpAddress     /* MPSEWSNonEmptyStringType */;
@property (strong) NSString* dataType        /* MPSEWSSharingDataType */;
@property (strong) NSString* sharedFolderId  /* MPSEWSNonEmptyStringType */;


@end

