#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSFolderChangeType;



/* NonEmptyArrayOfFolderChangesType */
@interface MPSEWSNonEmptyArrayOfFolderChangesType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSNonEmptyArrayOfFolderChangesType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSMutableArray<MPSEWSFolderChangeType*>* folderChange;


- (void) addFolderChange:(MPSEWSFolderChangeType*) elem;
@end

