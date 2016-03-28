#import <Foundation/Foundation.h>
#import "EWSBaseRequestType.h"



@class EWSEmailAddressType;
@class EWSNonEmptyArrayOfFolderNamesType;



/* CreateManagedFolderRequestType */
@interface EWSCreateManagedFolderRequestType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSNonEmptyArrayOfFolderNamesType* folderNames;
@property (strong) EWSEmailAddressType*               mailbox;


@end

