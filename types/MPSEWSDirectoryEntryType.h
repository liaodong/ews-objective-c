#import <Foundation/Foundation.h>



@class MPSEWSEmailAddressType;



/* DirectoryEntryType */
@interface MPSEWSDirectoryEntryType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSDirectoryEntryType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSEmailAddressType* id;


@end

