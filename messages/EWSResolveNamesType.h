#import <Foundation/Foundation.h>




#import "../handlers/EWSBooleanTypeHandler.h"
#import "../types/EWSNonEmptyArrayOfBaseFolderIdsType.h"
#import "../types/EWSNonEmptyStringType.h"
#import "../types/EWSResolveNamesSearchScopeType.h"
#import "EWSBaseRequestType.h"



/* ResolveNamesType */
@interface EWSResolveNamesType : EWSBaseRequestType

+ (void) initialize;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (retain) NSNumber*                            returnFullContactData  /* xs:boolean */;
@property (retain) NSString*                            searchScope            /* EWSResolveNamesSearchScopeType */;
@property (retain) EWSNonEmptyArrayOfBaseFolderIdsType* parentFolderIds;
@property (retain) NSString*                            unresolvedEntry        /* EWSNonEmptyStringType */;


@end

