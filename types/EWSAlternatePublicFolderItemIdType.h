#import <Foundation/Foundation.h>
#import "EWSAlternatePublicFolderIdType.h"






/* AlternatePublicFolderItemIdType */
@interface EWSAlternatePublicFolderItemIdType : EWSAlternatePublicFolderIdType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* itemId  /* xs:string */;


@end

