#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSEncryptedSharedFolderDataType;



/* ArrayOfEncryptedSharedFolderDataType */
@interface MPSEWSArrayOfEncryptedSharedFolderDataType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfEncryptedSharedFolderDataType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSEncryptedSharedFolderDataType*>* encryptedSharedFolderData;


- (void) addEncryptedSharedFolderData:(MPSEWSEncryptedSharedFolderDataType*) elem;
@end

