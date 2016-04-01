#import <Foundation/Foundation.h>






/* EncryptedSharedFolderDataType */
@interface MPSEWSEncryptedSharedFolderDataType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSEncryptedSharedFolderDataType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSData*  token  /* xs:xmlContent */;
@property (strong) NSData*  data   /* xs:xmlContent */;


@end

