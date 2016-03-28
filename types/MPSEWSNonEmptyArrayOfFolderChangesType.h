#import <Foundation/Foundation.h>



@class MPSEWSFolderChangeType;



/* NonEmptyArrayOfFolderChangesType */
@interface MPSEWSNonEmptyArrayOfFolderChangesType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSFolderChangeType*>* folderChange;


- (void) addFolderChange:(MPSEWSFolderChangeType*) elem;
@end

