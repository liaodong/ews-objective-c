#import <Foundation/Foundation.h>




#import "../types/EWSNonEmptyArrayOfBaseFolderIdsType.h"
#import "../types/EWSRestrictionType.h"
#import "../types/EWSSearchFolderTraversalType.h"



/* SearchParametersType */
@interface EWSSearchParametersType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSString*                            traversal      /* EWSSearchFolderTraversalType */;
@property (retain) EWSRestrictionType*                  restriction;
@property (retain) EWSNonEmptyArrayOfBaseFolderIdsType* baseFolderIds;


@end

