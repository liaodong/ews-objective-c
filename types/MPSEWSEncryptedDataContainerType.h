#import <Foundation/Foundation.h>






/* EncryptedDataContainerType */
@interface MPSEWSEncryptedDataContainerType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSEncryptedDataContainerType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* content  /* xs:string */;


@end

