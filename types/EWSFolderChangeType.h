#import <Foundation/Foundation.h>



@class EWSNonEmptyArrayOfFolderChangeDescriptionsType;



/* FolderChangeType */
@interface EWSFolderChangeType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSNonEmptyArrayOfFolderChangeDescriptionsType* updates;


@end

