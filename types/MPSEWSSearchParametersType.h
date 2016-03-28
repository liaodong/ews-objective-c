#import <Foundation/Foundation.h>



@class MPSEWSNonEmptyArrayOfBaseFolderIdsType;
@class MPSEWSRestrictionType;



/* SearchParametersType */
@interface MPSEWSSearchParametersType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                               traversal      /* MPSEWSSearchFolderTraversalType */;
@property (strong) MPSEWSRestrictionType*                  restriction;
@property (strong) MPSEWSNonEmptyArrayOfBaseFolderIdsType* baseFolderIds;


@end

