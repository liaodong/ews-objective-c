#import <Foundation/Foundation.h>
#import "EWSBaseRequestType.h"



@class EWSNonEmptyArrayOfBaseFolderIdsType;



/* ResolveNamesType */
@interface EWSResolveNamesType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*                            returnFullContactData  /* xs:boolean */;
@property (strong) NSString*                            searchScope            /* EWSResolveNamesSearchScopeType */;
@property (strong) EWSNonEmptyArrayOfBaseFolderIdsType* parentFolderIds;
@property (strong) NSString*                            unresolvedEntry        /* EWSNonEmptyStringType */;


@end

