#import <Foundation/Foundation.h>
#import "MPSEWSBaseRequestType.h"



@class MPSEWSNonEmptyArrayOfBaseFolderIdsType;



/* ResolveNamesType */
@interface MPSEWSResolveNamesType : MPSEWSBaseRequestType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSResolveNamesType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*                               returnFullContactData  /* xs:boolean */;
@property (strong) NSString*                               searchScope            /* MPSEWSResolveNamesSearchScopeType */;
@property (strong) NSString*                               contactDataShape       /* MPSEWSDefaultShapeNamesType */;
@property (strong) MPSEWSNonEmptyArrayOfBaseFolderIdsType* parentFolderIds;
@property (strong) NSString*                               unresolvedEntry        /* MPSEWSNonEmptyStringType */;


@end

