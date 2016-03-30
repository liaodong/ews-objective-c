#import <Foundation/Foundation.h>






/* BaseFolderIdType */
@interface MPSEWSBaseFolderIdType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSBaseFolderIdType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;



@end

