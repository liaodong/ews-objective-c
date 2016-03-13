#import <Foundation/Foundation.h>




#import "../handlers/EWSStringTypeHandler.h"
#import "EWSAlternatePublicFolderIdType.h"



/* AlternatePublicFolderItemIdType */
@interface EWSAlternatePublicFolderItemIdType : EWSAlternatePublicFolderIdType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString* itemId  /* xs:string */;


@end

