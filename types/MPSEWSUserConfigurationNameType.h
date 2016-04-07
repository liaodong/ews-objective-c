#import <Foundation/Foundation.h>
#import "MPSEWSTargetFolderIdType.h"






/* UserConfigurationNameType */
@interface MPSEWSUserConfigurationNameType : MPSEWSTargetFolderIdType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSUserConfigurationNameType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* name   /* MPSEWSNonEmptyStringType */;


@end

