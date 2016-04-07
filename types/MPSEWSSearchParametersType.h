#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSNonEmptyArrayOfBaseFolderIdsType;
@class MPSEWSRestrictionType;



/* SearchParametersType */
@interface MPSEWSSearchParametersType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSSearchParametersType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                               traversal      /* MPSEWSSearchFolderTraversalType */;
@property (strong) MPSEWSRestrictionType*                  restriction;
@property (strong) MPSEWSNonEmptyArrayOfBaseFolderIdsType* baseFolderIds;


@end

