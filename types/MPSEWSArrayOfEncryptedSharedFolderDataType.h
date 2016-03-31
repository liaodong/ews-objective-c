#import <Foundation/Foundation.h>



@class MPSEWSEncryptedSharedFolderDataType;



/* ArrayOfEncryptedSharedFolderDataType */
@interface MPSEWSArrayOfEncryptedSharedFolderDataType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSArrayOfEncryptedSharedFolderDataType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSEncryptedSharedFolderDataType*>* encryptedSharedFolderData;


- (void) addEncryptedSharedFolderData:(MPSEWSEncryptedSharedFolderDataType*) elem;
@end

