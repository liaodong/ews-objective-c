#import <Foundation/Foundation.h>
#import "../handlers/MPSEWSObjectTypeHandler.h"



@class MPSEWSNonEmptyArrayOfPathsToElementType;



/* ItemResponseShapeType */
@interface MPSEWSItemResponseShapeType : NSObject

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSItemResponseShapeType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSString*                                baseShape                  /* MPSEWSDefaultShapeNamesType */;
@property (strong) NSNumber*                                includeMimeContent         /* xs:boolean */;
@property (strong) NSString*                                bodyType                   /* MPSEWSBodyTypeResponseType */;
@property (strong) NSNumber*                                filterHtmlContent          /* xs:boolean */;
@property (strong) NSNumber*                                convertHtmlCodePageToUTF8  /* xs:boolean */;
@property (strong) MPSEWSNonEmptyArrayOfPathsToElementType* additionalProperties;


@end

