#import <Foundation/Foundation.h>
#import "MPSEWSResponseMessageType.h"



@class MPSEWSArrayOfDLExpansionType;



/* ExpandDLResponseMessageType */
@interface MPSEWSExpandDLResponseMessageType : MPSEWSResponseMessageType

+ (void) initialize;
+ (BOOL) isValid:(MPSEWSExpandDLResponseMessageType*) val forVersion:(MPSEWSExchangeVersion) ver;

- (id) init;
- (Class) handlerClass;
- (NSString*) description;

@property (strong) NSNumber*                     indexedPagingOffset      /* xs:int */;
@property (strong) NSNumber*                     numeratorOffset          /* xs:int */;
@property (strong) NSNumber*                     absoluteDenominator      /* xs:int */;
@property (strong) NSNumber*                     includesLastItemInRange  /* xs:boolean */;
@property (strong) NSNumber*                     totalItemsInView         /* xs:int */;
@property (strong) MPSEWSArrayOfDLExpansionType* dLExpansion;


@end

