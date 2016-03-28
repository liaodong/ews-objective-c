#import <Foundation/Foundation.h>



@class EWSDistinguishedFolderIdType;
@class EWSFolderIdType;



/* TargetFolderIdType */
@interface EWSTargetFolderIdType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSFolderIdType*              folderId;
@property (strong) EWSDistinguishedFolderIdType* distinguishedFolderId;


@end

