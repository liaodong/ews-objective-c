#import <Foundation/Foundation.h>



@class MPSEWSEncryptedDataContainerType;



/* EncryptedSharedFolderDataType */
@interface MPSEWSEncryptedSharedFolderDataType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSEncryptedSharedFolderDataType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSEncryptedDataContainerType* token;
@property (strong) MPSEWSEncryptedDataContainerType* data;


@end

