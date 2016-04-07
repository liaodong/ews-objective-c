#import <Foundation/Foundation.h>
#import "MPSEWSAlternateIdBaseType.h"






/* AlternatePublicFolderIdType */
@interface MPSEWSAlternatePublicFolderIdType : MPSEWSAlternateIdBaseType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSAlternatePublicFolderIdType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* folderId  /* xs:string */;


@end

