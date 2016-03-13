#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "EWSAlternateIdBaseType.h"



/* AlternatePublicFolderIdType */
@interface EWSAlternatePublicFolderIdType : EWSAlternateIdBaseType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* folderId  /* xs:string */;


@end

