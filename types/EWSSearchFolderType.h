#import <Foundation/Foundation.h>
#import "EWSFolderType.h"



@class EWSSearchParametersType;



/* SearchFolderType */
@interface EWSSearchFolderType : EWSFolderType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) EWSSearchParametersType* searchParameters;


@end

