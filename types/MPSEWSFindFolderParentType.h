#import <Foundation/Foundation.h>



@class MPSEWSArrayOfFoldersType;



/* FindFolderParentType */
@interface MPSEWSFindFolderParentType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSFindFolderParentType*) val;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*                 indexedPagingOffset      /* xs:int */;
@property (strong) NSNumber*                 numeratorOffset          /* xs:int */;
@property (strong) NSNumber*                 absoluteDenominator      /* xs:int */;
@property (strong) NSNumber*                 includesLastItemInRange  /* xs:boolean */;
@property (strong) NSNumber*                 totalItemsInView         /* xs:int */;
@property (strong) MPSEWSArrayOfFoldersType* folders;


@end

