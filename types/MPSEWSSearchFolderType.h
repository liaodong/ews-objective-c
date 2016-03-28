#import <Foundation/Foundation.h>
#import "MPSEWSFolderType.h"



@class MPSEWSSearchParametersType;



/* SearchFolderType */
@interface MPSEWSSearchFolderType : MPSEWSFolderType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSSearchParametersType* searchParameters;


@end

