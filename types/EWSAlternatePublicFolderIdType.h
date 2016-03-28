#import <Foundation/Foundation.h>
#import "EWSAlternateIdBaseType.h"






/* AlternatePublicFolderIdType */
@interface EWSAlternatePublicFolderIdType : EWSAlternateIdBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* folderId  /* xs:string */;


@end

