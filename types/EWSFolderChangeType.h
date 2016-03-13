#import <Foundation/Foundation.h>




#import "../types/EWSNonEmptyArrayOfFolderChangeDescriptionsType.h"



/* FolderChangeType */
@interface EWSFolderChangeType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) EWSNonEmptyArrayOfFolderChangeDescriptionsType* updates;


@end

