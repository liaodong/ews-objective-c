#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSEmailAddressType;
@class MPSEWSNonEmptyArrayOfFolderNamesType;



/* CreateManagedFolderRequestType */
@interface MPSEWSCreateManagedFolderRequestType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSCreateManagedFolderRequestType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSNonEmptyArrayOfFolderNamesType* folderNames;
@property (strong) MPSEWSEmailAddressType*               mailbox;


@end

