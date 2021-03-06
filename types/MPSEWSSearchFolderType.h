#import <Foundation/Foundation.h>
#import "MPSEWSFolderType.h"



@class MPSEWSSearchParametersType;



/* SearchFolderType */
@interface MPSEWSSearchFolderType : MPSEWSFolderType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSearchFolderType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) MPSEWSSearchParametersType* searchParameters;


@end

