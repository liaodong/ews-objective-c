#import <Foundation/Foundation.h>



@class EWSFolderChangeType;



/* NonEmptyArrayOfFolderChangesType */
@interface EWSNonEmptyArrayOfFolderChangesType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<EWSFolderChangeType*>* folderChange;


- (void) addFolderChange:(EWSFolderChangeType*) elem;
@end

