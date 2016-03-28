#import <Foundation/Foundation.h>
#import "MPSEWSAlternatePublicFolderIdType.h"






/* AlternatePublicFolderItemIdType */
@interface MPSEWSAlternatePublicFolderItemIdType : MPSEWSAlternatePublicFolderIdType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* itemId  /* xs:string */;


@end

