#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSEmailAddressType;



/* DirectoryEntryType */
@interface MPSEWSDirectoryEntryType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSDirectoryEntryType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSEmailAddressType* id;


@end

