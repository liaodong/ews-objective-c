#import <Foundation/Foundation.h>
#import "MPSEWSBaseFolderIdType.h"






/* FolderIdType */
@interface MPSEWSFolderIdType : MPSEWSBaseFolderIdType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* id         /* xs:string */;
@property (strong) NSString* changeKey  /* xs:string */;


@end

