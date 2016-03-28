#import <Foundation/Foundation.h>
#import "EWSBaseFolderIdType.h"






/* FolderIdType */
@interface EWSFolderIdType : EWSBaseFolderIdType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString* id         /* xs:string */;
@property (strong) NSString* changeKey  /* xs:string */;


@end

