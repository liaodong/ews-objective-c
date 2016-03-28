#import <Foundation/Foundation.h>



@class MPSEWSNonEmptyArrayOfFolderChangeDescriptionsType;



/* FolderChangeType */
@interface MPSEWSFolderChangeType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSNonEmptyArrayOfFolderChangeDescriptionsType* updates;


@end

