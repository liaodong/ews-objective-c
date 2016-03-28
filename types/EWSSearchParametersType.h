#import <Foundation/Foundation.h>



@class EWSNonEmptyArrayOfBaseFolderIdsType;
@class EWSRestrictionType;



/* SearchParametersType */
@interface EWSSearchParametersType : NSObject

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                            traversal      /* EWSSearchFolderTraversalType */;
@property (strong) EWSRestrictionType*                  restriction;
@property (strong) EWSNonEmptyArrayOfBaseFolderIdsType* baseFolderIds;


@end

