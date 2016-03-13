#import <Foundation/Foundation.h>




#import "../types/EWSEmailAddressType.h"
#import "../types/EWSNonEmptyArrayOfFolderNamesType.h"
#import "EWSBaseRequestType.h"



/* CreateManagedFolderRequestType */
@interface EWSCreateManagedFolderRequestType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSArray<NSString*>*  folderNames  /* EWSNonEmptyArrayOfFolderNamesType */;
@property (retain) EWSEmailAddressType* mailbox;


@end

